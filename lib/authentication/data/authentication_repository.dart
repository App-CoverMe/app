import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:app/authentication/data/models/token.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    final token = await getToken();
    if (token == null) {
      yield AuthenticationStatus.unauthenticated;
    } else {
      yield AuthenticationStatus.authenticated;
    }
    yield* _controller.stream;
  }

  Future<void> logIn({
    @required String username,
    @required String password,
  }) async {
    assert(username != null);
    assert(password != null);

    await Future.delayed(const Duration(milliseconds: 1000));

    // final response = await http.post(
    //   'http://10.0.2.2:3000/oauth/login',
    //   body: {'username': username, 'password': password},
    // );
    // if (response.statusCode != 200) {
    //   _controller.add(AuthenticationStatus.unauthenticated);
    // }

    // final Token token = Token.fromJSON(json.decode(response.body));
    final Token token = Token.fromJSON({
      'access_token': 'xxx',
      'refresh_token': 'zzz',
      'expires_in': 3600,
    });
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('token', token.toJSON());

    _controller.add(AuthenticationStatus.authenticated);
  }

  Future<Token> getToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final String tokenString = sharedPreferences.getString('token');
    try {
      return Token.fromJSON(json.decode(tokenString));
    } catch (_) {
      return null;
    }
  }

  void logOut() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final String tokenString = sharedPreferences.getString('token');
    final Token token = Token.fromJSON(json.decode(tokenString));
    // final response = await http.post(
    //   'http://10.0.2.2:3000/oauth/logout',
    //   body: {'refresh_token': token.refreshToken},
    // );
    // print(response.statusCode);
    // print(response.body.toString());

    sharedPreferences.setString('token', '');
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
