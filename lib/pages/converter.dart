import 'package:flutter/cupertino.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => CurrencyConverterState();
}

class CurrencyConverterState extends State<CurrencyConverter> {
  final TextEditingController _currencyInput = TextEditingController();
  String result = '00';
  double _convertedCurrency = 0;
  void _incrementCounter() {
    _convertedCurrency = ((double.parse(_currencyInput.text)) / 83.42);
    result = _convertedCurrency.toStringAsFixed(2);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
 
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("Currency Converter from INR to USD"),
              const SizedBox(height: 120),
              Text(
                result,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(169, 252, 252, 252),
                  fontSize: 64,
                ),
              ),
              const SizedBox(height: 32),
              CupertinoTextField(
                placeholderStyle: const TextStyle(fontSize: 16),
                placeholder: 'Value in rupees',
                controller: _currencyInput,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 32),
              CupertinoButton.filled(
                onPressed: _incrementCounter,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.money_dollar_circle_fill),
                    SizedBox(width: 4),
                    Text("Convert to USD"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
