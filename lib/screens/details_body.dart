import 'package:flutter/material.dart';
import 'package:flutter_plant_design_1/constraint.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: kDefaultPadding * 3),
            child: SizedBox(
              height: size.height * 0.8,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              padding: EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding),
                              icon: SvgPicture.asset(
                                  "assets/icons/back_arrow.svg"),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                        Spacer(),
                        IconCard(
                          icon: "assets/icons/sun.svg",
                        ),
                        IconCard(
                          icon: "assets/icons/icon_2.svg",
                        ),
                        IconCard(
                          icon: "assets/icons/icon_3.svg",
                        ),
                        IconCard(
                          icon: "assets/icons/icon_4.svg",
                        ),
                      ],
                    ),
                  )),
                  Container(
                    height: size.height * 0.8,
                    width: size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 60,
                          color: kPrimaryColor.withOpacity(0.29),
                        )
                      ],
                      image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img.png"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Angelica\n",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextSpan(
                        text: "Russia",
                        style: TextStyle(
                            fontSize: 20,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  "\$400",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: kPrimaryColor),
                )
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 74,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(24))),
                  onPressed: () {},
                  color: kPrimaryColor,
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  final String icon;

  IconCard({Key key, this.icon});
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 22,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
