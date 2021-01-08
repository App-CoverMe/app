import 'package:app/authentication/bloc/authentication_bloc.dart';
import 'package:app/authentication/data/authentication_repository.dart';
import 'package:app/constants/ui_constants.dart';
import 'package:app/home.dart';
import 'package:app/login/bloc/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login/login_screen.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    super.onError(cubit, error, stackTrace);
  }
}

void main() {
  Bloc.observer = SimpleBlocObserver();
  final AuthenticationRepository authenticationRepository =
      AuthenticationRepository();
  runApp(
    RepositoryProvider.value(
      value: authenticationRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthenticationBloc(
              authenticationRepository: authenticationRepository,
            ),
          ),
          BlocProvider(
            create: (context) => LoginBloc(
              authenticationRepository: authenticationRepository,
            ),
          ),
        ],
        child: App(),
      ),
    ),
  );
}

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigator = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state.status != AuthenticationStatus.authenticated) {
          _navigator.currentState.pushNamed('/'); // should be '/login'
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigator,
        title: 'CoverMe',
        theme: ThemeData(
          fontFamily: 'Lato',
          primarySwatch: Colors.blue,
          iconTheme: IconThemeData(color: kPrimaryTextColor),
          textTheme: TextTheme(
            headline5: TextStyle(
              fontFamily: 'Lato',
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
            headline6: TextStyle(
              // Old name was 'Title'
              fontFamily: 'Lato',
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            subtitle1: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            bodyText1: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ).apply(
            bodyColor: kPrimaryTextColor,
            displayColor: kPrimaryTextColor,
          ),
          appBarTheme: AppBarTheme(
            elevation: 0,
            centerTitle: true,
            color: Colors.transparent,
            iconTheme: IconThemeData(color: kPrimaryTextColor),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
            selectedItemColor: kPrimaryTextColor,
          ),
        ),
        routes: {
          '/': (context) => Home(),
          '/login': (context) => LoginScreen(),
        },
      ),
    );
  }
}
