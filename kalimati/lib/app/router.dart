import 'package:go_router/go_router.dart';
import 'package:flutter/widgets.dart';
import '../features/packages/presentation/screens/packages_list_screen.dart';
import '../features/packages/presentation/screens/package_details_screen.dart';
import '../features/games/flashcards/presentation/flashcards_screen.dart';
import '../features/games/unscramble/presentation/unscramble_screen.dart';
import '../features/games/match/presentation/match_screen.dart';
import '../features/auth/presentation/login_screen.dart';
import '../features/editor/presentation/screens/editor_home_screen.dart';

GoRouter buildRouter() {
  return GoRouter(
    initialLocation: '/packages',
    routes: [
      GoRoute(path: '/packages', builder: (c, s) => const PackagesListScreen()),
      GoRoute(path: '/packages/:id', builder: (c, s) {
        final id = s.pathParameters['id']!;
        return PackageDetailsScreen(packageId: id);
      }),
      GoRoute(path: '/packages/:id/flashcards',
        builder: (c, s) => FlashCardsScreen(id: s.pathParameters['id']!)),
      GoRoute(path: '/packages/:id/unscramble',
        builder: (c, s) => UnscrambleScreen(id: s.pathParameters['id']!)),
      GoRoute(path: '/packages/:id/match',
        builder: (c, s) => MatchScreen(id: s.pathParameters['id']!)),
      GoRoute(path: '/login', builder: (c, s) => const LoginScreen()),
      GoRoute(path: '/editor', builder: (c, s) => const EditorHomeScreen()),
    ],
  );
}