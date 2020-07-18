import 'package:e_commerce_app/widgets/custom_raised_button.dart';
import 'package:e_commerce_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _validator = false;
  bool _otpCheck = false;
  bool _isMobileNumberGiven = false;
  final _mobileNumberController = TextEditingController();
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E Commerce App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: CustomTextField(
                controller: _mobileNumberController,
                keyboardType: TextInputType.phone,
                labelText: 'Mobile Number',
                errorText: _validator ? 'Mobile number cannot be empty' : null,
                obscureText: false,
              ),
            ),
            _isMobileNumberGiven
                ? Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: CustomTextField(
                      controller: _otpController,
                      keyboardType: TextInputType.number,
                      labelText: 'OTP',
                      errorText: _otpCheck ? 'Incorrect OTP' : null,
                      obscureText: true,
                    ),
                  )
                : Container(),
            _isMobileNumberGiven
                ? CustomRaisedButton(
                    handler: () {
                      if (_otpController.text == '1111') {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomeScreen()));
                      } else {
                        setState(() {
                          _otpCheck = true;
                        });
                      }
                    },
                    buttonText: 'Submit',
                  )
                : CustomRaisedButton(
                    handler: () {
                      setState(() {
                        _mobileNumberController.text.isEmpty
                            ? _validator = true
                            : _isMobileNumberGiven = true;
                      });
                    },
                    buttonText: 'Get OTP',
                  ),
          ],
        ),
      ),
    );
  }
}
