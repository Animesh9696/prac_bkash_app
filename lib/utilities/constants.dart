import 'package:flutter/material.dart';
import 'package:prac_bkash_app/models/MoreService.dart';
import 'package:prac_bkash_app/models/MyBkashModel.dart';
import 'package:prac_bkash_app/models/OfferModel.dart';

import '../models/Menu.dart';
import '../models/SuggestionModel.dart';

//Color Section

//rgba(226,19,110,255)
const primaryColor1 = Colors.pink;
const primaryColor2 = Color.fromARGB(255, 226, 19, 110);
const secondaryColor = Colors.grey;

/// for text Color

const primaryTextColor = Colors.black54;
const secondaryTextColor = Color.fromARGB(255, 124, 123, 123);

//String Section

const appName = "Bkash";

//avatar image url

const avatarImage =
    "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50";

//sample images

const sampleImage = "assets/images/cash_out.jpg";
const sampleImagepng = "assets/images/fly.png";
const bannerImage = "assets/images/banner.jpg";

//sample Data array section

List<MyBkashModel> mykashsampleList = [
  MyBkashModel("Priyo Number", "assets/images/mobile_recharge.jpg"),
  MyBkashModel("Saved Bill", "assets/images/pay_bill.jpg"),
  MyBkashModel("01780469421", "assets/images/mobile_recharge.jpg"),
  MyBkashModel("01780469421", "assets/images/mobile_recharge.jpg"),
  MyBkashModel("01780469421", "assets/images/mobile_recharge.jpg"),
  MyBkashModel("01780469421", "assets/images/mobile_recharge.jpg"),
  MyBkashModel("01780469421", "assets/images/mobile_recharge.jpg"),
  MyBkashModel("01780469421", "assets/images/mobile_recharge.jpg"),
  MyBkashModel("01780469421", "assets/images/mobile_recharge.jpg"),
  MyBkashModel("01780469421", "assets/images/mobile_recharge.jpg"),
];

List<SuggestionModel> suggestionsampleList = [
  SuggestionModel("Daraz", "assets/images/daraz.jpg"),
  SuggestionModel("Donation", "assets/images/donation.jpg"),
  SuggestionModel("BTCL", "assets/images/btcl.jpg"),
  SuggestionModel("Color Fly", "assets/images/flyover_toll.jpg"),
  SuggestionModel("Flyover Toll", "assets/images/flyover_toll.jpg"),
  SuggestionModel("Donation", "assets/images/donation.jpg"),
  SuggestionModel("BTCL", "assets/images/btcl.jpg"),
  SuggestionModel("Color Fly", "assets/images/flyover_toll.jpg"),
  SuggestionModel("Donation", "assets/images/donation.jpg"),
  SuggestionModel("BTCL", "assets/images/btcl.jpg"),
  SuggestionModel("Color Fly", "assets/images/flyover_toll.jpg"),
];

List<OfferModel> offersampleList = [
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/shadhin_music.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/grameenphone.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/metlife.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/robi.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/tickets.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/grameenphone.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/metlife.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/robi.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/tickets.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/grameenphone.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/metlife.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/robi.jpg"),
  OfferModel("Up to 150", "Ekushy Boi Mela", "assets/images/tickets.jpg"),
];

//for more service

List<MoreService> moreservcieSample = [
  MoreService("Tickets", "assets/images/tickets.jpg"),
  MoreService("Grameen", "assets/images/grameenphone.jpg"),
  MoreService("Donation", "assets/images/donation.jpg"),
  MoreService("Daraz", "assets/images/daraz.jpg"),
  MoreService("Metlife", "assets/images/metlife.jpg"),
  MoreService("Shopping", "assets/images/ajkerdeal.jpg"),
];

//for menu

List<MenuModel> menuSample = [
  MenuModel("Send Money", "assets/images/send_money.jpg"),
  MenuModel("Recharge", "assets/images/mobile_recharge.jpg"),
  MenuModel("Cash Out", "assets/images/cash_out.jpg"),
  MenuModel("Payment", "assets/images/make_payment.jpg"),
  MenuModel("Add Money", "assets/images/add_money.jpg"),
  MenuModel("Pay Bill", "assets/images/pay_bill.jpg"),
  MenuModel("Cash Out", "assets/images/cash_out.jpg"),
  MenuModel("Payment", "assets/images/make_payment.jpg"),
  MenuModel("Add Money", "assets/images/add_money.jpg"),
  MenuModel("Cash Out", "assets/images/cash_out.jpg"),
  MenuModel("Met Life", "assets/images/metlife.jpg"),
  MenuModel("More", "assets/images/more.jpg"),
];

//sample image array section

List<String> sampleimageList = [
  sampleImage,
  sampleImage,
  sampleImage,
  sampleImage,
  sampleImage,
  sampleImage,
  sampleImage,
  sampleImage,
  sampleImage,
  sampleImage,
  sampleImage,
  sampleImage,
];
