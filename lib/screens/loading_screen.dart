import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double yarisi = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      //appBar: AppBar(
      //  title: Text(sabitler.titleHome),
      // ),
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1.0,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.red.shade900,
                    Colors.red.shade800,
                    Colors.red.shade700,
                    Colors.red.shade600,
                    Colors.red.shade500,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 140,
                  ),
                  Image(
                    image: AssetImage('images/logo1.png'),
                    width: yarisi,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "SAMSUN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0),
                  ),
                  Text(
                    "İL MİLLİ EĞİTİM MÜDÜRLÜĞÜ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "SEGİ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3),
                  ),
                  SizedBox(height: 160),
                  Text(
                    "v 1.0",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
