import 'package:flutter/material.dart';
import 'package:sosa/post_1.dart';
import 'package:sosa/post_2.dart';
import 'package:sosa/post_3.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({Key? key}) : super(key: key); // Eliminar 'const' de aquí

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PageView')),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );
  }
}
