import 'package:flutter/material.dart';
import 'package:tictactoe_app/widgets/game_view/grid_box.dart';

class GridList extends StatelessWidget {
  const GridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 1 / 1),
        itemCount: 9,
        itemBuilder: (context, index) {
          return GridBox(
            index: index,
          );
        },
      ),
    );
  }
}
