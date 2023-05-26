import 'package:geolocalizacionamd/app/pages/sources/main/main_page.dart';
import 'package:geolocalizacionamd/app/pages/sources/navigation/navigation_page.dart';
import 'package:go_router/go_router.dart';

import '../sources/login/login_page.dart';

class GeoAmdRoutes {
  static const login = '/';
  static const home = '/home';

  static final GoRouter router = GoRouter(initialLocation: login, routes: [
    GoRoute(path: login, builder: (context, state) => const LoginPage()),
    GoRoute(path: home, builder: (context, state) => const NavigationPage()),
  ]);

  static GoRouter get routerConfig => router;
}
