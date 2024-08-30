import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/home_view.dart';

class RoutesManager{
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String bookDetailsRoute = "/bookDetails";
  static const String searchRoute = "/search";

  static final router = GoRouter(
      routes: [
        GoRoute(
            path: splashRoute,
            builder: (context,state)=>const SplashView()
        ),
        GoRoute(
            path: homeRoute,
            builder: (context,state)=>const HomeView()
        ),
        GoRoute(
            path: bookDetailsRoute,
            builder: (context,state)=>const BookDetailsView()
        ),
        GoRoute(
            path: searchRoute,
            builder: (context,state)=>const SearchView()
        ),
      ]
  );



}
