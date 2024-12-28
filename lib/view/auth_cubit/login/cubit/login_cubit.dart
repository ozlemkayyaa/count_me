import 'package:count_me/core/base/cubit/generic_cubit.dart';
import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/constants/navigation/navigation_constants.dart';
import 'package:count_me/core/init/navigation/navigation_service.dart';
import 'package:count_me/core/model/user/user_model.dart';

class LoginCubit extends GenericCubit<UserModel> {
  LoginCubit() : super(GenericCubitState.initial());

  Future<void> login(String email, String password) async {
    try {
      emit(GenericCubitState.loading());

      // Burada login işlemleri yapılır (ör. API çağrısı veya local doğrulama)
      await Future.delayed(const Duration(seconds: 2)); // Simülasyon
      if (email == "test@example.com" && password == "password") {
        emit(GenericCubitState.success(
            [UserModel(email: email, password: password)]));
        NavigationService.instance
            .navigateToPage(path: NavigationConstants.HOME);
      } else {
        emit(GenericCubitState.failure("Invalid email or password"));
      }
    } catch (e) {
      emit(GenericCubitState.failure("An unexpected error occurred"));
    }
  }
}
