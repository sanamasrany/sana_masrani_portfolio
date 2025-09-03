import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      await launchUrl(uri, mode: LaunchMode.platformDefault);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Get In Touch",
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                "I’d love to hear from you! Whether it’s about a potential project, "
                    "collaboration, or just a friendly chat, feel free to reach out.",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge?.copyWith(
                  height: 1.6,
                  color: theme.colorScheme.onSurface.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 32),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 16,
                runSpacing: 12,
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.email),
                    label: const Text("Email"),
                    onPressed: () => _openUrl("mailto:sanamasrani1992@gmail.com"),
                  ),
                  OutlinedButton.icon(
                    icon: const Icon(Icons.code),
                    label: const Text("GitHub"),
                    onPressed: () => _openUrl("https://github.com/sanamasrany"),
                  ),
                  OutlinedButton.icon(
                    icon: const Icon(Icons.telegram),
                    label: const Text("Telegram"),
                    onPressed: () => _openUrl("https://t.me/Makise_Kurisu12"),
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
