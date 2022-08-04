import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const _MyStatefulWidget(),
    );
  }
}

class _MyStatefulWidget extends StatefulWidget {
  const _MyStatefulWidget({super.key});

  @override
  State<_MyStatefulWidget> createState() => __MyStatefulWidgetState();
}

class __MyStatefulWidgetState extends State<_MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final colorTween = ColorTween(begin: Colors.blue, end: Colors.yellow);
    return Scaffold(
        appBar: AppBar(title: Text('Flutter Code Sample')),
        body: GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: TweenAnimationBuilder(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.white,

                  // width: selected ? 200.0 : 100.0,
                  // height: selected ? 100.0 : 200.0,
                  // alignment: Alignment.center,
                  // duration: const Duration(seconds: 1),
                  // color: Colors.red,
                  // curve: Curves.easeIn),
            ),
    duration: Duration(seconds: 4),
    tween: colorTween,
    builder: (BuildContext context, Color? value, Widget? child) {
                return ColorFiltered(
                child: child,
                colorFilter: ColorFilter.mode(value!, BlendMode.modulate),
                );
    },

        )
    )
    ),
    );

  }
}




