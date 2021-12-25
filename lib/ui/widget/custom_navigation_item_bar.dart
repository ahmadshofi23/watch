import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch/cubit/page_cubit.dart';
import 'package:watch/shared/theme.dart';

class CustomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  const CustomNavigationItem({
    required this.imageUrl,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
