import 'package:flutter/material.dart';
import 'sections/home_section.dart';
import 'sections/about_section.dart';
import 'sections/projects_section.dart';
import 'sections/skills_section.dart';
import 'sections/contact_section.dart';

// Make the keys available globally
final GlobalKey projectsSectionKey = GlobalKey();
final GlobalKey contactSectionKey = GlobalKey();

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeSection(),
            const AboutSection(),
            // Attach the GlobalKey here 👇
            ProjectsSection(key: projectsSectionKey),
            const SkillsSection(),
            ContactSection(key: contactSectionKey), // 👈 attach key
          ],
        ),
      ),
    );
  }
}
