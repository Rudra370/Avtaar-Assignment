import 'package:AvtaarAssignment/Widget/custom_bookmark.dart';
import 'package:AvtaarAssignment/Widget/custom_lock.dart';
import 'package:AvtaarAssignment/next_page.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;
  final int completed;

  const CustomCard(
      {@required this.title,
      @required this.subTitle,
      @required this.imagePath,
      @required this.completed});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceheight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NextPage(title: title),
              ));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              elevation: 3,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: deviceWidth * 0.8,
                    height: deviceheight * 0.15,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            imagePath,
                            height: deviceheight * 0.09,
                            width: deviceWidth * 0.14,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: deviceheight * 0.1,
                          width: deviceWidth * 0.6,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.055,
                                    letterSpacing: 1.2,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  subTitle,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: deviceWidth * 0.035,
                                    color: Colors.grey,
                                    letterSpacing: 1.1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 4,
                    top: 4,
                    child: CustomBookmark(),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Container(
                      width: deviceWidth * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 5,
                            width: deviceWidth * 0.225,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: completed < 1
                                      ? Colors.grey[300]
                                      : Colors.green),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                            width: deviceWidth * 0.225,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: completed < 2
                                      ? Colors.grey[300]
                                      : Colors.green),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                            width: deviceWidth * 0.225,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: completed < 3
                                      ? Colors.grey[300]
                                      : Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomLock(),
        ],
      ),
    );
  }
}
