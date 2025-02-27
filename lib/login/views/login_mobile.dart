import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:health_wallet/widget/form_field.dart';

bool isChecked = false;

class LoginMobile extends StatefulWidget {
  const LoginMobile({super.key});

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  bool isChecked = false;
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(  
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Securely login to your account',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 30),
                FormBuilder(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFields(
                        hintText: 'Email address',
                        prefixImageURL: "assets/mail.png",
                      ),
                      SizedBox(height: 15),
                      TextFields(
                        hintText: 'Password',
                        prefixImageURL: "assets/lock.png",suffixIcon: Icons.remove_red_eye_outlined,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              isChecked = !isChecked;
                            },
                            child: Radio(
                              value: true,
                              activeColor:
                                  Theme.of(context).colorScheme.surface,

                              groupValue: isChecked,
                              onChanged: (value) {
                                isChecked = value as bool;
                              },
                            ),
                          ),
                          Text(
                            "Remember me",
                            style: Theme.of(
                              context,
                            ).textTheme.headlineSmall?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
<<<<<<< HEAD

                     
=======
                  
                   
>>>>>>> fcb8d55f66ffcc8217e161d7b6c3912c3f2ae7d5
                      SizedBox(
                        width: double.maxFinite,
                        height: MediaQuery.sizeOf(context).height * 0.06,
                        child: FilledButton(
                          style: ButtonStyle(
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ), // Rounded corners
                              ),
                            ),
<<<<<<< HEAD
=======

>>>>>>> fcb8d55f66ffcc8217e161d7b6c3912c3f2ae7d5
                          ),
                          onPressed: () {},
                          child: const Text('LOG IN '),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    '- OR Continue with -',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialLoginButton(
                      imagePath: 'assets/google.png',
                      text: 'Google',
                    ),
                    SizedBox(width: 8),
                    SocialLoginButton(
                      imagePath: 'assets/facebook.png',
                      text: 'Facebook',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create An Account',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).colorScheme.outline,
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'By clicking Continue, you agree to our ',
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).colorScheme.outline,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Terms of Service',
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'and ',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).colorScheme.outline,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Privacy Policy',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialLoginButton extends StatelessWidget {
  final String imagePath;
  final String text;

  const SocialLoginButton({super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.primaryContainer,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        side: BorderSide(color: Theme.of(context).colorScheme.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      ),
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min, // Ensures the button wraps content properly
        children: [
          Image.asset(
            imagePath,
            height: 24,
            width: 24,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
          ),
        ],
      ),
    );
  }
}
