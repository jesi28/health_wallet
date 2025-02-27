import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPage();
}

class _VerificationPage extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Verification Code",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w700,

                  fontSize: 22,
                ),
              ),
              Text(
                "We sent you a 4 digit codt to your email address. please check & enter your code",
                maxLines: 2,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                  fontWeight: FontWeight.w400,

                  fontSize: 14,
                ),
              ),
              SizedBox(height: 30),
              PinCodeTextField(
                appContext: context,
                length: 4,
                obscureText: false,
                keyboardType: TextInputType.number,
                textStyle: const TextStyle(color: Colors.black),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 88,
                  fieldWidth: 66,
                  activeColor: Theme.of(context).colorScheme.primary,
                  inactiveColor: Theme.of(context).colorScheme.outlineVariant,
                  selectedColor: Theme.of(context).colorScheme.primary,
                ),
                onChanged: (value) {},
              ),
              SizedBox(
                width: double.maxFinite,
                height: MediaQuery.sizeOf(context).height * 0.06,
                child: FilledButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Verify'),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    "Didn't receive the Code?",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                      fontWeight: FontWeight.w400,

                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 19),
            ],
          ),
        ),
      ),
    );
  }
}
