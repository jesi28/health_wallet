import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            SizedBox(height: 33),
            Row(
              spacing: 83,
              children: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).push('/home');
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Theme.of(context).colorScheme.primary,
                    size: 30,
                  ),
                ),

                Text(
                  "Edit Profile",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.w700,

                    fontSize: 22,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit,
                    color: Theme.of(context).colorScheme.primary,
                    size: 30,
                  ),
                ),
              ],
            ),

            Center(child: Image.asset("assets/profile.png")),
            SizedBox(height: 20),
            Text1(title: "First Name"),
            FormField(text: "First Name"),
            Text1(title: "Last Name"),
            FormField(text: "Last Name"),
            Text1(title: "Email Address"),
            FormField(text: "Email Address"),
            Text1(title: "Age"),
            FormField(text: "Age"),
            SizedBox(height: 5),
            Text1(title: "Gender"),

            FormBuilderRadioGroup<String>(
              name: 'gender',
              initialValue: 'Female', // Default selected
              decoration: InputDecoration(
                border: InputBorder.none, // No underline
              ),
              options:
                  ['Male', 'Female', 'Other']
                      .map(
                        (gender) => FormBuilderFieldOption(
                          value: gender,
                          child: Text(
                            gender,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface ,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                      .toList(),
              activeColor:
                  Theme.of(context).colorScheme.primary, // Circle color
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              controlAffinity: ControlAffinity.leading, // Circle on left side
              wrapSpacing: 30, // Space between options
            ),
            Center(
              child: FilledButton(
                onPressed: () {
                  // Your action here
                },
                style: FilledButton.styleFrom(
                  backgroundColor:
                      Theme.of(context).colorScheme.primary, // Blue Color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded Edges
                  ),
                  // No Shadow
                ),
                child: Text(
                  'Update',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.surface, // White Text
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.surface, // Background color
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.home, size: 28),
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.bar_chart_outlined, size: 28),
                ),
                Text(
                  "Analysis",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.alarm, size: 28),
                ),
                Text(
                  "alarm",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.settings, size: 28),
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push('/profile');
                  },
                  child: Icon(Icons.person_2_outlined, size: 28),
                ),
                Text(
                  "Person",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Text1 extends StatelessWidget {
  const Text1({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontWeight: FontWeight.w500,

        fontSize: 18,
      ),
    );
  }
}

class FormField extends StatelessWidget {
  const FormField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: text,
      decoration: InputDecoration(
        fillColor: Theme.of(context).colorScheme.secondaryContainer,
        filled: true,
        hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).colorScheme.outline,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), // Adjust corner edges
          borderSide: BorderSide.none, // Remove outline
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none, // Remove outline
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none, // Remove outline
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Username is required';
        }
        return null;
      },
    );
  }
}
