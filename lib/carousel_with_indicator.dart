import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://i.natgeofe.com/n/6490d605-b11a-4919-963e-f1e6f3c0d4b6/sumatran-tiger-thumbnail-nationalgeographic_1456276.jpg',
  'https://gray-weau-prod.cdn.arcpublishing.com/resizer/8Dv6G57eSTssnyQkGR_Cx7QqcYA=/1200x675/smart/filters:quality(85)/cloudfront-us-east-1.images.arcpublishing.com/gray/3PH5NX3ZNFHHJJ7PSBZQ5YR45Q.JPG',
  'https://i.guim.co.uk/img/media/c0e411f5b4c387cd8b275f0794a3618210c5b216/0_339_5081_3048/master/5081.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=ff00243f505f866b702b8db337b1b8a5',
  'https://www.gannett-cdn.com/-mm-/116eb12287558f9884b0e58dead79620a45394d9/c=0-0-3000-1692/local/-/media/USATODAY/USATODAY/2014/05/27//1401219246000-Axx-tiger-V2-22.jpg'
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(item, fit: BoxFit.cover, width: 1000.0),
              ],
            )),
      ),
    )
    .toList();

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
