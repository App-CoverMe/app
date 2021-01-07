import 'dart:convert';

class Token {
  final String accessToken;
  final String refreshToken;
  final int expiresInSeconds;
  final DateTime createdAt;

  Token.fromJSON(Map<String, dynamic> json)
      : accessToken = json['access_token'],
        refreshToken = json['refresh_token'],
        expiresInSeconds = json['expires_in'],
        createdAt = DateTime.now();

  DateTime get expiresAt => createdAt.add(Duration(seconds: expiresInSeconds));

  String toJSON() {
    return json.encode({
      'access_token': accessToken,
      'refresh_token': refreshToken,
      'expires_in': expiresInSeconds,
    });
  }

  @override
  String toString() {
    return {
      'access': accessToken,
      'expiresAt': expiresAt,
      'refresh': refreshToken
    }.toString();
  }
}
