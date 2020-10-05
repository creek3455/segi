import 'package:flutter/material.dart';
import 'package:sagi_a/models/user.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = User.demo();
    return Scaffold(
      //appBar: AppBar(
      //  title: Text(sabitler.titleHome),
      // ),
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 2.0,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Profiliniz",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              " " + user.ad + " " + user.soyad,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(width: 16),
                            Icon(
                              Icons.account_circle,
                              color: Colors.white,
                              size: 24,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(255, 95, 27, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: TextFormField(
                                      initialValue: user.ad,
                                      decoration: InputDecoration(
                                        suffixText: "isim",
                                        hintText: "İsim",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: TextFormField(
                                      initialValue: user.soyad,
                                      decoration: InputDecoration(
                                        suffixText: "soyisim",
                                        hintText: "Soyisim",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                              value: 1,
                                              // 103 varsayılan değer... ve değerleri jsondan alıp iterasyon yapıcaz.
                                              // tabii burası (form) stfl widget olacak sonradan.
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("Erkek"),
                                                  value: 1,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Kadın"),
                                                  value: 2,
                                                ),
                                              ],
                                              onChanged: (value) {
                                                print("Cinsiyet işlemleri");
                                              }),
                                        ),
                                        Text(
                                          "cinsiyet",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: TextFormField(
                                      initialValue: user.eposta,
                                      decoration: InputDecoration(
                                        suffixText: "e-posta",
                                        hintText: "E-Posta",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: TextFormField(
                                      initialValue: user.tel,
                                      decoration: InputDecoration(
                                        suffixText: "tel",
                                        hintText: "Telefon",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: TextFormField(
                                      obscureText: true,
                                      initialValue: user.pass,
                                      decoration: InputDecoration(
                                        suffixText: "şifre",
                                        hintText: "Şifre",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                              value: 103,
                                              // 103 varsayılan değer... ve değerleri jsondan alıp iterasyon yapıcaz.
                                              // tabii burası (form) stfl widget olacak sonradan.
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("Öğrenci"),
                                                  value: 103,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Öğretmen"),
                                                  value: 104,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Veli"),
                                                  value: 105,
                                                ),
                                              ],
                                              onChanged: (value) {
                                                print("okul işlemleri");
                                              }),
                                        ),
                                        Text(
                                          "rol",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                              value: 67,
                                              // 67 varsayılan değer... ve değerleri jsondan alıp iterasyon yapıcaz.
                                              // tabii burası (form) stfl widget olacak sonradan.
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("Samsun"),
                                                  value: 67,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Siirt"),
                                                  value: 68,
                                                ),
                                              ],
                                              onChanged: (value) {
                                                print("il işlemleri");
                                              }),
                                        ),
                                        Text(
                                          "il",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                              value: 85,
                                              // 85 varsayılan değer... ve değerleri jsondan alıp iterasyon yapıcaz.
                                              // tabii burası (form) stfl widget olacak sonradan.
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("Terme"),
                                                  value: 85,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Tekkeköy"),
                                                  value: 86,
                                                ),
                                              ],
                                              onChanged: (value) {
                                                print("ilçe işlemleri");
                                              }),
                                        ),
                                        Text(
                                          "ilçe",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                              value: 93,
                                              // 92 varsayılan değer... ve değerleri jsondan alıp iterasyon yapıcaz.
                                              // tabii burası (form) stfl widget olacak sonradan.
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text(
                                                      "Bülent Çavuşoğlu AL"),
                                                  value: 92,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Terme MTAL"),
                                                  value: 93,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Karadeniz MTAL"),
                                                  value: 94,
                                                ),
                                              ],
                                              onChanged: (value) {
                                                print("ilçe işlemleri");
                                              }),
                                        ),
                                        Text(
                                          "okul",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey[200],
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                              value: 9,
                                              // 92 varsayılan değer... ve değerleri jsondan alıp iterasyon yapıcaz.
                                              // tabii burası (form) stfl widget olacak sonradan.
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("9. Sınıf"),
                                                  value: 9,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("10. Sınıf"),
                                                  value: 10,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("11. Sınıf"),
                                                  value: 11,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("12. Sınıf"),
                                                  value: 12,
                                                ),
                                              ],
                                              onChanged: (value) {
                                                print("ilçe işlemleri");
                                              }),
                                        ),
                                        Text(
                                          "sınıf",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 40),
                            GestureDetector(
                              onTap: () {
                                debugPrint("GÜNCELLE");
                              },
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 70),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red,
                                ),
                                child: Center(
                                  child: Text(
                                    "Güncelle",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
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
