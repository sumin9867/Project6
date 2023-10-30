import 'package:findtoread/Component/BookCard.dart';
import 'package:findtoread/Model/catagoriesData.dart';

import 'package:findtoread/pages/Homepage/widgets/AppCatagories.dart';
import 'package:findtoread/pages/Homepage/widgets/Appbar.dart';
import 'package:findtoread/pages/Homepage/widgets/MyInputtext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 470,
          padding: EdgeInsets.all(10),
          color: Theme.of(context).colorScheme.primary,
          child: Expanded(
            child: Row(children: [
              Expanded(
                  child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 65, right: 20, left: 20),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 60),
                        child: HomeAppBar(),
                      )),
                  Row(
                    children: [
                      Text(
                        "Good Morning,  ",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.background),
                      ),
                      Text(
                        "Sumin",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.background),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: Text(
                        "Time to read a book and Enhance your knowledgement",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.background),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MyInputTextField(),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Topics",
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Theme.of(context).colorScheme.background),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categoryData
                          .map((e) => CategoryWidget(
                              iconPath: e["icon"]!, btnName: e["lebel"]!))
                          .toList(),
                    ),
                  )
                ],
              ))
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Trending",
                    style: Theme.of(context).textTheme.labelLarge,
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: bookData
                        .map((e) => BookCard(
                            coverUrl: e.coverUrl!,
                            title: e.title!,
                            ontap: () {}))
                        .toList()),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
