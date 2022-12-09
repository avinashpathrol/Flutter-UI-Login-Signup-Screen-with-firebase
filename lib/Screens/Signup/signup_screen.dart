import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/responsive.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../components/background.dart';
import 'components/sign_up_top_image.dart';
import 'components/signup_form.dart';
import 'components/socal_sign_up.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isCreatedAccountClicked = false;
  final _fornKey = GlobalKey<FormState>();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileSignupScreen(),
          desktop: DesktopSignupScreen(),
        ),
      ),
    );
  }
}

class DesktopSignupScreen extends StatefulWidget {
  const DesktopSignupScreen({key});

  @override
  State<DesktopSignupScreen> createState() => _DesktopSignupScreenState();
}

class _DesktopSignupScreenState extends State<DesktopSignupScreen> {
  bool isCreatedAccountClicked = false;
  final _fornKey = GlobalKey<FormState>();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SignUpScreenTopImage(),
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                width: 450,
                child: SignUpForm(
                    fornKey: _fornKey,
                    emailTextController: _emailTextController,
                    passwordTextController: _passwordTextController),
              ),
              SocalSignUp()
            ],
          ),
        )
      ],
    );
  }
}

class MobileSignupScreen extends StatefulWidget {
  const MobileSignupScreen({key});

  @override
  State<MobileSignupScreen> createState() => _MobileSignupScreenState();
}

class _MobileSignupScreenState extends State<MobileSignupScreen> {
  bool isCreatedAccountClicked = false;
  final _fornKey = GlobalKey<FormState>();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SignUpScreenTopImage(),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SignUpForm(
                  fornKey: _fornKey,
                  emailTextController: _emailTextController,
                  passwordTextController: _passwordTextController),
            ),
            const Spacer(),
          ],
        ),
        SocalSignUp()
      ],
    );
  }
}
