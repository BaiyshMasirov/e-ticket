import 'package:eticket/auth/authentication.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_cubit.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:eticket/common/common.dart';

Future<void> injectDependencies() async {
  final getIt = GetIt.I;
  await dotenv.load(fileName: Constants.envFileName);

  final packageInfo = await PackageInfo.fromPlatform();

  // APP CONFIGURATION
  getIt.registerSingleton<Configuration>(
    Configuration.getFromDotEnv(
      dotEnv: dotenv,
      appVersion: packageInfo.version,
      appBuildNumber: packageInfo.buildNumber,
    ),
  );

  final prefs = await SharedPreferences.getInstance();
  final databaseClient = await DatabaseX.openDatabase();

  // region settings
  final appSettingsLocalSource =
      AppSettingsLocalSource(sharedPreferences: prefs);
  await appSettingsLocalSource.read();

  // remote sources
  getIt.registerSingleton<UserLocalSource>(
    UserLocalSource(sharedPreferences: prefs),
  );

  getIt.registerSingleton<AppSettingsLocalSource>(
    appSettingsLocalSource,
  );

  getIt.registerSingleton<UserCachedRepo>(
    UserCachedRepo(userLocalSource: getIt.get<UserLocalSource>()),
  );
  getIt.registerSingleton<AppSettingsRepository>(AppSettingsRepository(
    appSettingsLocalSource: getIt.get<AppSettingsLocalSource>(),
  ));
  // endregion

  // region AUTH MODULE
  final authDio = DioX.setupAuth(
    getIt.get<Configuration>().serverUrl,
    getIt.get<AppSettingsRepository>(),
  );

  getIt.registerSingleton<FlutterSecureStorage>(
    const FlutterSecureStorage(),
  );
  getIt.registerSingleton<AuthLocalDatasource>(
    AuthLocalDatasource(storage: getIt.get<FlutterSecureStorage>()),
  );
  getIt.registerSingleton<AuthRemoteDatasource>(
    AuthRemoteDatasource(dio: authDio),
  );
  getIt.registerSingleton<AuthRepository>(AuthRepository(
    authLocalDatasource: getIt.get<AuthLocalDatasource>(),
    authRemoteDatasource: getIt.get<AuthRemoteDatasource>(),
  ));
  getIt.registerSingleton<AuthCubit>(
    AuthCubit(authRepository: getIt.get<AuthRepository>()),
  );
  getIt.registerSingleton<AuthInterceptor>(AuthInterceptor(
    authDio,
    getIt.get<AuthRepository>(),
    getIt.get<AuthCubit>(),
    getIt.get<Configuration>(),
    getIt.get<AppSettingsRepository>(),
  ));
  // endregion END OF AUTH MODULE

  // region PROJECT MODULE
  final projectDio = DioX.setupServer(
    getIt.get<Configuration>().serverUrl,
    getIt.get<AuthInterceptor>(),
  );

  getIt.registerSingleton<AccountRemoteSource>(
    AccountRemoteSource(dio: projectDio),
  );
  getIt.registerSingleton<BookingRemoteDatasource>(
    BookingRemoteDatasource(dio: projectDio),
  );
  getIt.registerSingleton<EventRemoteDatasource>(
    EventRemoteDatasource(dio: projectDio),
  );
  getIt.registerSingleton<TicketRemoteDatasource>(
    TicketRemoteDatasource(dio: projectDio),
  );
  getIt.registerSingleton<DictionaryRemoteSource>(
    DictionaryRemoteSource(dio: projectDio),
  );
  getIt.registerSingleton<PaymentRemoteSource>(
    PaymentRemoteSource(dio: projectDio),
  );
  getIt.registerSingleton<BookingHistoryLocalDatasources>(
    BookingHistoryLocalDatasources(db: databaseClient),
  );
  // end of remote sources

  // repositories
  getIt.registerSingleton<AccountRepository>(AccountRepository(
    accountRemoteSource: getIt.get<AccountRemoteSource>(),
  ));
  getIt.registerSingleton<BookingRepository>(BookingRepository(
    bookingRemoteDatasource: getIt.get<BookingRemoteDatasource>(),
    historyBookingDatasource: getIt.get<BookingHistoryLocalDatasources>(),
  ));
  getIt.registerSingleton<EventRepository>(EventRepository(
    eventRemoteDatasource: getIt.get<EventRemoteDatasource>(),
  ));
  getIt.registerSingleton<TicketRepository>(TicketRepository(
    ticketRemoteDatasource: getIt.get<TicketRemoteDatasource>(),
  ));
  getIt.registerSingleton<DictionaryRepository>(DictionaryRepository(
    dictionaryRemoteSource: getIt.get<DictionaryRemoteSource>(),
  ));
  getIt.registerSingleton<PaymentRepository>(PaymentRepository(
    paymentRemoteSource: getIt.get<PaymentRemoteSource>(),
  ));
  // end of repositories
  // endregion END OF PROJECT MODULE

  getIt.registerSingleton<SettingsCubit>(SettingsCubit.initialize());
  getIt.registerSingleton<SnackbarCubit>(SnackbarCubit());
}
