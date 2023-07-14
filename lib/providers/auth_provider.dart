import 'package:e_ti_app/models/user/register_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//Enums
import '../enums/user_role_enum.dart';

//Models
import '../models/user/user_model.dart';

//Services
import '../services/local_storage/key_value_storage_service.dart';
import '../services/networking/network_exception.dart';
import '../services/repositories/auth_repository.dart';

//States
import 'states/auth_state.dart';
import 'states/future_state.dart';

final changePasswordStateProvider = StateProvider<FutureState<String>>(
  (ref) => const FutureState<String>.idle(),
);

class AuthProvider extends StateNotifier<AuthState> {
  late UserModel? _currentUser;
  final AuthRepository _authRepository;
  final KeyValueStorageService _keyValueStorageService;
  final Ref _ref;
  String _password = '';

  AuthProvider({
    required AuthRepository authRepository,
    required KeyValueStorageService keyValueStorageService,
    required Ref ref,
  })  : _authRepository = authRepository,
        _keyValueStorageService = keyValueStorageService,
        _ref = ref,
        super(const AuthState.unauthenticated()) {
    init();
  }

  String get currentUserId => _currentUser!.userId!;

  String get currentUserFullName => _currentUser?.Name ?? '';

  String get currentUserEmail => _currentUser?.Email ?? "";

  String get currentUserContact => _currentUser?.PhoneNumber ?? '';

  String get currentUserPassword => _password;

  void updateToken(String value) {
    _keyValueStorageService.setAuthToken(value);
  }

  void _updatePassword(String value) {
    _password = value;
    _keyValueStorageService.setAuthPassword(value);
  }

  void init() async {
    final authenticated = _keyValueStorageService.getAuthState();
    _currentUser = _keyValueStorageService.getAuthUser();
    _password = await _keyValueStorageService.getAuthPassword();
    if (!authenticated || _currentUser == null || _password.isEmpty) {
      logout();
    } else {
      state = AuthState.authenticated(fullName: _currentUser!.Name);
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    final data = {'email': email, 'password': password};
    state = const AuthState.authenticating();
    try {
      _currentUser = await _authRepository.sendLoginData(
        data: data,
        updateTokenCallback: updateToken,
      );
      state = AuthState.authenticated(fullName: _currentUser!.PhoneNumber);
      _updatePassword(password);
      _updateAuthProfile();
    } on NetworkException catch (e) {
      state = AuthState.failed(reason: e.message);
    }
  }

  Future<void> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String middleName,
    required String phoneNumber,
  }) async {
    if (phoneNumber.startsWith('0')) phoneNumber = phoneNumber.substring(1);
    phoneNumber = '996$phoneNumber';
    final user = RegisterModel(
        email: email,
        firstName: firstName,
        lastName: lastName,
        middleName: middleName,
        phoneNumber: phoneNumber,
        password: password);
    state = const AuthState.authenticating();
    try {
      await _authRepository.sendRegisterData(
        data: user.toJson(),
        updateTokenCallback: updateToken,
      );
      state = AuthState.authenticated(fullName: user.firstName);
      _updatePassword(password);
      _updateAuthProfile();
    } on NetworkException catch (e) {
      state = AuthState.failed(reason: e.message);
    }
  }

  Future<void> changePassword({required String newPassword}) async {
    final data = {
      'email': currentUserEmail,
      'password': currentUserPassword,
      'new_password': newPassword,
    };
    final _changePasswordState = _ref.read(changePasswordStateProvider.state);
    _changePasswordState.state = const FutureState.loading();
    try {
      final result = await _authRepository.sendChangePasswordData(data: data);
      _updatePassword(newPassword);
      _changePasswordState.state = FutureState.data(data: result);
    } on NetworkException catch (e) {
      _changePasswordState.state = FutureState.failed(reason: e.message);
    }
  }

  void _updateAuthProfile() {
    _keyValueStorageService.setAuthState(state);
    if (_currentUser != null) {
      _keyValueStorageService.setAuthUser(_currentUser!);
    } else {
      // Обработка случая, когда _currentUser равен null
    }
  }

  void logout() {
    _currentUser = null;
    _password = '';
    state = const AuthState.unauthenticated();
    _keyValueStorageService.resetKeys();
  }
}
