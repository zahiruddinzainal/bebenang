import 'package:flutter/material.dart';

Widget search() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Center(
            child: Text(
              'Thread',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/zvhir_rounded.png'),
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("zvhir",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                ],
              ),
              Row(
                children: [
                  Text("56m ago"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Wrap(
            children: [
              Text(
                "Heyy there! I just released the Clone of Thread App by Instagram. It is made with ❤️ with Flutter",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Image(
                image: AssetImage('assets/action_like.png'),
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 12,
              ),
              Image(
                image: AssetImage('assets/action_comment.png'),
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 12,
              ),
              Image(
                image: AssetImage('assets/action_repost.png'),
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 12,
              ),
              Image(
                image: AssetImage('assets/action_tele.png'),
                height: 30,
                width: 30,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text("1 replies Liked by instagram"),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/zvhir_rounded.png'),
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("zvhir",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                ],
              ),
              Row(
                children: [
                  Text("1h ago"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Wrap(
            children: [
              Text(
                "Some shoots at the Putrajaya Lakeside yesterday. Shoot with #Nikon + 1.8G prime lens ",
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 24.0, right: 24, top: 24, bottom: 10),
          child: Image(
            image: AssetImage('assets/dslr.JPG'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Image(
                image: AssetImage('assets/action_like.png'),
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 12,
              ),
              Image(
                image: AssetImage('assets/action_comment.png'),
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 12,
              ),
              Image(
                image: AssetImage('assets/action_repost.png'),
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 12,
              ),
              Image(
                image: AssetImage('assets/action_tele.png'),
                height: 30,
                width: 30,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text("1 replies Liked by instagram"),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
      ],
    ),
  );
}
