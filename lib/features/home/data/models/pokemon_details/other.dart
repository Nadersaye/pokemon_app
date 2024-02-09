import 'home.dart';

class Other {
  Home? home;

  Other({this.home});

  factory Other.fromJson(Map<String, dynamic> json) => Other(
        home: json['home'] == null
            ? null
            : Home.fromJson(json['home'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'home': home?.toJson(),
      };
}
