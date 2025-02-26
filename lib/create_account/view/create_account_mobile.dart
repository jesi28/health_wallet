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
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                const SizedBox(height: 15),
                Text(
                  "Create an account",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
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
                TextField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//
class TextField extends StatelessWidget {
  const TextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      keyboardType: TextInputType.emailAddress,
      validator:
          (value) =>
              value == null || value.isEmpty
                  ? "Enter Full name"
                  : null,
      decoration: InputDecoration(
        hintText: 'Full Name',
        filled: true,
        fillColor:
            Theme.of(context).colorScheme.surfaceContainerLow,
        hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).colorScheme.outlineVariant,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(
            0.0,
          ), // Adjust padding as needed
          child: Image.asset(
            'assets/Vector.png', // Replace with your image path
            width: 16,
            height: 21,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
      name: 'name',
    );
  }
}
