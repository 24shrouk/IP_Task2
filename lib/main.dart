import 'package:flutter/material.dart';
import 'package:task2/views/home_view.dart';

void main() {
  runApp(const ContactForm());
}

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
