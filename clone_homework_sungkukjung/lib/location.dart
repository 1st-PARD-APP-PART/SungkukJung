// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 24.0, top: 10.0, bottom: 7.0),
                child: Text(
                  "근처 동네",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              for (int i = 0; i < 12; i++)
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 27.0),
                        child: Text(
                          "경상북도 포항시 북구 흥해읍 한동로 558",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      Divider(color: Colors.black),
                    ],
                  ),
                ),
            ],
          ),
        ));
  }
}
