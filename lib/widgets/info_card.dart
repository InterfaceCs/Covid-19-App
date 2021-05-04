import 'package:flutter/material.dart';

import 'line_chart.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String effectednum;
  final Color iconColor;
  final Function press;
  const InfoCard({
    Key key,
    this.title,
    this.effectednum,
    this.iconColor,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // ignore: non_constant_identifier_names
      builder: (context, Constraints) {
        return GestureDetector(
          onTap: press,
          child: Container(
            width: Constraints.maxWidth / 2 - 10,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: iconColor.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          "assets/images.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.purple),
                            children: [
                              TextSpan(
                                text: "$effectednum \n",
                                style: Theme.of(context)
                                    .textTheme
                                    // ignore: deprecated_member_use
                                    .title
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: "People",
                                  style: TextStyle(
                                    fontSize: 12,
                                    height: 2,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: LineReportChart(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
