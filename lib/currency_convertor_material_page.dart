
import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});

  @override
  State<CurrencyConvertorMaterialPage> createState() =>
  _CurrencyConvertorMaterialPageState();
     
}

class _CurrencyConvertorMaterialPageState 
    extends State<CurrencyConvertorMaterialPage> {
    double result=0;
    @override
    void initState() {
      super.initState();
      print('rebuilt');
    }
  final TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    print('rebuilt');
  const border = OutlineInputBorder(
                   borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  );

    return Scaffold(
       backgroundColor: Colors.blueGrey,
       appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title:const Text(
          'Currency Convertor',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
       ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PKR $result',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ), 
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20, bottom: 10, top: 10),
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    hintText: 'Enter the amount in USD',
                    hintStyle: TextStyle(
                      color: Colors.black
                    ),
                    prefixIcon: Icon(Icons.monetization_on_outlined ),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,  
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20, bottom: 10),
                child: ElevatedButton(
                  
                  onPressed: (){
                    setState(() {
                      result = double.parse(textEditingController.text) * 280;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Convert',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ), 
      );
  }
}

