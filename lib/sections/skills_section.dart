import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  final skills = const [
    "Flutter & Dart",
    "State Management (GetX, Provider, BLoC)",
    "REST APIs & GraphQL",
    "Firebase & Supabase",
    "SQLite & Hive",
    "CI/CD (GitHub Actions, Codemagic)",
    "UI/UX Design Systems",
    "Machine Learning Integration",
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      color: theme.colorScheme.surfaceVariant.withOpacity(0.2),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Skills",
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: skills
                    .map(
                      (skill) => Chip(
                    label: Text(skill),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                  ),
                )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
