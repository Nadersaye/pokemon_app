class Home {
  String? frontDefault;

  Home({
    this.frontDefault,
  });

  factory Home.fromJson(Map<String, dynamic> json) => Home(
        frontDefault: json['front_default'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'front_default': frontDefault,
      };
}
