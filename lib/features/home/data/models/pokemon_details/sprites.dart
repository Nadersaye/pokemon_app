import 'other.dart';

class Sprites {
  Other? other;

  Sprites({
    this.other,
  });

  factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
        other: json['other'] == null
            ? null
            : Other.fromJson(json['other'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'other': other?.toJson(),
      };
}
