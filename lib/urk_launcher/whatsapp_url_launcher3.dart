import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';

class MyUrlLauncher3 extends StatefulWidget {
  const MyUrlLauncher3({Key? key}) : super(key: key);

  @override
  State<MyUrlLauncher3> createState() => _MyUrlLauncher3State();
}

class _MyUrlLauncher3State extends State<MyUrlLauncher3> {
  @override
  TextEditingController myName = TextEditingController();
  TextEditingController myNumber = TextEditingController();
  final _myGloblaKey = GlobalKey<FormState>();
  List<Map<String, String>> myData = [
    {"Name": "Home", "Phone": "+919724259878"}
  ];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: const Text('Contact List'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showOption();
          },
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
        body: ListView.builder(
            itemCount: myData.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${myData[index]['Name']}'),
                subtitle: Text('${myData[index]["Phone"]}'),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            callByWhatsApp(index);
                          },
                          icon: Image.asset('assets/images/whatsapp.png')),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            myData.removeAt(index);
                          });
                        },
                        icon: const Icon(
                          Icons.delete,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  showOption() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _myGloblaKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Enter Details',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: myName,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Name';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Robert Downy Junior',
                        labelText: "Enter Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 0,
                      left: 10,
                      right: 10,
                    ),
                    child: TextFormField(
                      controller: myNumber,
                      keyboardType: TextInputType.phone,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Mobile N0.';
                        } else if (value.length != 10) {
                          return 'Please Enter 10 Number only';
                        } else {
                          return null;
                        }
//                        if (value!.isEmpty) {}
                      },
                      decoration: InputDecoration(
                        prefix: const Text(
                          '+91',
                          style: TextStyle(
                            backgroundColor: Colors.black12,
                          ),
                        ),
                        hintText: '9727254585',
                        labelText: "Enter Mobile Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          '10 Digit only',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.orangeAccent),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                )),
                            onPressed: () {
                              // _myGloblaKey.currentState!.validate();
                              if (_myGloblaKey.currentState!.validate()) {
                                setState(() {
                                  myData.add({
                                    "Name": myName.text,
                                    "Phone": "91" + myNumber.text,
                                  });

                                  myName.text = '';
                                  myNumber.text = '';
                                });
                                Navigator.pop(context);
                              }
                            },
                            child: const Text('Save Contact')),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              myName.text = '';
                              myNumber.text = '';
                            });
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orangeAccent),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        });
  }

  callByWhatsApp(int callIndex) {
    FlutterLaunch.launchWhatsapp(
        phone: "${myData[callIndex]["Phone"]}", message: 'Hello Good Morning');
  }
}

class MyBodyDesign extends StatelessWidget {
  const MyBodyDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Hello');
  }
}
