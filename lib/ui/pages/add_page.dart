import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';
import 'package:watch/shared/theme.dart';
import 'package:watch/ui/widget/custom_button_play.dart';

class AddPage extends StatelessWidget {
  // final controller;
  const AddPage({Key? key}) : super(key: key);

  Widget headeradd() {
    return Container(
      margin: EdgeInsets.only(left: 24, right: 24, top: 86),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rasion Project',
                  style: blackTextStyle.copyWith(
                      fontSize: 24, fontWeight: semiBold),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: BoxDecoration(
                      color: kPinkColor.withOpacity(0.10),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'Work',
                      style: pinkTextStyle,
                    )),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 12),
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icons/Ellipse.png',
                    ),
                  ),
                ),
              ),
              Text('UI Design'),
            ],
          ),
        ],
      ),
    );
  }

  Widget timer() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 100, bottom: 70),
        child: NeonCircularTimer(
          // onComplete: ,
          isTimerTextShown: true,
          neumorphicEffect: true,
          outerStrokeColor: Colors.transparent,
          width: 220,
          duration: 1000,
          strokeWidth: 10,
          controller: null,
          innerFillGradient: RadialGradient(colors: [
            kWhiteColor,
            timeColor,
          ]),
          strokeCap: StrokeCap.round,
          innerFillColor: fillColorInner,
          backgroudColor: Colors.grey.shade100,
          neonColor: Colors.blue.shade900,
          neonGradient: RadialGradient(colors: [
            kWhiteColor,
            timeColor,
          ]),
        ),
      ),
    );
  }

  Widget buttonTimer() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: 295,
            height: 60,
            decoration: BoxDecoration(
              color: fillColorInner,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Finish',
                style: blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
              ),
            ),
          ),
          Container(
            width: 295,
            height: 60,
            decoration: BoxDecoration(
              // color: kWhiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Quit',
                style:
                    blackTextStyle.copyWith(fontSize: 18, fontWeight: reguler),
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
        headeradd(),
        timer(),
        buttonTimer(),
      ],
    );
  }
}
