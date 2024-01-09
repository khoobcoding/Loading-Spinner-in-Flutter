import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Loading Spinner App',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SpinKitRotatingCircle(color: Colors.red,)
              // SpinKitWave(color: Colors.teal,)
              // SpinKitFoldingCube(color: Colors.indigo,
              // size: 100,duration: Durations.extralong4,)
              SpinKitThreeBounce(
                itemBuilder: (context, index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index.isEven ? Colors.red : Colors.teal),
                  );
                },
              )
              // SpinKitChasingDots(
              //   // color: Colors.blue,
              // itemBuilder: (context, index) {
              //   return DecoratedBox(decoration: BoxDecoration(color:
              //   index.isEven?Colors.red:Colors.teal ),);
              // },)
            ]),
      ),
    );
  }
}
