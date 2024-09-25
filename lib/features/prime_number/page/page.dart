import 'package:flutter/material.dart';
import 'package:prime_number/core/context/text_styles.dart';

class PrimeNumberPage extends StatefulWidget {
  @override
  _PrimeNumberPageState createState() => _PrimeNumberPageState();
}

class _PrimeNumberPageState extends State<PrimeNumberPage> {
  List<int> primeNumbers = [];

  @override
  void initState() {
    super.initState();
    findPrimeNumbers();
  }

  bool isPrime(int num) {
    if (num < 2) return false;
    for (int i = 2; i <= num ~/ 2; i++) {
      if (num % i == 0) return false;
    }
    return true;
  }

  void findPrimeNumbers() {
    for (int i = 2; i < 100; i++) {
      if (isPrime(i)) {
        primeNumbers.add(i);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prime Numbers Less Than 100'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: primeNumbers
              .asMap()
              .entries
              .map(
                (entry) => Text(
                  entry.key == primeNumbers.length - 1
                      ? '${entry.value}' // Số cuối không cần dấu ','
                      : '${entry.value},',
                  style: AppTextStyle.content(context),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
