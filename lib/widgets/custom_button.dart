import 'package:flutter/material.dart';
import 'package:spatuu_video/shared/theme.dart';
import 'package:spatuu_video/shared/variables.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: btnGoogleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaulRadius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/ic_google.png'),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              'Sign In with Google',
              style: poppinsTextStyle.copyWith(
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: yellowColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaulRadius),
          ),
        ),
        child: Text(
          text,
          style: poppinsTextStyle.copyWith(
            color: blackColor,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
