import 'stat.dart';

class ParentStat {
  int? baseStat;
  int? effort;
  Stat? stat;

  ParentStat({this.baseStat, this.effort, this.stat});

  factory ParentStat.fromJson(Map<String, dynamic> json) => ParentStat(
        baseStat: json['base_stat'] as int?,
        effort: json['effort'] as int?,
        stat: json['stat'] == null
            ? null
            : Stat.fromJson(json['stat'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'base_stat': baseStat,
        'effort': effort,
        'stat': stat?.toJson(),
      };
}
