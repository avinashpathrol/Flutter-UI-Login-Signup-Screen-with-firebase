import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Signup/components/sign_up_top_image.dart';
import 'package:flutter_auth/responsive.dart';

import '../../components/background.dart';
import 'components/login_form.dart';
import 'components/login_screen_top_image.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({key});


    @override
  State<LoginScreen> createState() => _LoginScreenState();
  }

  class _LoginScreenState extends State<LoginScreen> {
  bool isCreatedAccountClicked = false;
  final _fornKey = GlobalKey<FormState>();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
   
     @override
     Widget build(BuildContext context) {
    // TODO: implement build
        return Background(
      child: SingleChildScrollView(
        child:Responsive(mobile: MobileLoginScreen(), 
        desktop: Row(
          children: [
            Expanded(child: LoginScreenTopImage(),
            ),
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 450,
                  child: LoginForm(fornKey: _fornKey, emailTextController: _emailTextController, passwordTextController: _passwordTextController)),
              ],
            ),
            )
          ],
        )),
      ),
    );
     }
   
}

class MobileLoginScreen extends StatefulWidget {
  
  const MobileLoginScreen({key}) ;


     @override
  _MobileLoginScreenState createState() => _MobileLoginScreenState();
  }

  class _MobileLoginScreenState extends State<MobileLoginScreen> {
  bool isCreatedAccountClicked = false;
  final _fornKey = GlobalKey<FormState>();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
   

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LoginScreenTopImage(),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm(fornKey: _fornKey, emailTextController: _emailTextController, passwordTextController: _passwordTextController),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
