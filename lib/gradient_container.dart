import 'package:flutter/material.dart';
import 'package:flutter_dice/styled_text.dart';

var startAlign = Alignment.topLeft;
var endAlign = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Colors.black54,
            Colors.black87,
          ],
          begin: startAlign,
          end: endAlign,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
