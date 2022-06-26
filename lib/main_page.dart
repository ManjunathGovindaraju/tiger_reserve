import 'package:flutter/material.dart';
import 'package:animal_reserve/carousel_with_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        // Image Carousel
        Expanded(
          child: CarouselWithIndicatorDemo(),
        ),
        // Content
        MainPageHeader(),
        SizedBox(
          height: 10,
        ),
        MainPageContent(),
        SizedBox(
          height: 30,
        ),
        MainPageImageWithContent(),
        SizedBox(
          height: 10,
        ),
        MainPageButtons(),
      ],
    );
  }
}

class MainPageButtons extends StatelessWidget {
  const MainPageButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 20.0),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("JOIN US"),
          ),
        ),
        Container(width: 20.0),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("DONATE"),
          ),
        ),
        Container(width: 20.0),
      ],
    );
  }
}

class MainPageImageWithContent extends StatelessWidget {
  const MainPageImageWithContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(left: 10),
          width: 120,
          height: 200,
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    'https://i.natgeofe.com/n/6490d605-b11a-4919-963e-f1e6f3c0d4b6/sumatran-tiger-thumbnail-nationalgeographic_1456276.jpg',
                    fit: BoxFit.cover,
                    height: 150,
                    width: 100,
                  ),
                ],
              )),
        ),
        Container(
          width: 260,
          height: 200,
          padding: const EdgeInsets.only(left: 5),
          child: RichText(
            softWrap: true,
            textAlign: TextAlign.justify,
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                  ),
                  text:
                      'Threats: Poaching is the most immediate threat to wild tigers. Every part of the tiger from whisker to tail -- has been found in illegal wildlife markets. A result of persi',
                ),
                TextSpan(
                    style: TextStyle(
                      backgroundColor: Colors.white,
                      color: Colors.black,
                    ),
                    text:
                        ' demand, their bones and other body parts are used for modern health tonics and folk remedies, and their skin are sought after as status symbols among some Asian cultures..'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MainPageContent extends StatelessWidget {
  const MainPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: RichText(
          softWrap: true,
          textAlign: TextAlign.justify,
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                  ),
                  text:
                      '\nThe Tiger is not just a charismatic species or just another wild animal living in some far away forest. The tiger is a unique animal which plays a pivotal '),
              TextSpan(
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                  ),
                  text:
                      ' role in the health and diversity of an ecosystem. It is a top predator which is at the apex of the food chain and keeps the poplulation of wild ungulates in check, thereby '),
              TextSpan(
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                  ),
                  text:
                      ' the balance between herbivores and the vegetation upon which they feed. Therefore, the presence of tigers in the forest'),
              TextSpan(
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                  ),
                  text:
                      ' is an indicator of the well being of the ecosystem. The extinction of this top predator is an indication that its ecosystem is not sufficiently protected, and neither would it exist for long thereafter. '),
              TextSpan(
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  text:
                      '  \nIf the tigers go extinct, the entire system would collapse...')
            ],
          ),
        ),
      ),
    );
  }
}

class MainPageHeader extends StatelessWidget {
  const MainPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "  Endangered Tigers Need Your Help. Be a Hero  ",
        style: TextStyle(
          backgroundColor: Colors.lightGreen,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
