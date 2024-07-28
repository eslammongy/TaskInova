class Coach {
  final String name;
  final String image;
  final String title;
  final String bio;
  final String totalTime;
  final int videos;

  Coach({
    required this.name,
    required this.image,
    required this.title,
    required this.bio,
    required this.totalTime,
    required this.videos,
  });

  factory Coach.fromJson(Map<String, dynamic> json) {
    return Coach(
      name: json['name'],
      image: json['image'],
      title: json['title'],
      bio: json['bio'],
      totalTime: json['total_time'],
      videos: json['videos'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
      'title': title,
      'bio': bio,
      'total_time': totalTime,
      'videos': videos,
    };
  }
}
