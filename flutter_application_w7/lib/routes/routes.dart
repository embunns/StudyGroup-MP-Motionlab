import 'package:get/get.dart';
import '../pages/register_page.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/register', page: () => RegisterView()),
    // Tambahkan rute lainnya jika perlu
  ];
}
