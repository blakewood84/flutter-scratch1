import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  bool showPhoneAuth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // if (showPhoneAuth) Icon(Icons.chevron_left),
                      AnimatedContainer(
                        width: showPhoneAuth ? 20 : 100,
                        height: showPhoneAuth ? 20 : 100,
                        curve: Curves.easeInOut,
                        duration: const Duration(milliseconds: 200),
                      ),
                      AnimatedContainer(
                        width: showPhoneAuth ? 130 : 300,
                        height: showPhoneAuth ? 130 : 300,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      if (showPhoneAuth) ...[
                        const SizedBox(height: 10),
                        const Text(
                          'Enter your phone number',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 200),
                          child: Text(
                            'Just for verification. We won\'t call you or give it to anyone.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        const TextField(
                          autofocus: true,
                        ),
                      ],

                      const Spacer(),
                      if (!showPhoneAuth)
                        Container(
                          constraints: const BoxConstraints(
                            maxWidth: 200,
                          ),
                          child: const Text(
                            'Listen, share, and organize unreleased music',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              showPhoneAuth = true;
                            });
                          },
                          child: Text(
                            !showPhoneAuth ? 'Enter' : 'Next',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10)
                    ],
                  ),
                );
              },
            ),
            Positioned(
              left: 20,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showPhoneAuth = false;
                  });
                },
                child: AnimatedOpacity(
                  opacity: showPhoneAuth ? 1 : 0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.fastEaseInToSlowEaseOut,
                  child: Icon(
                    CupertinoIcons.chevron_left,
                    size: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
