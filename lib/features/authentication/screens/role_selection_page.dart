import 'package:flutter/material.dart';

class RoleSelectionPage extends StatelessWidget {
  const RoleSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Role'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle donor button press
              },
              child: Text('Donor'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle receiver button press
              },
              child: Text('Receiver'),
            ),
          ],
        ),
      ),
    );
  }
}
