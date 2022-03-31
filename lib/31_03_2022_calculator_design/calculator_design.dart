import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorDesign extends StatefulWidget {
  CalculatorDesign({Key? key}) : super(key: key);

  @override
  State<CalculatorDesign> createState() => _CalculatorDesignState();
}

class _CalculatorDesignState extends State<CalculatorDesign> {
  @override
  String dispTxt = '0';

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.grey.shade700,
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    physics: const PageScrollPhysics(),
                    child: Text(
                      dispTxt,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(
                  btntxt: 'AC',
                  btncolors: Colors.grey,
                  txtcolors: Colors.black,
                ),
                calcButton(
                  btntxt: '+/-',
                  btncolors: Colors.grey,
                  txtcolors: Colors.black,
                ),
                calcButton(
                  btntxt: '%',
                  btncolors: Colors.grey,
                  txtcolors: Colors.black,
                ),
                calcButton(
                  btntxt: '/',
                  btncolors: Colors.amber.shade700,
                  txtcolors: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(
                  btntxt: '7',
                  btncolors: Colors.grey.shade800,
                  txtcolors: Colors.white,
                ),
                calcButton(
                  btntxt: '8',
                  btncolors: Colors.grey.shade800,
                  txtcolors: Colors.white,
                ),
                calcButton(
                  btntxt: '9',
                  btncolors: Colors.grey.shade800,
                  txtcolors: Colors.white,
                ),
                calcButton(
                  btntxt: 'x',
                  btncolors: Colors.amber.shade700,
                  txtcolors: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(
                  btntxt: '4',
                  btncolors: Colors.grey.shade800,
                  txtcolors: Colors.white,
                ),
                calcButton(
                  btntxt: '5',
                  btncolors: Colors.grey.shade800,
                  txtcolors: Colors.white,
                ),
                calcButton(
                  btntxt: '6',
                  btncolors: Colors.grey.shade800,
                  txtcolors: Colors.white,
                ),
                calcButton(
                  btntxt: '-',
                  btncolors: Colors.amber.shade700,
                  txtcolors: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(
                  btntxt: '1',
                  btncolors: Colors.grey.shade800,
                  txtcolors: Colors.white,
                ),
                calcButton(
                  btntxt: '2',
                  btncolors: Colors.grey.shade800,
                  txtcolors: Colors.white,
                ),
                calcButton(
                  btntxt: '3',
                  btncolors: Colors.grey.shade800,
                  txtcolors: Colors.white,
                ),
                calcButton(
                  btntxt: '+',
                  btncolors: Colors.amber.shade700,
                  txtcolors: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(
                  btntxt: '0',
                  btncolors: Colors.grey.shade800,
                  txtcolors: Colors.white,
                ),
                calcButton(
                  btntxt: '.',
                  btncolors: Colors.grey.shade800,
                  txtcolors: Colors.white,
                ),
                calcButton(
                  btntxt: 'Er',
                  btncolors: Colors.grey,
                  txtcolors: Colors.black,
                ),
                calcButton(
                  btntxt: '=',
                  btncolors: Colors.amber.shade700,
                  txtcolors: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ],
    );
  }

  Widget calcButton(
      {required String btntxt,
      required Color btncolors,
      required Color txtcolors}) {
    return Container(
      padding: EdgeInsets.all(2),
      width: 70,
      height: 70,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(7),
          backgroundColor: MaterialStateProperty.all(btncolors),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          shadowColor: MaterialStateProperty.all(Colors.black),
        ),
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 25,
            color: txtcolors,
          ),
        ),
        onPressed: () {
          MyCalculation(inputTxt: btntxt);
        },
      ),
    );
  }

  String finalResult = '0';
  String txt = '0';

  MyCalculation({required String inputTxt}) {
    setState(() {
      dispTxt = dispTxt + inputTxt.substring(0);
    });
  }
}
