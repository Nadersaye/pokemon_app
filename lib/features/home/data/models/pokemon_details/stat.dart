class Stat {
  final String? name;

  Stat({required this.name});

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
      };
}
