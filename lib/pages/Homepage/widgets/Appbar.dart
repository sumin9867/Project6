import 'package:findtoread/config/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("Assets/Icons/dashboard.svg"),
        Text("E-book",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Theme.of(context).colorScheme.background)),
        CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.background,
          child: Text(
            "N",
            style: TextStyle(color: primaryColor),
          ),
        )
      ],
    );
  }
}
