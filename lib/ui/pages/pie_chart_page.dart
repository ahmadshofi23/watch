import 'package:flutter/material.dart';
import 'package:watch/shared/theme.dart';

class PIECHARTPAGE extends StatelessWidget {
  const PIECHARTPAGE({Key? key}) : super(key: key);

  Widget headers() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 24, left: 16),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 56),
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icons/arrow_back.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'My Productivity',
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 42),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 164,
                  height: 132,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 16, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 28),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 12),
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/icons/Icon_Check.png'))),
                              ),
                              Text(
                                'Task\nCompleted',
                                style: blackTextStyle.copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '12',
                          style: blackTextStyle.copyWith(
                              fontSize: 32, fontWeight: bold),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 164,
                  height: 132,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 16, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 28),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 12),
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/icons/Stopwatch.png'))),
                              ),
                              Text(
                                'Time\nDuration',
                                style: blackTextStyle.copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '1',
                              style: blackTextStyle.copyWith(
                                  fontSize: 32, fontWeight: bold),
                            ),
                            Text(
                              'h',
                              style: greykTextStyle.copyWith(fontSize: 20),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '46',
                              style: blackTextStyle.copyWith(
                                  fontSize: 32, fontWeight: bold),
                            ),
                            Text(
                              'm',
                              style: greykTextStyle.copyWith(fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Container(
            width: 279,
            height: 44,
            decoration: BoxDecoration(
              color: fillColorInner,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 132,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Day',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 132,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    // color: kWhiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Week',
                      style: greykTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Chart
          Container(
            width: double.infinity,
            height: 312,
            margin: EdgeInsets.only(top: 24),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icons/chart.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        headers(),
        content(),
      ],
    );
  }
}
