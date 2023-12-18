import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // ignore: non_constant_identifier_names
  String HairStyle = "";

  // ignore: non_constant_identifier_names
  bool HairCheck = false;
  bool HairCheck1 = false;
  bool HairCheck2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ประเภททรงผม"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          createManu("ทรง นักเรียน", "ทรง นักเรียน", "50 บาท"),
          createManu("รองทรง", "รองทรง", "50 บาท"),
          createManu("Comma hair (ทรงผมคอมม่า)", "Comma hair (ทรงผมคอมม่า)",
              "120 บาท"),
          createManu(
              "Two Block (ทรงทูบล็อก)", "Two Block (ทรงทูบล็อก)", "120 บาท"),
          createManu("French Crop (ทรงกะลาครอบ)", "French Crop (ทรงกะลาครอบ)",
              "120 บาท"),
          const Divider(),

          CheckboxListTile(
            activeColor: Colors.blue[200],
            controlAffinity: ListTileControlAffinity.leading,
              title: const Text("โกนหนวด +100"),
              value: HairCheck,
              onChanged: (value) {
                setState(() {
                  HairCheck = value!;
                });
              }),
              CheckboxListTile(
            activeColor: Colors.blue[200],
            controlAffinity: ListTileControlAffinity.leading,
              title: const Text("กันจอน +10"),
              value: HairCheck1,
              onChanged: (value) {
                setState(() {
                  HairCheck1 = value!;
                });
              }),
              CheckboxListTile(
            activeColor: Colors.blue[200],
            controlAffinity: ListTileControlAffinity.leading,
              title: const Text("สระผม +120"),
              value: HairCheck2,
              onChanged: (value) {
                setState(() {
                  HairCheck2 = value!;
                });
              })
          // RadioListTile(
          //   activeColor: Colors.black87,
          //   value: "ทรง นักเรียน",
          //   title: Text("ทรง นักเรียน"),
          //   subtitle: Text("40 บาท"),
          //   secondary: Icon(Icons.shopping_cart),
          //   groupValue: HairStyle,
          //   onChanged: (value) {
          //     setState(() {
          //       HairStyle = value!;
          //     });
          //     print(HairStyle);
          //   },
          // ),
          // RadioListTile(
          //   activeColor: Colors.black87,
          //   value: "รองทรง",
          //   title: Text("รองทรง"),
          //   subtitle: Text("50 บาท"),
          //   secondary: Icon(Icons.shopping_cart),
          //   groupValue: HairStyle,
          //   onChanged: (value) {
          //     setState(() {
          //       HairStyle = value!;
          //     });
          //     print(HairStyle);
          //   },
          // ),
          // RadioListTile(
          //   activeColor: Colors.black87,
          //   value: "ทรง Comma hair",
          //   title: Text("ทรง Comma hair"),
          //   subtitle: Text("120 บาท"),
          //   secondary: Icon(Icons.shopping_cart),
          //   groupValue: HairStyle,
          //   onChanged: (value) {
          //     setState(() {
          //       HairStyle = value!;
          //     });
          //     print(HairStyle);
          //   },
          // ),
          // RadioListTile(
          //   activeColor: Colors.black87,
          //   value: "ทรง Two Block",
          //   title: Text("ทรง Two Block"),
          //   subtitle: Text("120 บาท"),
          //   secondary: Icon(Icons.shopping_cart),
          //   groupValue: HairStyle,
          //   onChanged: (value) {
          //     setState(() {
          //       HairStyle = value!;
          //     });
          //     print(HairStyle);
          //   },
          // )
        ],
      ),
    );
  }

  RadioListTile<String> createManu(String val, String title, String subtitle) {
    return RadioListTile(
      activeColor: Colors.black87,
      value: val,
      title: Text(title),
      subtitle: Text(subtitle),
      secondary: const Icon(Icons.shopping_cart),
      groupValue: HairStyle,
      onChanged: (value) {
        setState(() {
          HairStyle = value!;
        });
        // print(HairStyle);
      },
    );
  }
}
