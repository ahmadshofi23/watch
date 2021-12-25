import 'package:flutter/material.dart';
import 'package:watch/shared/theme.dart';

class CardItemList extends StatelessWidget {
  final String imageUrl;
  final Color bgImage;
  final String title;
  final String subTitle1;
  final String subtitle2;
  final TextStyle textstyle1, textstyle2;
  final Color bgtext1, bgtext2;

  const CardItemList(
      {required this.imageUrl,
      required this.bgImage,
      required this.title,
      required this.subTitle1,
      required this.subtitle2,
      required this.textstyle1,
      required this.textstyle2,
      required this.bgtext1,
      required this.bgtext2,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: kGrey6Color,
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          )
        ],
      ),
      //
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: bgImage,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                          //gambar
                          decoration: BoxDecoration(
                              image:
                                  DecorationImage(image: AssetImage(imageUrl))),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: blackTextStyle.copyWith(fontWeight: bold),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: bgtext1.withOpacity(0.10)),
                                child: Text(
                                  subTitle1,
                                  style: textstyle1,
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: bgtext2.withOpacity(0.10)),
                                child: Text(
                                  subtitle2,
                                  style: textstyle2,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 12),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text('00:42:21'),
                      SizedBox(height: 8),
                      Icon(Icons.play_arrow),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
