import 'package:bmi_calc/result_screen.dart';
import 'package:go_router/go_router.dart';
import 'main_screen.dart';

final router = GoRouter(
  initialLocation: '/start',
  routes: [
    GoRoute(
      path: '/start',
      builder: (context, state) => const MainScreen(),
      // routes: [
      //  안에 넣으면 연결
      // ]
    ),
    GoRoute(
      path: '/start/result',
      builder: (context, state) {
        final String height = state.uri.queryParameters['height']!;
        final String weight = state.uri.queryParameters['weight']!;

        return ResultScreen(
          height: double.parse(height),
          weight: double.parse(weight),
        );
      },
    ),
  ],
);
