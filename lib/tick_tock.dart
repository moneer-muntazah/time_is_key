import 'package:flutter/material.dart';
import 'package:ntp/ntp.dart';

class TickTock extends StatelessWidget {

  void foo() async {
    DateTime _myTime;
    DateTime _wrongTime;

    _wrongTime = DateTime.now();
    _myTime = await NTP.now();

    print("wrong time");
    print(_wrongTime);
    print("real time");
    print(_myTime);

    DateTime startDate = new DateTime.now().toUtc();
    int offset = await NTP.getNtpOffset(localTime: startDate);
    print("really real time");
    print(startDate.add(Duration(milliseconds: offset) + Duration(hours: 3)));

  }
  @override
  Widget build(BuildContext context) {
    foo();
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}

