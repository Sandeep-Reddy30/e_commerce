import 'package:flutter/material.dart';
import 'package:e_commerce/components/my_button.dart';
import 'package:e_commerce/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Text editing controllers
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController fathersNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController whatsappController = TextEditingController();
  final TextEditingController collegeNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  // Password visibility state
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  // Variables for dropdown and calendar selections
  String? selectedGender;
  DateTime? selectedDateOfBirth;
  String? selectedState;
  String? selectedBranch;
  String? selectedDegree;
  String? selectedPassingYear;

  // List of options for dropdowns
  final List<String> genders = ['Male', 'Female', 'Other'];
  final List<String> states = ['Andhra Pradesh', 'Arunachal Pradesh', 'Assam', 'Bihar', 'Chhattisgarh', 'Goa', 'Gujarat', 'Haryana', 'Himachal Pradesh', 'Jharkhand', 'Karnataka', 'Kerala', 'Madhya Pradesh', 'Maharashtra', 'Manipur', 'Meghalaya', 'Mizoram', 'Nagaland', 'Odisha', 'Punjab', 'Rajasthan', 'Sikkim', 'Tamil Nadu', 'Telangana', 'Tripura', 'Uttar Pradesh', 'Uttarakhand', 'West Bengal'];
  final List<String> branches = ['Computer Science Engineering', 'Information Technology', 'Mechanical Engineering', 'Electrical Engineering', 'Civil Engineering', 'Electronics and Communication Engineering', 'Chemical Engineering', 'Biotechnology', 'Aerospace Engineering', 'Automobile Engineering', 'Biomedical Engineering', 'Environmental Engineering', 'Mining Engineering', 'Metallurgical Engineering', 'Agricultural Engineering', 'Petroleum Engineering', 'Industrial Engineering', 'Production Engineering', 'Textile Engineering'];
  final List<String> degrees = ['Bachelor of Engineering (BE)', 'Bachelor of Technology (BTech)', 'Master of Engineering (ME)', 'Master of Technology (MTech)', 'Bachelor of Science (BSc)', 'Master of Science (MSc)', 'Bachelor of Computer Applications (BCA)', 'Master of Computer Applications (MCA)', 'Bachelor of Business Administration (BBA)', 'Master of Business Administration (MBA)', 'Doctor of Philosophy (PhD)', 'Diploma'];
  final List<String> passingYears = ['2024', '2025', '2026', '2027', '2028'];

  // Function to select date
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDateOfBirth) {
      setState(() {
        selectedDateOfBirth = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image
              Image.asset(
                'assets/logoo.png',
                width: 150,
                height: 300,
              ),
              const SizedBox(height: 40),

              // Heading: Personal Information
              const Text(
                "PERSONAL INFORMATION",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 25),

              // Full Name
              MyTextField(
                controller: fullNameController,
                hintText: "Full Name",
                obscureText: false,
              ),
              const SizedBox(height: 20),

              // Father's Name
              MyTextField(
                controller: fathersNameController,
                hintText: "Father's Name",
                obscureText: false,
              ),
              const SizedBox(height: 20),

              // Gender Dropdown
              Container(
                width: MediaQuery.of(context).size.width * 0.85, // Ensure it fits within the screen
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white), // Set border color to white
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButton<String>(
                  value: selectedGender,
                  hint: const Text("Select Gender"),
                  isExpanded: true, // Ensures dropdown takes available width
                  items: genders.map((String gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(gender),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedGender = newValue;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),

              // Email
              MyTextField(
                controller: emailController,
                hintText: "E-mail",
                obscureText: false,
              ),
              const SizedBox(height: 20),

              // Date of Birth (Calendar Selection)
              GestureDetector(
                onTap: () => _selectDate(context),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white), // Set border color to white
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: MediaQuery.of(context).size.width * 0.85, // Match width to email box
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectedDateOfBirth != null
                            ? "${selectedDateOfBirth!.day}/${selectedDateOfBirth!.month}/${selectedDateOfBirth!.year}"
                            : "Select Date of Birth",
                        style: const TextStyle(fontSize: 15),
                      ),
                      const Icon(Icons.calendar_today),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Birth Place
              MyTextField(
                controller: TextEditingController(),
                hintText: "Birth Place",
                obscureText: false,
              ),
              const SizedBox(height: 30),

              // Heading: Contact Info
              const Text(
                "CONTACT INFO",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 25),

              // Phone Number
              MyTextField(
                controller: phoneController,
                hintText: "Phone Number",
                obscureText: false,
              ),
              const SizedBox(height: 12),

              // WhatsApp Number
              MyTextField(
                controller: whatsappController,
                hintText: "WhatsApp Number",
                obscureText: false,
              ),
              const SizedBox(height: 35),

              // Heading: Educational Info
              const Text(
                "EDUCATIONAL INFO",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Georgia',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 25),

              // College Name
              MyTextField(
                controller: collegeNameController,
                hintText: "College Name",
                obscureText: false,
              ),
              const SizedBox(height: 15),

              // College State Dropdown
              Container(
                width: MediaQuery.of(context).size.width * 0.8, // Ensure it fits within the screen
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white), // Set border color to white
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButton<String>(
                  value: selectedState,
                  hint: const Text("Select College State"),
                  isExpanded: true, // Ensures dropdown takes available width
                  items: states.map((String state) {
                    return DropdownMenuItem<String>(
                      value: state,
                      child: Text(state),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedState = newValue;
                    });
                  },
                ),
              ),
              const SizedBox(height: 15),

              // Branch Dropdown
              Container(
                width: MediaQuery.of(context).size.width * 0.8, // Ensure it fits within the screen
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white), // Set border color to white
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButton<String>(
                  value: selectedBranch,
                  hint: const Text("Select Branch"),
                  isExpanded: true, // Ensures dropdown takes available width
                  items: branches.map((String branch) {
                    return DropdownMenuItem<String>(
                      value: branch,
                      child: Text(branch),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedBranch = newValue;
                    });
                  },
                ),
              ),
              const SizedBox(height: 15),

              // Degree Dropdown
              Container(
                width: MediaQuery.of(context).size.width * 0.8, // Ensure it fits within the screen
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white), // Set border color to white
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButton<String>(
                  value: selectedDegree,
                  hint: const Text("Select Degree"),
                  isExpanded: true, // Ensures dropdown takes available width
                  items: degrees.map((String degree) {
                    return DropdownMenuItem<String>(
                      value: degree,
                      child: Text(degree),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedDegree = newValue;
                    });
                  },
                ),
              ),
              const SizedBox(height: 15),

              // Passing Year Dropdown
              Container(
                width: MediaQuery.of(context).size.width * 0.8, // Ensure it fits within the screen
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white), // Set border color to white
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButton<String>(
                  value: selectedPassingYear,
                  hint: const Text("Select Passing Year"),
                  isExpanded: true, // Ensures dropdown takes available width
                  items: passingYears.map((String year) {
                    return DropdownMenuItem<String>(
                      value: year,
                      child: Text(year),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedPassingYear = newValue;
                    });
                  },
                ),
              ),
              const SizedBox(height: 15),

              // Password
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                width: MediaQuery.of(context).size.width * 0.85,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: passwordController,
                        obscureText: !_isPasswordVisible,
                        decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // Confirm Password
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                ),
                width: MediaQuery.of(context).size.width * 0.85,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: confirmPasswordController,
                        obscureText: !_isConfirmPasswordVisible,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // Register Button
              MyButton(
                onTap: () {
                  // Add your registration logic here
                },
                text: "Register",
              ),
              const SizedBox(height: 25),

              // Already have an account? Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
