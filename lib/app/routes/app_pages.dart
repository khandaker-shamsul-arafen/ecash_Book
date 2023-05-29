import 'package:get/get.dart';

import '../modules/dash_board/bindings/dash_board_binding.dart';
import '../modules/dash_board/views/dash_board_view.dart';
import '../modules/give/bindings/give_binding.dart';
import '../modules/give/views/give_view.dart';
import '../modules/registration/bindings/registration_binding.dart';
import '../modules/registration/views/registration_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.REGISTRATION;

  static final routes = [
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => const RegistrationView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.DASH_BOARD,
      page: () => const DashBoardView(),
      binding: DashBoardBinding(),
    ),
    GetPage(
      name: _Paths.GIVE,
      page: () => const GiveView(),
      binding: GiveBinding(),
    ),
  ];
}
