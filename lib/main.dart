import 'package:flutter/material.dart';
import 'package:sosa/single_child_scroll_view_widget.dart';
import 'package:sosa/page_view_widget.dart';
import 'package:sosa/animated_icon_widget.dart';
import 'package:sosa/navigator_widget.dart';
import 'package:sosa/radial_sweep_gradient_widget.dart';
import 'package:sosa/stepper_widget.dart';
import 'package:sosa/choice_chip_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JAN ADRIAN SOSA CORDERO 1317',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('JAN ADRIAN SOSA CORDERO 1317'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'ScrollView'),
              Tab(text: 'PageView'),
              Tab(text: 'AnimatedIcon'),
              Tab(text: 'Navigator'),
              Tab(text: 'Gradients'),
              Tab(text: 'Stepper'),
              Tab(text: 'ChoiceChip'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MySingleChildScrollView(),
            MyPageView(),
            MyAnimatedIcon(),
            MyNavigator(),
            MyRadialNSeepGradient(),
            MyStepper(),
            MyChoiceChip(),
          ],
        ),
      ),
    );
  }
}
