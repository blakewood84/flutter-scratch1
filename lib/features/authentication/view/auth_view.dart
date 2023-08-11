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
                      AnimatedContainer(
                        width: showPhoneAuth ? 0 : 0,
                        height: showPhoneAuth ? 40 : 100,
                        curve: Curves.easeInOut,
                        duration: const Duration(milliseconds: 400),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        width: showPhoneAuth ? 130 : 300,
                        height: showPhoneAuth ? 130 : 300,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastEaseInToSlowEaseOut,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      if (showPhoneAuth) ...[
                        const SizedBox(height: 20),
                        const Text(
                          'Enter your phone number',
                          style: TextStyle(
                            fontSize: 20,
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
                              fontSize: 14,
                              color: Color(0xff999999),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const _PhoneNumberInput()
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
                              vertical: 20,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              showPhoneAuth = true;
                            });
                          },
                          child: Text(
                            !showPhoneAuth ? 'Enter' : 'Next',
                            style: const TextStyle(
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
                  child: const Icon(
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

class _PhoneNumberInput extends StatelessWidget {
  const _PhoneNumberInput();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 50,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25.0),
                ),
              ),
              builder: (context) {
                return Scrollbar(
                  thumbVisibility: true,
                  child: Container(
                    height: size.height * .9,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    margin: const EdgeInsets.only(top: 20),
                    child: ListView.builder(
                      itemCount: 100,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          child: CupertinoListTile(
                            title: const Text(
                              '\u{1F1E6}\u{1F1E9} Country Code',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.transparent,
                            onTap: () {},
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
            child: Container(
              width: 60,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xff444444),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              autofocus: true,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Enter Phone Number',
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                filled: true,
                fillColor: const Color(0xff444444).withOpacity(.9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                errorStyle: const TextStyle(
                  fontSize: 0,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
