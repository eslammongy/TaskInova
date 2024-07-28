import 'package:inove/features/series/data/models/class_mode.dart';
import 'package:inove/features/series/data/models/coach_model.dart';

class Series {
  final String? name;
  final String? coverPhoto;
  final String? overview;
  final String? overviewVideo;
  final List<Coach> coaches;
  final List<ClassModel> classes;

  Series({
    required this.name,
    required this.coverPhoto,
    required this.overview,
    required this.overviewVideo,
    required this.coaches,
    required this.classes,
  });

  factory Series.fromJson(Map<String, dynamic> json) {
    return Series(
      name: json['name'],
      coverPhoto: json['cover_photo'],
      overview: json['overview'],
      overviewVideo: json['overview_video'],
      coaches: List<Coach>.from(json['coaches'].map((x) => Coach.fromJson(x))),
      classes: List<ClassModel>.from(
          json['classes'].map((x) => ClassModel.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'cover_photo': coverPhoto,
      'overview': overview,
      'overview_video': overviewVideo,
      'coaches': List<dynamic>.from(coaches.map((x) => x.toJson())),
      'classes': List<dynamic>.from(classes.map((x) => x.toJson())),
    };
  }
}
