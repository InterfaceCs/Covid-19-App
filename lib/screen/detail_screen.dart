import 'package:covid_19_app/screen/weekly_chart.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDetailsAppBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTitleWithMore(),
                  SizedBox(
                    height: 15,
                  ),
                  buildCaseNumber(),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "From Health Centre",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4), fontSize: 17),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WeeklyChart(),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildInfoTextWithPercentage("From Last Week", "64.3 %"),
                      buildInfoTextWithPercentage("Recovery Rate", "97 %")
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 21),
                    blurRadius: 54,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Global Map",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Colors.purple),
                      ),
                      Icon(
                        Icons.more_vert_outlined,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                  Image.asset("assets/images (6).jpeg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  RichText buildInfoTextWithPercentage(String title, String percentage) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$percentage\n",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 20,
            ),
          ),
          TextSpan(
            text: "$title",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 15,
              height: 1.5,
            ),
          )
        ],
      ),
    );
  }

  Row buildCaseNumber() {
    return Row(
      children: [
        Text(
          "3,57,316 ",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w400,
            color: Colors.purple,
          ),
        ),
        Text(
          "8.9 %",
          style: TextStyle(fontSize: 15, color: Colors.purple),
        ),
        Icon(
          Icons.arrow_upward_outlined,
          color: Colors.purple,
        ),
      ],
    );
  }

  Row buildTitleWithMore() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "New Cases",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.purple,
            fontSize: 15,
          ),
        ),
        Icon(
          Icons.more_vert_outlined,
          color: Colors.purple,
        ),
      ],
    );
  }

  AppBar buildDetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: Colors.purple,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            icon: Icon(Icons.search_rounded),
            iconSize: 30,
            color: Colors.purple,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
