import 'package:clean_architecture/theming_and%20_state_management/presentation/home/home.dart';
import 'package:clean_architecture/theming_and%20_state_management/presentation/theme.dart';
import 'package:clean_architecture/theming_and%20_state_management/presentation/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(builder: (context, constraints) {
              print(constraints);
              return Stack(
                children: [
                  //check it out moreeee
                  Positioned(
                    bottom: 40.0,
                    height: size.width / 2,
                    left: -25,
                    right: -25,
                    child: Container(
                      //styling the continer
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(size.width / 2),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: deliveryGredients,
                            stops: [
                              0.2,
                              1.0,
                            ]),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).canvasColor,
                      radius: 40.0,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'JK',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).accentColor,
                                  ),
                        ),
                      ),
                    ),
                  )
                ],
              );
            }),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .inputDecorationTheme
                                .labelStyle
                                ?.color,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 50),
                    Text(
                      'Username',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).accentColor,
                          ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          hintText: 'username'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Password',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.caption!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).accentColor,
                          ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          hintText: 'password'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          DeliveryButton(
            text: 'Login',
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          )
        ],
      ),
    );
  }
}
