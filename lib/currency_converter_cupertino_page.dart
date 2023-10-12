//12:40:00 cupertino design

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 80;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey2,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text(
          'Currency Converter',
          style: TextStyle(fontSize: 25),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholder: 'Enter the amount in USD',
                  placeholderStyle: const TextStyle(color: Colors.black),
                  prefix: const Icon(
                    CupertinoIcons.money_dollar,
                    color: Colors.black,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text(
                  'Convert',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
