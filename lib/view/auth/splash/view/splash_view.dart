// // ignore_for_file: avoid_print
// import 'package:count_me/core/base/state/base_state.dart';
// import 'package:count_me/core/constants/app/index.dart';
// import 'package:count_me/core/constants/navigation/navigation_constants.dart';
// import 'package:count_me/core/init/navigation/navigation_service.dart';
// import 'package:count_me/view/auth/splash/viewModel/bloc/splash_bloc.dart';
// import 'package:count_me/view/auth/splash/viewModel/bloc/splash_event.dart';
// import 'package:count_me/view/auth/splash/viewModel/bloc/splash_state.dart';
// import 'package:count_me/view/auth/splash/widget/splash_body_widget.dart';
// import 'package:flutter/material.dart';
// import '../../../../core/base/view/base_view_bloc.dart';
// import '../../../../core/components/index.dart';
// import '../../../../core/extension/context_extension.dart';

// class SplashView extends StatefulWidget {
//   const SplashView({super.key});

//   @override
//   State<SplashView> createState() => _SplashViewState();
// }

// class _SplashViewState extends BaseState<SplashView> {
//   @override
//   Widget build(BuildContext context) {
//     return BaseView<SplashBloc, SplashState>(
//       cubit: SplashBloc(),
//       onPageBuilder: (context, bloc, state) {
//         // INITIAL
//         if (state is SplashInitial) {
//           bloc.add(SplashStarted());
//           return CustomScaffold(
//             backgroundColor: AppColors.whiteBackground,
//             body: const Center(
//               child: CircularProgressIndicator(color: AppColors.mainGreen),
//             ),
//           );

//           // COMPLETED
//         } else if (state is SplashCompleted) {
//           Future.delayed(const Duration(seconds: 2), () {
//             NavigationService.instance.navigateToPageClear(
//               path: NavigationConstants.ONBOARDING,
//             );
//           });

//           return CustomScaffold(
//             linearGradient: AppColors.linearGradient,
//             body: SplashBodyWidget(),
//           );

//           // ERROR
//         } else if (state is SplashError) {
//           return Center(
//             child: Text(
//               "Error: ${state.message}",
//               style: context.textTheme.bodyLarge?.copyWith(
//                 color: Colors.red,
//               ),
//             ),
//           );
//         } else {
//           return const Center(
//             child: Text("Unexpected state"),
//           );
//         }
//       },
//       onDispose: () {
//         print("SplashView disposed");
//       },
//     );
//   }
// }
