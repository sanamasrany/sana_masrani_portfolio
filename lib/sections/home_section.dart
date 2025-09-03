import 'package:flutter/material.dart';
import '../main.dart'; // 👈 import the global keys from main.dart

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      constraints: const BoxConstraints(minHeight: 520),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hi, I\'m Sana Masrani',
                textAlign: TextAlign.center,
                style: theme.textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Flutter Developer · 3+ Years · Mobile & Web · AI-Infused Apps',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withOpacity(0.75),
                ),
              ),
              const SizedBox(height: 24),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 12,
                children: [
                  FilledButton(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        projectsSectionKey.currentContext!, // 👈 from main.dart
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text("View My Projects"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Scrollable.ensureVisible(
                        contactSectionKey.currentContext!, // 👈 from main.dart
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text("Get In Touch"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
