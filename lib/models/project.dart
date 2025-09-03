class Project {
  final String title;
  final String year;
  final String description;
  final String imageAsset; // e.g., 'assets/images/khateeb.png'
  final String githubUrl;
  final String? demoUrl; // optional (YouTube, web demo, etc.)
  final List<String> tech; // e.g., ['Flutter', 'Firebase', 'Riverpod']


  const Project({
    required this.title,
    required this.year,
    required this.description,
    required this.imageAsset,
    required this.githubUrl,
    this.demoUrl,
    this.tech = const [],
  });
}