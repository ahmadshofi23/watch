import 'package:flutter/material.dart';
import 'package:watch/shared/theme.dart';
import 'package:watch/ui/widget/card_item_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 16, right: 16),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Task',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 24,
                ),
              ),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icons/more.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            width: double.infinity,
            height: 114,
            decoration: BoxDecoration(
              color: kBlackColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 26, left: 16, right: 16),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '00:32:10',
                          style: whiteTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icons/right_arrow.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icons/Ellipse.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Rasion Project',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget contentList() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 32, left: 16, right: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See All',
                style: blackTextStyle.copyWith(
                  fontSize: 22,
                ),
              ),
            ],
          ),

          //card Dekstop
          CardItemList(
            imageUrl: 'assets/icons/desktop.png',
            bgImage: kPurpleColor,
            title: 'UI DESIGN',
            subTitle1: 'Work',
            textstyle1: pinkTextStyle,
            bgtext1: kPinkColor,
            subtitle2: 'Rasion Project',
            textstyle2: purpleTextStyle,
            bgtext2: kPurpleColor,
          ),

          CardItemList(
            imageUrl: 'assets/icons/barbell.png',
            bgImage: kOrangeColor,
            title: '100x Sit-Up',
            subTitle1: 'Personal',
            textstyle1: greykTextStyle,
            bgtext1: kGrey3Color,
            subtitle2: 'Workout',
            textstyle2: orangeTextStyle,
            bgtext2: kOrangeColor,
          ),
          CardItemList(
            imageUrl: 'assets/icons/code_slash.png',
            bgImage: kPinkColor,
            title: 'Learn HTML & CSS',
            subTitle1: 'Personal',
            textstyle1: greykTextStyle,
            bgtext1: kGrey3Color,
            subtitle2: 'Coding',
            textstyle2: pinkTextStyle,
            bgtext2: kPinkColor,
          ),
          CardItemList(
            imageUrl: 'assets/icons/book.png',
            bgImage: kGreenColor,
            title: 'Read 10 pages of book',
            subTitle1: 'Personal',
            textstyle1: greykTextStyle,
            bgtext1: kGrey3Color,
            subtitle2: 'Reading',
            textstyle2: greenkTextStyle,
            bgtext2: kGreenColor,
          ),

          CardItemList(
            imageUrl: 'assets/icons/desktop.png',
            bgImage: kPurpleColor,
            title: 'UI DESIGN',
            subTitle1: 'Work',
            textstyle1: pinkTextStyle,
            bgtext1: kPinkColor,
            subtitle2: 'Rasion Project',
            textstyle2: purpleTextStyle,
            bgtext2: kPurpleColor,
          ),

          CardItemList(
            imageUrl: 'assets/icons/barbell.png',
            bgImage: kOrangeColor,
            title: '100x Sit-Up',
            subTitle1: 'Personal',
            textstyle1: greykTextStyle,
            bgtext1: kGrey3Color,
            subtitle2: 'Workout',
            textstyle2: orangeTextStyle,
            bgtext2: kOrangeColor,
          ),
          CardItemList(
            imageUrl: 'assets/icons/code_slash.png',
            bgImage: kPinkColor,
            title: 'Learn HTML & CSS',
            subTitle1: 'Personal',
            textstyle1: greykTextStyle,
            bgtext1: kGrey3Color,
            subtitle2: 'Coding',
            textstyle2: pinkTextStyle,
            bgtext2: kPinkColor,
          ),
          CardItemList(
            imageUrl: 'assets/icons/book.png',
            bgImage: kGreenColor,
            title: 'Read 10 pages of book',
            subTitle1: 'Personal',
            textstyle1: greykTextStyle,
            bgtext1: kGrey3Color,
            subtitle2: 'Reading',
            textstyle2: greenkTextStyle,
            bgtext2: kGreenColor,
          ),

          SizedBox(height: 45),
          // CardItem('assets/icons/barbell.png', kOrangeColor, '100x Sit-Up',
          //     'Personal', 'Workout'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        contentList(),
      ],
    );
  }
}
