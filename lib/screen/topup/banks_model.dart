import 'package:flutter/material.dart';

class PaymentMethodModel {
  final String? image;
  final String? title;
  final String? subtitle;
  final bool? checked;
  final String? nameid;

  PaymentMethodModel({
    this.image,
    this.title,
    this.subtitle,
    this.checked,
    this.nameid,
  });

  List<PaymentMethodModel> bankTransfer(String current) {
    return [
      PaymentMethodModel(
        checked: current == "america",
        image: "assets/america.jpg",
        subtitle: "**** **** **** 1278",
        title: "Bank of America",
        nameid: "america",
      ),
      PaymentMethodModel(
        checked: current == "usa",
        image: "assets/usa.jpg",
        subtitle: "**** **** **** 1990",
        title: "U.S.A Bank",
        nameid: "usa",
      ),
    ];
  }

  List<PaymentMethodModel> otherBanks(String current) {
    return [
      PaymentMethodModel(
          checked: current == "paypal",
          image: "assets/paypal.png",
          subtitle: "Easy Payment",
          title: "Paypal",
          nameid: "paypal"),
      PaymentMethodModel(
          checked: current == "google",
          image: "assets/google.png",
          subtitle: "Secure Payment",
          title: "Google Pay",
          nameid: "google"),
      PaymentMethodModel(
          checked: current == "apple",
          image: "assets/apple.png",
          subtitle: "Secure Payment",
          title: "Apple Pay",
          nameid: "apple"),
    ];
  }
}
