import 'package:flutter/material.dart';

import '../../colors.dart';

class HouseItem extends StatelessWidget {
  final String imagePath;
  final String category;
  final int price;
  final int nbStars;
  final int reviews;
  HouseItem({
    required this.imagePath,
    required this.category,
    required this.nbStars,
    required this.price,
    required this.reviews,
  });
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: deviceSize.height / 5.5,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 10),
            BoxShadow(
                offset: Offset(5, 10),
                color: Colors.grey.withOpacity(0.05),
                blurRadius: 10),
            BoxShadow(
                offset: Offset(-5, 10),
                color: Colors.grey.withOpacity(0.05),
                blurRadius: 10),
            BoxShadow(
                offset: Offset(0, -10),
                color: Theme.of(context).scaffoldBackgroundColor,
                blurRadius: 10),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/$imagePath',
                        ),
                        fit: BoxFit.fill)),
              )),
          SizedBox(
            width: 20,
          ),
          Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: '\$$price',
                          style: TextStyle(
                              fontSize: deviceSize.height / 35,
                              color: marron,
                              fontWeight: FontWeight.values[4]),
                          children: [
                            TextSpan(
                              text: '  per day',
                              style: TextStyle(
                                  fontSize: deviceSize.height / 50,
                                  color: marron,
                                  fontWeight: FontWeight.values[3]),
                            )
                          ]),
                    ),
                    Text(
                      '$category House',
                      style: TextStyle(
                          fontSize: deviceSize.height / 45,
                          color: Colors.black,
                          fontWeight: FontWeight.values[3]),
                    ),
                    Row(
                      children: [
                        Stars(nbStars),
                        Text(
                          "($reviews reviews)",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: deviceSize.height / 60,
                              fontWeight: FontWeight.values[3]),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class Stars extends StatelessWidget {
  final int nbStars;
  Stars(this.nbStars);

  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Container(
      height: 20,
      width: deviceSize.width / 5,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => Icon(
          Icons.star,
          color: index < nbStars ? Colors.yellow : Colors.grey[300],
          size: 12,
        ),
        separatorBuilder: (_, __) => SizedBox(
          width: 2,
        ),
        itemCount: 5,
      ),
    );
  }
}
