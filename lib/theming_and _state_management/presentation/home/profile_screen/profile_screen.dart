import 'package:clean_architecture/theming_and%20_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: DeliveryColors.green,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      radius: 50,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Username',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      color: Theme.of(context).canvasColor,
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Personal Information',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 25),
                            Text(
                              'email@email.com',
                            ),
                            Row(
                              children: [
                                Text('Dark mode'),
                                Spacer(),
                                Switch(
                                  value: true,
                                  onChanged: (val) {},
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: DeliveryColors.purple,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Log Out',
                        style: TextStyle(color: DeliveryColors.white),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
