import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  FeedItem(
      {required this.titleFeed,
      required this.descriptionFeed,
      required this.imageLink});

  final String titleFeed;
  final String descriptionFeed;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(
            top: 0,
          ),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (imageLink != '')
                Container(
                  height: 190,
                  width: double.infinity,
                  color: Colors.grey,
                  child: Image.network(
                    imageLink,
                    fit: BoxFit.cover,
                  ),
                ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 12,
                  right: 12,
                  bottom: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Posted on Auguest 24, 2022',
                      style: TextStyle(fontSize: 10.5, color: Colors.black),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleFeed,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            descriptionFeed,
                            style: const TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.grey.withOpacity(0.2)), 
                            ),
                            onPressed: () {},
                            child: const Icon(Icons.favorite))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
