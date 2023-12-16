import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';

class AnimatrdBtn extends StatelessWidget {
  const AnimatrdBtn({
    super.key,
    required RiveAnimationController btnAnimationcoltroller,
    required this.press,
  }) : _btnAnimationcoltroller = btnAnimationcoltroller;

  final RiveAnimationController _btnAnimationcoltroller;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 64,
        width: 260,
        child: Stack(
          children: [
            RiveAnimation.asset(
              "assets/RiveAssets/button.riv",
              controllers: [_btnAnimationcoltroller],
            ),
            Positioned.fill(
              top: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(CupertinoIcons.arrow_right),
                  SizedBox(width: 8),
                  Text(
                    "Get started!",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
