import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyInputTextField extends StatelessWidget {
  const MyInputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          SizedBox(
            width: 20,
          ),
          SvgPicture.asset("Assets/Icons/search.svg"),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search here.....",
                border: OutlineInputBorder(borderSide: BorderSide.none)),
          )),
        ]),
      ),
    );
  }
}
