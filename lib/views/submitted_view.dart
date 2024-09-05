import 'package:flutter/material.dart';

class SubmittedInfoScreen extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController messageController;

  SubmittedInfoScreen(
      {required this.nameController,
      required this.emailController,
      required this.messageController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Submitted Information',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(
              nameController.text,
              style: TextStyle(fontSize: 18, color: Colors.purple),
            ),
            SizedBox(height: 20),
            Text(
              'Email:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(
              emailController.text,
              style: TextStyle(fontSize: 18, color: Colors.purple),
            ),
            SizedBox(height: 20),
            Text(
              'Message:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(
              messageController.text,
              style: TextStyle(fontSize: 18, color: Colors.purple),
            ),
            SizedBox(height: 30),
            // Back Button
            ElevatedButton(
              onPressed: () {
                nameController.clear();
                emailController.clear();
                messageController.clear();

                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Back',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
