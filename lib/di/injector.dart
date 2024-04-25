import 'package:authentication/authentication.dart';
import 'package:common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:eticket/presentation/app_blocs/settings/settings_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> injectDependencies() async {
  final getIt = GetIt.I;
  await dotenv.load(fileName: Constants.envFileName);

  // APP CONFIGURATION
  getIt.registerSingleton<Configuration>(
    Configuration.getFromDotEnv(dotEnv: dotenv),
  );
  final authDio = DioX.setupAuth(getIt.get<Configuration>().serverUrl);

  // region AUTH MODULE
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
  ));
  // endregion END OF AUTH MODULE

  // region PROJECT MODULE
  final projectDio = DioX.setupServer(
    getIt.get<Configuration>().serverUrl,
    getIt.get<AuthInterceptor>(),
  );

  final prefs = await SharedPreferences.getInstance();
  final databaseClient = await DatabaseX.openDatabase();

  final settingsLocalDatasource =
      SettingsLocalDatasource(sharedPreferences: prefs);
  await settingsLocalDatasource.read();

  // remote sources
  getIt.registerSingleton<UserLocalSource>(
    UserLocalSource(sharedPreferences: prefs),
  );
  getIt.registerSingleton<SettingsLocalDatasource>(
    settingsLocalDatasource,
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
  getIt.registerSingleton<BookingLocalDataSources>(
    BookingLocalDataSources(db: databaseClient),
  );
  getIt.registerSingleton<HistoryLocalDatasources>(
    HistoryLocalDatasources(db: databaseClient),
  );
  // end of remote sources

  // repositories
  getIt.registerSingleton<UserCachedRepo>(
    UserCachedRepo(userLocalSource: getIt.get<UserLocalSource>()),
  );
  getIt.registerSingleton<SettingsRepository>(SettingsRepository(
    settingsLocalDatasource: getIt.get<SettingsLocalDatasource>(),
  ));
  getIt.registerSingleton<AccountRepository>(AccountRepository(
    accountRemoteSource: getIt.get<AccountRemoteSource>(),
  ));
  getIt.registerSingleton<BookingRepository>(BookingRepository(
    bookingRemoteDatasource: getIt.get<BookingRemoteDatasource>(),
    bookingDatasource: getIt.get<BookingLocalDataSources>(),
    historyBookingDatasource: getIt.get<HistoryLocalDatasources>(),
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
  getIt.registerSingleton<DictionaryCubit>(DictionaryCubit.initialize());
}
