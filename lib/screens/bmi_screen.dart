import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: const Icon(Icons.),
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // backgroundColor: const Color.fromARGB(248, 104, 206, 199),
        title: const Text(
          'Your BMI',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        // color: const Color.fromARGB(248, 104, 206, 199),
        child: Center(
          child: Container(
            // color: Colors.black26,
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BMI ',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: wtController,
                  decoration: const InputDecoration(
                    label: Text('Enter Your Weight (in Kgs)'),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ftController,
                  decoration: const InputDecoration(
                    label: Text('Enter Your Height (in Feet)'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: inController,
                  decoration: const InputDecoration(
                    label: Text('Enter Your Height (in inch)'),
                    prefixIcon: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  // backgr,
                  //  style: color:Colors.black,
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = ftController.text.toString();
                    var inch = inController.text.toString();

                    if (wt != "" && ft != "" && inch != "") {
                      //BMI calculation

                      var iWt = int.parse(wt);
                      var iFt = int.parse(ft);
                      var iInch = int.parse(inch);

                      var tInch = (iFt * 12) + iInch;
                      var tCm = tInch * 2.54;
                      var tM = tCm / 100;

                      var bmi = iWt / (tM * tM);

                      setState(() {
                        result = "Your BMI is : ${bmi.toStringAsFixed(2)}";
                      });
                    } else {
                      setState(() {
                        result = "Please Fill All The Required Blanks !!";
                      });
                    }
                  },
                  child: const Text('Calculate'),
                ),
                Text(
                  '$result',
                  style: const TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
