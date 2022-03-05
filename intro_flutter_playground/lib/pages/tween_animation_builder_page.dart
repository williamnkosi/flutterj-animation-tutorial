import 'package:flutter/material.dart';

class TweenAnimationBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TweenAnimationBuilder'),
      ),
      body: Center(
        child: HSVColorSelector(),
      ),
    );
  }
}

class HSVColorSelector extends StatefulWidget {
  @override
  _HSVColorSelectorState createState() => _HSVColorSelectorState();
}

class _HSVColorSelectorState extends State<HSVColorSelector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: 360.0),
            duration: Duration(milliseconds: 1500),
            builder: (context, hue, child) {
              final hsvColor = HSVColor.fromAHSV(1.0, hue, 1.0, 1.0);
              return Container(
                  width: 200, height: 200, color: hsvColor.toColor());
            }),
      ],
    );
  }
}
