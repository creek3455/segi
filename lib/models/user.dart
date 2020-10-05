import 'dart:convert';

class User {
  int id;
  String eposta;
  String pass;
  String tcno;
  String ad;
  String soyad;
  String tel;
  int il;
  int ilce;
  int rol;
  int brans;
  int sinif;
  int okulilce;
  int okul;
  int dogum;
  int cins;
  int egitici;
  int admin;
  int soruadmin;
  int onay;
  int kaydolma;
  int durum;

  User({
    this.id,
    this.eposta,
    this.pass,
    this.tcno,
    this.ad,
    this.soyad,
    this.tel,
    this.il,
    this.ilce,
    this.rol,
    this.brans,
    this.sinif,
    this.okulilce,
    this.okul,
    this.dogum,
    this.cins,
    this.egitici,
    this.admin,
    this.soruadmin,
    this.onay,
    this.kaydolma,
    this.durum,
  });

  User.demo({
    this.id = 1,
    this.eposta = "kemal@ercan.com",
    this.pass = "e10adc3949ba59abbe56e057f20f883e",
    this.tcno = "12008928088",
    this.ad = "Kemal",
    this.soyad = "ERCAN",
    this.tel = "05059200720",
    this.il = 67,
    this.ilce = 85,
    this.rol = 103,
    this.brans = 0,
    this.sinif = 5,
    this.okulilce = 85,
    this.okul = 92,
    this.dogum = 347922000,
    this.cins = 1,
    this.egitici = 0,
    this.admin = 90,
    this.soruadmin = 91,
    this.onay = 1,
    this.kaydolma = 1543928555,
    this.durum = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'eposta': eposta,
      'pass': pass,
      'tcno': tcno,
      'ad': ad,
      'soyad': soyad,
      'tel': tel,
      'il': il,
      'ilce': ilce,
      'rol': rol,
      'brans': brans,
      'sinif': sinif,
      'okulilce': okulilce,
      'okul': okul,
      'dogum': dogum,
      'cins': cins,
      'egitici': egitici,
      'admin': admin,
      'soruadmin': soruadmin,
      'onay': onay,
      'kaydolma': kaydolma,
      'durum': durum,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
      id: map['id'],
      eposta: map['eposta'],
      pass: map['pass'],
      tcno: map['tcno'],
      ad: map['ad'],
      soyad: map['soyad'],
      tel: map['tel'],
      il: map['il'],
      ilce: map['ilce'],
      rol: map['rol'],
      brans: map['brans'],
      sinif: map['sinif'],
      okulilce: map['okulilce'],
      okul: map['okul'],
      dogum: map['dogum'],
      cins: map['cins'],
      egitici: map['egitici'],
      admin: map['admin'],
      soruadmin: map['soruadmin'],
      onay: map['onay'],
      kaydolma: map['kaydolma'],
      durum: map['durum'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, eposta: $eposta, pass: $pass, tcno: $tcno, ad: $ad, '
        ' soyad: $soyad, tel: $tel, il: $il, ilce: $ilce, rol: $rol, brans: $brans, '
        ' sinif: $sinif, okulilce: $okulilce, okul: $okul, dogum: $dogum, cins: $cins, '
        ' egitici: $egitici, admin: $admin, soruadmin: $soruadmin, onay: $onay, '
        ' kaydolma: $kaydolma, durum: $durum)';
  }
}
