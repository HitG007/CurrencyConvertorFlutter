import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});

  @override
  State createState() => _CurrencyConvertorMaterialPageState();
}

class _CurrencyConvertorMaterialPageState extends State {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder
        // Color (0xAARRGGBB)
        (
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text("Currency Convertor"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                result != result.toInt() ? result.toStringAsFixed(2) : result.toStringAsFixed(0),
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(color: Colors.black, offset: Offset(1.5, 1.5))
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "Please Enter the amount in SGD",
                  hintStyle: TextStyle(color: Colors.black38),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black38,
                  filled: true,
                  fillColor: Colors.white30,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            // button
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: ElevatedButton(
                onPressed: () {
                  //print("Button Clicked");
                  // debugPrint("Button Clicked");
                  setState(() {
                    result = (double.parse(textEditingController.text) * 62);
                  });
                },
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(15),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  minimumSize: MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
