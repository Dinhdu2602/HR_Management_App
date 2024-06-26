import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  double borderRadius = 26;
  bool isUnShowPass = true;
  bool loadingSignUp = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double statusbarHeight = MediaQuery.of(context).padding.top;
    double bottomHeight = MediaQuery.of(context).padding.bottom;
    double height = screenHeight - statusbarHeight - bottomHeight - 30;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: height * 6 / 7,
                  width: double.infinity,
                  //flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: (height * 6 / 7) * 3 / 11,
                        width: double.infinity,
                        //flex: 3,
                        child: Center(
                          child: GradientText(
                            'EMA',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 68,
                            ),
                            colors: const [
                              Color.fromARGB(215, 24, 167, 176),
                              Color.fromARGB(115, 24, 167, 176),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (height * 6 / 7) * 2 / 11,
                        width: double.infinity,
                        //flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                bottom: 24,
                              ),
                              child: const Text(
                                'Welcome Onboard!',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Text('Let\'s makes HR-related tasks done'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: (height * 6 / 7) * 6 / 11,
                        width: double.infinity,
                        //flex: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: ((height * 6 / 7) * 6 / 11) / 7,
                              width: double.infinity,
                              //flex: 1,
                            ),
                            SizedBox(
                              height: ((height * 6 / 7) * 6 / 11) * 5 / 7,
                              width: double.infinity,
                              //flex: 5, //hello ,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color:
                                            Color.fromARGB(215, 24, 167, 176),
                                      ),
                                      hintText: 'Full Name',
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 3,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 2,
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.mail,
                                        color:
                                            Color.fromARGB(215, 24, 167, 176),
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 3,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 2,
                                        ),
                                      ),
                                      hintText: 'E-mail address',
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.phone_android,
                                        color:
                                            Color.fromARGB(215, 24, 167, 176),
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 3,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 2,
                                        ),
                                      ),
                                      hintText: 'Phone Number ',
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  ),
                                  TextField(
                                    obscureText: isUnShowPass,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.vpn_key,
                                        color:
                                            Color.fromARGB(215, 24, 167, 176),
                                      ),
                                      hintText: 'Password',
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 3,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(215, 24, 167, 176),
                                          width: 2,
                                        ),
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(isUnShowPass
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                        color: const Color.fromARGB(
                                            215, 24, 167, 176),
                                        onPressed: () {
                                          setState(() {
                                            isUnShowPass = !isUnShowPass;
                                          });
                                        },
                                      ),
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: ((height * 6 / 7) * 6 / 11) / 7,
                              width: double.infinity,
                              //flex: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 7,
                  width: double.infinity,
                  //flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(215, 24, 167, 176),
                                Color.fromARGB(215, 24, 167, 176),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2)),
                            minimumSize: Size(
                                double.infinity, (screenHeight * 2.5 / 10 / 4)),
                          ),
                          onPressed: () {
                            setState(() {
                              loadingSignUp = true;
                            });
                            Future.delayed(
                              const Duration(seconds: 3),
                              () {
                                setState(() {
                                  loadingSignUp = false;
                                });
                              },
                            );
                          },
                          child: loadingSignUp
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 2,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('Loading...')
                                  ],
                                )
                              : const Text(
                                  'Register',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account?',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                color: Color.fromARGB(215, 24, 167, 176),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
