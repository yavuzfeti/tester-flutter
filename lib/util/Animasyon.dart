/*import 'package:flutter/material.dart';

class animasyon extends StatefulWidget {
  @override
  _animasyonState createState() => _animasyonState();
}

class _animasyonState extends State<animasyon> with SingleTickerProviderStateMixin
{

  late AnimationController _animasyon_controller;
  late Animation<double> _animation;

  @override
  void initState()
  {
    super.initState();

    _animasyon_controller = AnimationController(duration: const Duration(seconds: 1), vsync: this);

    final curvedAnimation = CurvedAnimation(
      parent: _animasyon_controller,
      curve: Curves.bounceIn,
    );

    _animation = Tween<double>(begin: 0, end: 200).animate(curvedAnimation);
    _animasyon_controller.repeat(reverse: true);
  }

  @override
  void dispose()
  {
    _animasyon_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animasyon_controller,
        builder: (context, child)
        {
          return Center(
            child: Container(
              width: _animation.value,
              height: _animation.value,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100000),
                color: Colors.deepPurple
              ),
            ),
          );
        },
      ),
    );
  }
}*/