import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieLog',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
Widget build(BuildContext context) {
  final colorScheme = Theme.of(context).colorScheme;
  final textTheme = Theme.of(context).textTheme;

  return Scaffold(
    backgroundColor: const Color(0xFFFAF8F5),
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 20, 32, 24),
        child: Column(
          children: [
            Text(
              'FLUTTER 0주차',
              style: textTheme.labelLarge?.copyWith(letterSpacing: 1.2),
            ),
            const SizedBox(height: 70),
            Icon(Icons.movie_outlined, size: 64, color: colorScheme.primary),
            const SizedBox(height: 56),
            const Text(
              '영화의 순간을 기록하세요',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, height: 1.2),
            ),
            const SizedBox(height: 12),
            Text(
              '보고 싶은 영화부터 나만의 평점까지 한곳에서 관리해요',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: colorScheme.onSurfaceVariant),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                debugPrint('시작하기 버튼을 눌렀습니다.');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 56),
                backgroundColor: const Color(0xFF4F378B),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('시작하기'),
            ),
          ],
        ),
      ),
    ),
  );
}
}