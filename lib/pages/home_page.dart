import 'package:flutter/material.dart';
import 'package:responsive_email_ui/pages/email_screen.dart';
import 'package:responsive_email_ui/pages/list_of_emails.dart';
import 'package:responsive_email_ui/pages/side_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            Expanded(
            //  flex: 2,
                child:SideMenu()),
            Expanded(
              flex: 2,
                child:ListOfEmails()),
            Expanded(
                child:EmailScreen()),
          ],
        ),
    );
  }
}
