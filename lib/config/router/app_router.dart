
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/activities/activity_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/users',
      builder: (context, state) => const UsersScreen(),
    ),

    GoRoute(
      path: '/activities',
      builder: (context, state) => const ActivityScreen(),
    ),
    
  ],
);