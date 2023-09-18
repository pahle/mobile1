import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Image.asset('assets/Illustration.png'),
              ],
            ),
            Positioned(
              top: 230, // Adjust the top position as needed
              left: 0,
              right: 0,
              child: Container(
                height: 710,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255), // Background color
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30), // Rounded top-left corner
                    topRight: Radius.circular(30), // Rounded top-right corner
                  ),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 0.5, // Border width
                  ),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Welcome Back!',
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text('Welcome back, we missed you'),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 360,
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the left
                        children: [
                          Text(
                            'E-mail',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: true,
                            textAlign: TextAlign.left, // Align text to the left
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter Your Email',
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Password',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: true,
                            textAlign: TextAlign.left, // Align text to the left
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Enter Your Password',
                              prefixIcon: Icon(Icons.lock),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerRight, // Align to the right
                            child: Text('Forgot Password?'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.purple, Colors.lightBlue],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Center( // Center the "Or Continue With" text
                            child: Text(
                              '--- Or Continue With ---',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton.icon(
                                onPressed: () {
                                  // Handle Google login
                                },
                                icon: Image.asset(
                                  'assets/google_logo.png', // Replace with your Google logo image asset
                                  width: 24, // Adjust icon size as needed
                                  height: 24,
                                ),
                                label: Text('Google'),
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  // Handle Apple login
                                },
                                icon: Image.asset(
                                  'assets/apple_logo.png', // Replace with your Apple logo image asset
                                  width: 24, // Adjust icon size as needed
                                  height: 24,
                                ),
                                label: Text('Apple'),
                              ),
                              TextButton.icon(
                                onPressed: () {
                                  // Handle Facebook login
                                },
                                icon: Image.asset(
                                  'assets/facebook_logo.png', // Replace with your Facebook logo image asset
                                  width: 24, // Adjust icon size as needed
                                  height: 24,
                                ),
                                label: Text('Facebook'),
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
          ],
        ),
      ),
    );
  }
}
