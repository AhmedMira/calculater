import 'package:Calculater/modules/screen_two/screen_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Calculater/shared/components/components.dart';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var userNameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Home',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            defaultFormField(
              controller: emailController,
              hint: 'enter email',
              type: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 10.0,
            ),
            defaultFormField(
              controller: userNameController,
              hint: 'enter userName',
              type: TextInputType.name,
            ),
            SizedBox(
              height: 20.0,
            ),
            defaultFormField(
              controller: phoneNumberController,
              hint: 'phone number',
              type: TextInputType.phone,
            ),
            SizedBox(
              height: 20.0,
            ),
            defaultFormField(
              controller: passController,
              hint: 'password',
              type: TextInputType.visiblePassword,
              pass: true,
            ),
            SizedBox(
              height: 20.0,
            ),
            defaultButton(
              text: 'screen two',
              function: () {
                Toast.show(
                  "Welcome To our App",
                  context,
                  duration: Toast.LENGTH_LONG,
                  gravity: Toast.BOTTOM,
                );
                navigateTo(
                  context,
                  ScreenTwo(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
