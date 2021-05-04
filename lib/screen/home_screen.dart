import 'package:covid_19_app/screen/detail_screen.dart';
import 'package:covid_19_app/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purple.withOpacity(0.03),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              children: [
                InfoCard(
                  title: "Confirmed Cases",
                  iconColor: Color(0xFFFF9C00),
                  effectednum: "20.3 M",
                  press: () {},
                ),
                InfoCard(
                  title: "Total Death",
                  iconColor: Color(0xFFFF2D55),
                  effectednum: "222 K",
                  press: () {},
                ),
                InfoCard(
                  title: "Total Recovered",
                  iconColor: Color(0xFF50E3C2),
                  effectednum: "16.6 M",
                  press: () {},
                ),
                InfoCard(
                  title: "New Cases",
                  iconColor: Color(0xFF5856D6),
                  effectednum: "4 L",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Preventions",
                    style: Theme.of(context).textTheme.title.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buildPrevention(),
                  SizedBox(
                    height: 40,
                  ),
                  buildHelpCard(context)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildPrevention() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PreventionsCard(
          svgSrc: "assets/images (2).jpeg",
          title: "Wash Hands",
        ),
        PreventionsCard(
          svgSrc: "assets/images (1).png",
          title: "Use Masks",
        ),
        PreventionsCard(
          svgSrc: "assets/images (5).jpeg",
          title: "Clean Disinfect",
        ),
      ],
    );
  }

  Container buildHelpCard(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .45,
                top: 20,
                right: 20),
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purpleAccent,
                  Colors.purple,
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Dial 999 For \nMedical Help!!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                  TextSpan(
                      text: "\n\n\nIf Any Symtoms Appears",
                      style: TextStyle(color: Colors.white.withOpacity(0.8)))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset(
              "assets/nurse.png",
              // height: 150,
              // width: 150,
            ),
          ),
          Positioned(
            top: 40,
            right: 10,
            child: Image.asset(
              "assets/virus.png",
              height: 40,
              width: 40,
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        "COVID 19 Application",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      backgroundColor: Colors.white.withOpacity(.03),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        color: Colors.purple,
        onPressed: () {},
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.purple,
          ),
        )
      ],
    );
  }
}

class PreventionsCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  const PreventionsCard({
    Key key,
    this.svgSrc,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          svgSrc,
          height: 80,
          width: 80,
        ),
        Text(
          title,
          style:
              Theme.of(context).textTheme.body2.copyWith(color: Colors.purple),
        )
      ],
    );
  }
}
