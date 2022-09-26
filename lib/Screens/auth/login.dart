import 'package:flutter/material.dart';
import 'package:sis/widget/bigtext_1.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "assets/img/bg/bg-web.jpg",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Center(
                child: Container(
                  height: 110,
                  width: 90,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/logo/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const BigText1(text: "Faculty of Technology"),
              const SizedBox(height: 10),
              const BigText1(text: "University of Colombo"),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.75),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const Text(
                      "Student Information Technology",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "SignIn",
                      style: TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 35),
                    TextFormField(
                      controller: _usernameController,
                      key: const ValueKey("username"),
                      style: const TextStyle(
                        fontSize: 15.0,
                      ),
                      validator: (String? fieldContent) {
                        if (fieldContent == null ||
                            fieldContent.isEmpty ||
                            fieldContent.length < 4) {
                          return 'Please enter a valid username';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.25),
                        contentPadding: const EdgeInsets.all(16.0),
                        labelText: "Username",
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFB3B3B3)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFB3B3B3)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Color(0xFFB3B3B3)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Color(0xFFB3B3B3)),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Color(0xFFB3B3B3)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    TextFormField(
                      controller: _passwordController,
                      key: const ValueKey("password"),
                      style: const TextStyle(
                        fontSize: 15.0,
                      ),
                      validator: (String? fieldContent) {
                        if (fieldContent == null ||
                            fieldContent.isEmpty ||
                            fieldContent.length < 4) {
                          return 'Please enter a valid passsword';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.25),
                        contentPadding: const EdgeInsets.all(16.0),
                        labelText: "Password",
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFB3B3B3)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFB3B3B3)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Color(0xFFB3B3B3)),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Color(0xFFB3B3B3)),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Color(0xFFB3B3B3)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(3.0),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(13.0)),
                            alignment: Alignment.center,
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey[900]),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                          onPressed: (() {}),
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 35.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.info_outline_rounded,
                                      size: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " Help ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.help_outline_outlined,
                                      size: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " About ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    const Text(
                      "© 2022 Department of ICT, Faculty of Technology",
                      style: TextStyle(color: Colors.black87),
                    ),
                    const SizedBox(height: 15.0),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
