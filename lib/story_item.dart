import 'dart:ffi';

import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  StoryItem(
      {required this.titleText,
      required this.descriptionText,
      required this.storyLink,
      this.newStory});

  final String titleText;
  final String descriptionText;
  final String storyLink;
  final bool? newStory;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          height: 190,
          width: 130,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(storyLink), fit: BoxFit.cover)),
          padding: const EdgeInsets.all(11),
          child: Column(
            mainAxisAlignment: (newStory == true)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (newStory == true)
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 12,
                    width: 12,
                    color: const Color.fromRGBO(0, 180, 216, 1),
                  ),
                ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleText,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(0.0, 0.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Shadow(
                              offset: Offset(0.0, 0.0),
                              blurRadius: 8.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ]),
                    ),
                    Text(
                      descriptionText,
                      style: const TextStyle(
                          color: Colors.white,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(0.0, 0.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Shadow(
                              offset: Offset(0.0, 0.0),
                              blurRadius: 8.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
