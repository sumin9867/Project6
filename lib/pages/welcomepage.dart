import 'package:findtoread/Component/PrimaryButton.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 600,
          padding: EdgeInsets.all(30),
          color: Theme.of(context).colorScheme.primary,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "Assets/Images/book.png",
                    width: 400,
                  ),
                  SizedBox(height: 60),
                  Flexible(
                    child: Text(
                      "Find To Read",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: Theme.of(context).colorScheme.background),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Here you can find the best book for you and you can also read book and listen book",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.background),
                  ),
                ],
              ),
            )
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Intoduction',
                      style: Theme.of(context).textTheme.labelLarge),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                        'In the quiet town of Eldertown, where the streets were lined with ancient oak trees and the air was always thick with secrets, there lived a peculiar librarian named Amelia. ',
                        style: Theme.of(context).textTheme.labelMedium),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: PrimaryButton())
      ],
    ));
  }
}
