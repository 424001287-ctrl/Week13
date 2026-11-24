import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Colors taken from the Figma frame
const Color kBarBlue = Color(0xFF3AABF0);
const Color kButtonBlue = Color(0xFF1A6FD6);
const Color kFieldGrey = Color(0xFFD9D9D9);
const Color kLinkBlue = Color(0xFF1E9BFF);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Week 13 Static Screen',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kBarBlue,
        foregroundColor: Colors.white,
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const Spacer(flex: 3),
                  const InputBox(hint: 'Email / Contact No.'),
                  const SizedBox(height: 16),
                  const InputBox(hint: 'Password'),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (_) {}),
                      const Text(
                        'Remember me',
                        style: TextStyle(fontFamily: 'monospace', fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: kButtonBlue,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sign up', style: _linkStyle),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text('•', style: _linkStyle),
                      ),
                      Text('Forgot Password?', style: _linkStyle),
                    ],
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(height: 24, color: kBarBlue),
    );
  }
}

const TextStyle _linkStyle = TextStyle(
  color: kLinkBlue,
  fontFamily: 'monospace',
  fontSize: 12,
);

// Reusable grey input-looking box (static, not a real TextField)
class InputBox extends StatelessWidget {
  final String hint;

  const InputBox({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      color: kFieldGrey,
      child: Text(
        hint,
        style: const TextStyle(
          color: Colors.black38,
          fontFamily: 'monospace',
          fontSize: 14,
        ),
      ),
    );
  }
}
