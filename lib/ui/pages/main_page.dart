import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch/cubit/page_cubit.dart';
import 'package:watch/shared/theme.dart';
import 'package:watch/ui/pages/add_page.dart';
import 'package:watch/ui/pages/home_page.dart';
import 'package:watch/ui/pages/pie_chart_page.dart';
import 'package:watch/ui/widget/custom_navigation_item_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildPage(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return AddPage();
        case 2:
          return PIECHARTPAGE();
        default:
          return HomePage();
      }
    }

    Widget customNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 90,
          width: double.infinity,
          margin: EdgeInsets.only(
              // left: defaultMargin,
              // right: defaultMargin,
              ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: kWhiteColor,
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              )
            ],
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomNavigationItem(
                index: 0,
                imageUrl: 'assets/icons/time_outline.png',
              ),
              CustomNavigationItem(
                index: 1,
                imageUrl: 'assets/icons/add.png',
              ),
              CustomNavigationItem(
                index: 2,
                imageUrl: 'assets/icons/pie_chart.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(builder: (context, currentIndex) {
      return Scaffold(
        backgroundColor: kGrey6Color,
        body: Stack(
          children: [
            buildPage(currentIndex),
            customNavigationBar(),
          ],
        ),
      );
    });
  }
}
