import 'package:clean_architecture/theming_and%20_state_management/presentation/login/login_screen.dart';
import 'package:clean_architecture/theming_and%20_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              DeliveryColors.green,
              DeliveryColors.purple,
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: DeliveryColors.white,
              radius: 40,
              child: Text('JK'),
            ),
            SizedBox(height: 15),
            Text('Joseph Kennedy',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: DeliveryColors.white,
                      fontWeight: FontWeight.bold,
                    ))
          ],
        ),
      ),
    );
  }
}
