// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// class WaitingUi extends StatelessWidget {
//   const WaitingUi({Key? key}) : super(key: key);
//   static const name = 'WaitingUi';
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             body: Column(
//       children: [
//         Lottie.asset('assets/lottie/ship.json'),
//       ],
//     )));
//   }
// }

class WaitingUi extends StatefulWidget {
  const WaitingUi({Key? key}) : super(key: key);
  static const name = 'WaitingUi';

  @override
  _WaitingUiState createState() => _WaitingUiState();
}

class _WaitingUiState extends State<WaitingUi> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this,);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Lottie.asset(
            'assets/lottie/ship.json',
            controller: _controller,
            onLoaded: (composition) {
              // Configure the AnimationController with the duration of the
              // Lottie file and start the animation.  
              print('onloadded');
             _controller..duration = composition.duration..forward();
             _controller.repeat();
            },
          ),
        ),
      ),
    );
  }
}
