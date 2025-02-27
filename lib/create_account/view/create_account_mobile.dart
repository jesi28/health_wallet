import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: FormBuilder(
            onChanged: () {},
            child: SingleChildScrollView(
              child: Column(
                spacing: 18,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                  const SizedBox(height: 15),
                  SizedBox(height: 10),
                  Text(
                    "Create an account",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.w700,

                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "Securely login to your account",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                      fontWeight: FontWeight.w400,

                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFields(
                    hintText: "Full Name",
                    prefixImageURL: 'assets/Vector.png',
                  ),
                  TextFields(
                    prefixImageURL: 'assets/mail.png',
                    hintText: "Email address",
                  ),
                  TextFields(
                    hintText: "Enter NUmber",
                    prefixImageURL: 'assets/Vector.png',
                  ),
                  TextFields(
                    hintText: "Password",
                    prefixImageURL: 'assets/lock.png',
                    suffixIcon: Icons.remove_red_eye_outlined,
                  ),
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
                      ),
                      onPressed: () {},
                      child: const Text('Create Account'),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        "I Already have an account?",
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall?.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                          fontWeight: FontWeight.w400,

                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({
    super.key,

    required this.prefixImageURL,
    required this.hintText,
    this.suffixIcon,
  });

  final String prefixImageURL;
  final IconData? suffixIcon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.emailAddress,
      validator:
          (value) => value == null || value.isEmpty ? "Enter Full name" : null,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).colorScheme.outline,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(0.0), // Adjust padding as needed
          child: Image.asset(
            prefixImageURL, // Replace with your image path
            width: 16,
            height: 21,
          ),
        ),
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
      ),
      name: 'name',
    );
  }
}
