class Album {
  final String time;
  final String asset_id_base;
  final String asset_id_quote;
  final String rate;

  const Album({
    required this.time,
    required this.asset_id_base,
    required this.asset_id_quote,
    required this.rate
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      time: json['time'],
      asset_id_base: json['asset_id_base'],
      asset_id_quote: json['asset_id_quote'],
      rate: json['asset_id_quote'],
    );
  }
}