/* 
class AppRouter {
  Route? generateRoute(RouteSettings settings) {
/*     final arguments = settings.arguments; */ // till i have reasone to use it

    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.storeSelection:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => getIt<UserStoresCubit>(),
                    ),
                  ],
                  child: const StoreSelectionScreen(),
                ));

      case Routes.homeLayout:
        return MaterialPageRoute(builder: (_) => const HomeLayout());

      case Routes.notifications:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());

      case Routes.pastOrders:
        return MaterialPageRoute(builder: (_) => const PastOrdersScreen());

      case Routes.menu:
        return MaterialPageRoute(builder: (_) => const MenuScreen());

      case Routes.itemSearch:
        return MaterialPageRoute(builder: (_) => const SearchItemScreen());

      case Routes.orderSearch:
        return MaterialPageRoute(builder: (_) => const SearchOrderScreen());

      case Routes.more:
        return MaterialPageRoute(builder: (_) => const MoreScreen());

      default:
        return null;
    }
  }
}
 */