import 'package:flutter/material.dart';

const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;
const purpleGd = [Colors.purpleAccent, Colors.purple];

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});

  GradientContainer.purple({super.key}) : colors = purpleGd;

  final List<Color> colors;

  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-2.png';
    print('change image');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlign,
          end: endAlign,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'Roll Dice',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
