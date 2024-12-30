import 'package:count_me/core/base/cubit/generic_cubit.dart';
import 'package:count_me/core/base/cubit/generic_cubit_state.dart';
import 'package:count_me/core/model/user/user_model.dart';

class RegisterCubit extends GenericCubit<UserModel> {
  RegisterCubit() : super(GenericCubitState.initial());

  Future<void> createUser(String name, String email, String password) async {
    try {
      emit(GenericCubitState.loading());

      // Burada login işlemleri yapılır (ör. API çağrısı veya local doğrulama)
      await Future.delayed(const Duration(seconds: 2));
      if (name == "Ozlem" &&
          email == "test@example.com" &&
          password == "password") {
        emit(GenericCubitState.success(
            UserModel(name: name, email: email, password: password)));
      } else {
        emit(GenericCubitState.failure("User could not be created"));
      }
    } catch (e) {
      emit(GenericCubitState.failure("An unexpected error occurred"));
    }
  }
}
