import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isChose, required this.color});

  final bool isChose;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isChose
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffC3F73A),
    Color(0xff95e06c),
    Color(0xff68b684),
    Color(0xff83c39b),
    Color(0xff95A99C),
    Color(0xffE0F2E6),
    Color(0xff52a3f4),
    Color(0xffA69EA3),
    Color(0xffE6B9D2),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color=colors[index];
              setState(() {});
            },
            child: ColorItem(
              isChose: currentIndex == index,

              color: colors[index],
            ),
          ),
        ),
      ),
    );
  }
}
