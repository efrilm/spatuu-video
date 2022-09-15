import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:spatuu_video/shared/theme.dart';
import 'package:spatuu_video/shared/variables.dart';
import 'package:spatuu_video/widgets/custom_button.dart';
import 'package:spatuu_video/widgets/custom_text_form_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isPassword = true;

  void togglePassword() {
    setState(() {
      isPassword = !isPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Welcome Back',
              style: interTextStyle.copyWith(
                color: whiteColor,
                fontSize: 20,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Sign In to Your Account',
              style: interTextStyle.copyWith(
                fontSize: 16,
                color: greyColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSignInGoogle() {
      return const Padding(
        padding: EdgeInsets.only(top: 50),
        child: ButtonGoogle(),
      );
    }

    Widget divider() {
      return Container(
        margin: const EdgeInsets.only(
          top: 22,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: 1,
              color: greyColor,
            ),
            Text(
              'OR',
              style: poppinsTextStyle.copyWith(
                fontSize: 16,
                color: greyColor,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: 1,
              color: greyColor,
            )
          ],
        ),
      );
    }

    Widget phoneInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: const CustomTextFormField(
          hint: 'Type Your Password',
          icon: IconlyLight.call,
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 16,
        ),
        child: TextFormField(
          style: interTextStyle.copyWith(
            color: whiteColor,
          ),
          cursorColor: yellowColor,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: 'Type Your Password',
            hintStyle: interTextStyle.copyWith(
              color: greyColor,
              fontSize: 14,
              fontWeight: light,
            ),
            prefixIcon: const Icon(
              IconlyLight.lock,
              color: greyColor,
            ),
            suffixIcon: IconButton(
              onPressed: togglePassword,
              icon: Icon(
                isPassword
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: greyColor,
              ),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: greyColor,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: yellowColor),
            ),
            focusColor: yellowColor,
          ),
        ),
      );
    }

    Widget forgotPassword() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 16),
        child: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {},
            child: Text(
              'Forget Password?',
              style: interTextStyle.copyWith(
                color: yellowColor,
              ),
            ),
          ),
        ),
      );
    }

    Widget buttonSignIn() {
      return Container(
        margin: const EdgeInsets.only(
          top: 54,
        ),
        child: CustomButton(
          text: 'Sign In',
          onTap: () {},
        ),
      );
    }

    Widget dontHaveAccount() {
      return Container(
        margin: const EdgeInsets.only(
          top: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont Have Account? ',
              style: interTextStyle.copyWith(
                color: whiteColor,
                fontWeight: light,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
                style: interTextStyle.copyWith(
                  color: yellowColor,
                  fontWeight: light,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          header(),
          buttonSignInGoogle(),
          divider(),
          phoneInput(),
          passwordInput(),
          forgotPassword(),
          buttonSignIn(),
          dontHaveAccount(),
        ],
      ),
    );
  }
}
