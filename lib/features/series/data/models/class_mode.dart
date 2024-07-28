class ClassModel {
  final String name;
  final String desc;
  final double duration;
  final String video;
  final String thumbnail;

  ClassModel({
    required this.name,
    required this.desc,
    required this.duration,
    required this.video,
    required this.thumbnail,
  });

  factory ClassModel.fromJson(Map<String, dynamic> json) {
    return ClassModel(
      name: json['name'],
      desc: json['desc'],
      duration: json['duration'].toDouble(),
      video: json['video'],
      thumbnail: json['thumbnail'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'desc': desc,
      'duration': duration,
      'video': video,
      'thumbnail': thumbnail,
    };
  }
}
