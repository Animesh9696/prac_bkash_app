// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';


// class QrScannerScreen extends StatefulWidget {
//   const QrScannerScreen({ Key? key }) : super(key: key);

//   @override
//   _AppState createState() => _AppState();
// }

// class _AppState extends State<QrScannerScreen> {


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: MobileScanner(
//           allowDuplicates: false,
//           onDetect: (barcode, args) {
//             if (barcode.rawValue == null) {
//               debugPrint('Failed to scan Barcode');
//             } else {
//               final String code = barcode.rawValue!;
//               debugPrint('Barcode found! $code');
//             }
//           }),
//     );
//   }
// }