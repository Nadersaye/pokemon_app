import 'type.dart';

class ParentType {
  int? slot;
  Type? type;

  ParentType({this.slot, this.type});

  factory ParentType.fromJson(Map<String, dynamic> json) => ParentType(
        slot: json['slot'] as int?,
        type: json['type'] == null
            ? null
            : Type.fromJson(json['type'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'slot': slot,
        'type': type?.toJson(),
      };
}
