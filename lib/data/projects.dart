import '../models/project.dart';


final List<Project> projects = [
  Project(
    title: 'Khateeb: نِظَامٌ لِتَدريِبِ المُذِيعِينَ فِي اللُّغَةِ العَرَبِيَّةِ',
    year: '2025',
    description:
    'AI-powered application for training broadcasters, which provides them with automatically diacritized texts and compares their reading to it to pinpoint pronunciation errors in letters and diacritics.',
    imageAsset: 'assets/images/kateeb1.jpg',
    githubUrl: 'https://github.com/sanamasrany/khateeb_frontend',
    demoUrl: 'https://drive.google.com/file/d/1VU_wmbv-7uZtx8f0z2tWrTSplCmvFfzi/view?usp=sharing', // optional; remove if not available
    tech: ['Flutter' ,'TTS', 'DL'],
  ),
  Project(
    title: 'Medical Bracelet Tracker',
    year: '2025',
    description:
    'Pairs with a medical bracelet to track emergency alerts and vital events.',
    imageAsset: 'assets/images/bracelet.jpg',
    githubUrl: 'https://github.com/sanamasrany/Medical-Bracelet-Tracker',
    demoUrl: 'https://drive.google.com/file/d/1jzVBv8r4JuMMWMOTupwTU0nlzcpRC2rc/view?usp=sharing',
    tech: ['Flutter', 'BLE', 'Notifications'],
  ),
  Project(
    title: 'Deep Fake Audio Detection App',
    year: '2024',
    description:
    'Detects synthetic voice patterns in calls using ML-based features and flags probability.',
    imageAsset: 'assets/images/deepfake.jpg',
    githubUrl: 'https://github.com/sanamasrany/Deepfake_detection_Frontend',
    demoUrl: 'https://drive.google.com/file/d/1W0kf6XaSl8Lu1Dzqheu4eTNDmgKlprLK/view?usp=sharing',
    tech: ['Flutter', 'Audio Processing', 'DL' , 'SQLite' ,'WebSockets' , 'Notifications'],
  ),
  Project(
    title: 'Pharmacy Management System',
    year: '2023',
    description:
    'Inventory, prescriptions, barcode scanning, and reporting for pharmacies.',
    imageAsset: 'assets/images/phar.jpg',
    githubUrl: 'https://github.com/sanamasrany/Pharmacy-management-system',
    demoUrl: 'https://www.facebook.com/100009591842320/videos/318208964039403/',
    tech: ['Flutter', 'SQL', 'Provider' , 'REST API' ,'Maps' , 'WebSockets' , 'Notifications'],
  ),
  Project(
    title: 'Digital Consultation Platform',
    year: '2023',
    description:
    'End-to-end client–consultant booking, chat, scheduling, and payments.',
    imageAsset: 'assets/images/digital.jpg',
    githubUrl: 'https://github.com/sanamasrany/Digital-consulting-platform',
    demoUrl: 'https://www.facebook.com/100004127022584/videos/1752846208470370/',
    tech: ['Flutter', 'Dart', 'REST API', 'WebSockets'],
  ),




];