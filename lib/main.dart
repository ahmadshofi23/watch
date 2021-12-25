import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch/cubit/page_cubit.dart';
import 'package:watch/ui/pages/add_page.dart';
import 'package:watch/ui/pages/home_page.dart';
import 'package:watch/ui/pages/main_page.dart';
import 'package:watch/ui/pages/pie_chart_page.dart';
import 'package:watch/ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/main': (context) => MainPage(),
          '/add': (context) => AddPage(),
          '/chart': (context) => PIECHARTPAGE(),
        },
      ),
    );
  }
}
