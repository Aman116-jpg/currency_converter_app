
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {

   double result = 0;
   final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context){


    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );


    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(''
            'Currency converter',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color:Colors.white,
          ),
        ),
        centerTitle: true,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                fontSize: 70,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                keyboardType:const  TextInputType.numberWithOptions(decimal: true,
                ), // only numeric numbers are allowed not alphabets
                decoration: InputDecoration(
                  hintText: 'please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    result = double.parse(textEditingController.text)*74;
                    setState(() {  // it builds the build function again
                    });
                  },
                  style:  TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50), // Set minimum size
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text('Convert')  // child and onPressed are required property
              ),
            ),

          ],
        ),
      ),
    );
  }
}


