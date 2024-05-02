import 'package:tp2/presentation/screens/pantalla_principal.dart';
import 'package:tp2/presentation/screens/pantalla_logueo.dart';
import 'package:go_router/go_router.dart';

final routerPrincipal = GoRouter(
  initialLocation: '/login',
  routes: [
  GoRoute(
    path: '/login',
    builder: ((context, state) => const LoginScreen())
  ),
  GoRoute(
    path: '/home',
    builder: ((context, state) => const HomeScreen())
  )
]);