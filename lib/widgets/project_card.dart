import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../models/project.dart';


class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});


  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
// Fallback to web view/tab
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);


    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 24,
                spreadRadius: 0,
                offset: const Offset(0, 10),
                color: Colors.black.withOpacity(0.07),
              ),
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Expanded(
          child: Stack(
          children: [
            Positioned.fill(
            child: Image.asset(
              project.imageAsset,
            fit: BoxFit.cover,
          ),
        ),
        if (project.demoUrl != null)
    Positioned(
      right: 12,
      top: 12,
      child: Tooltip(
        message: 'Watch Demo',
        child: InkWell(
          onTap: () => _openUrl(project.demoUrl!),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.play_arrow_rounded,
                size: 28, color: Colors.white),
          ),
        ),
      ),
    ),
    ],
    ),
    ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(project.title, style: theme.textTheme.titleLarge),
                    const SizedBox(height: 3),
                    Text(project.year, style: theme.textTheme.titleLarge),
                    const SizedBox(height: 8),
                    Text(
                      project.description,
                      style: theme.textTheme.bodyMedium,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8,
                      runSpacing: -8,
                      children: project.tech
                          .map((t) => Chip(
                        label: Text(t),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 0),
                      ))
                          .toList(),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () => _openUrl(project.githubUrl),
                          icon: const Icon(Icons.code),
                          label: const Text('GitHub'),
                        ),
                        const SizedBox(width: 10),
                        if (project.demoUrl != null)
                          OutlinedButton.icon(
                            onPressed: () => _openUrl(project.demoUrl!),
                            icon: const Icon(Icons.play_circle_fill),
                            label: const Text('Demo'),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
            .animate()
            .fadeIn(duration: const Duration(milliseconds: 500))
            .scale(begin: const Offset(0.98, 0.98), end: const Offset(1, 1)),
    );
  }
}