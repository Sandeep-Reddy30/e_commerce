import 'package:flutter/material.dart';

// Variables to store updated values globally
String globalName = 'User-Name';
String globalEmail = 'WyreflowTechnologies@example.com';
String globalPhone = '+1234567890';
String globalLocation = 'Bhopal';
String globalCollege = 'R. G. Kar Medical College';

void showProfileDialog(BuildContext context) {
  final _formKey = GlobalKey<FormState>();

  // Controllers initialized with global variables
  TextEditingController nameController = TextEditingController(text: globalName);
  TextEditingController emailController = TextEditingController(text: globalEmail);
  TextEditingController phoneController = TextEditingController(text: globalPhone);
  TextEditingController locationController = TextEditingController(text: globalLocation);
  TextEditingController collegeController = TextEditingController(text: globalCollege);

  bool isEditing = false;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text('Profile'),
            content: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile Icon Section
                    Center(
                      child: Image.asset(
                        'assets/profile_icon.png',
                        width: 300,
                        height: 100,
                      ),
                    ),
                    SizedBox(height: 8),
                    // Profile Picture Section
                    Center(
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('assets/profile_picture.png'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    SizedBox(height: 1),
                    // Name Section
                    Center(
                      child: isEditing
                          ? TextFormField(
                              controller: nameController,
                              decoration: InputDecoration(
                                labelText: 'Name',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a name';
                                }
                                return null;
                              },
                            )
                          : Text(
                              nameController.text,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                    ),
                    SizedBox(height: 16),
                    // Gender Icon
                    Center(
                      child: Icon(
                        Icons.male, // Use Icons.female for women
                        size: 50,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    SizedBox(height: 16),
                    // Email Section
                    Text(
                      'Email:',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    isEditing
                        ? TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              labelText: 'Email',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty || !value.contains('@')) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          )
                        : Text(
                            emailController.text,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                    SizedBox(height: 16),
                    // Phone Section
                    Text(
                      'Phone:',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    isEditing
                        ? TextFormField(
                            controller: phoneController,
                            decoration: InputDecoration(
                              labelText: 'Phone',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a phone number';
                              }
                              return null;
                            },
                          )
                        : Text(
                            phoneController.text,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                    SizedBox(height: 16),
                    // Location Section
                    Text(
                      'Location:',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    isEditing
                        ? TextFormField(
                            controller: locationController,
                            decoration: InputDecoration(
                              labelText: 'Location',
                            ),
                          )
                        : Text(
                            locationController.text,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                    SizedBox(height: 16),
                    // College Section
                    Text(
                      'College:',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    isEditing
                        ? TextFormField(
                            controller: collegeController,
                            decoration: InputDecoration(
                              labelText: 'College',
                            ),
                          )
                        : Text(
                            collegeController.text,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                    SizedBox(height: 16),
                    // Edit Profile Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (isEditing) {
                            if (_formKey.currentState!.validate()) {
                              // Save the data to global variables
                              globalName = nameController.text;
                              globalEmail = emailController.text;
                              globalPhone = phoneController.text;
                              globalLocation = locationController.text;
                              globalCollege = collegeController.text;

                              setState(() {
                                isEditing = false;
                              });
                              Navigator.pop(context); // Close the dialog after saving
                            }
                          } else {
                            // Enable editing mode
                            setState(() {
                              isEditing = true;
                            });
                          }
                        },
                        child: Text(isEditing ? 'Save Profile' : 'Edit Profile'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog without saving
                },
                child: const Text('Close'),
              ),
            ],
          );
        },
      );
    },
  );
}
