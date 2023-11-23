import 'package:authentication/authentication.dart';
import 'package:common/common.dart';
import 'package:eticket/data/data.dart';
import 'package:eticket/data/sembast_database/booking_sembast_data_sources.dart';
import 'package:eticket/data/sembast_database/sembast_database.dart';
import 'package:eticket/domain/domain.dart';
import 'package:eticket/presentation/app_blocs/app_blocs.dart';
import 'package:get_it/get_it.dart';
import 'package:sembast/sembast.dart';

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

  // remote sources
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
  // end of remote sources

  // repositories
  getIt.registerSingleton<AccountRepository>(AccountRepository(
    accountRemoteSource: getIt.get<AccountRemoteSource>(),
  ));
  getIt.registerSingleton<BookingRepository>(BookingRepository(
    bookingRemoteDatasource: getIt.get<BookingRemoteDatasource>(),
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
  // end of repositories
  // endregion END OF PROJECT MODULE

  getIt.registerSingleton<AppDatabase>(AppDatabase.instance);

  getIt.registerSingleton<BookingSembastDataSources>(
      BookingSembastDataSources());

  getIt.registerSingleton<SnackbarCubit>(SnackbarCubit());
  getIt.registerSingleton<DictionaryCubit>(DictionaryCubit.initialize());
}
