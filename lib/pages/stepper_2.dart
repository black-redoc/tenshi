import 'package:flutter/material.dart';

class Stepper2 extends StatefulWidget {
  const Stepper2({Key? key}) : super(key: key);

  @override
  State<Stepper2> createState() => _Stepper2State();
}

class _Stepper2State extends State<Stepper2> {
  Widget textField({label, isNumber}) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          label: Text("$label"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
      ),
    );
  }

  Widget btn({child, onPressed, color, width, height}) {
    return SizedBox(
      width: width,
      height: height,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity, minHeight: 40),
        child: ElevatedButton(
          child: child,
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              color
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            )
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10),
              Center(child: textField(label: "Nombre", isNumber: false)),
              const SizedBox(height: 10),
              textField(label: "Edad", isNumber: true),
              const SizedBox(height: 10),
              btn(
                color: Colors.white,
                child: Image.asset("assets/upimage.png"),
                onPressed: _upImage,
                width: 60.0,
                height: 60.0
              ),
              const Text("Subir foto"),
              const SizedBox(height: 10),
              btn(
                color: Colors.blue,
                child: const Icon(Icons.arrow_forward_ios_outlined),
                onPressed: () {},
                width: 100.0,
                height: 40.0
              ),
              const SizedBox(height: 10),
              Center(
                child: AspectRatio(
                  aspectRatio: 487 / 400,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        alignment: FractionalOffset.center,
                        image: AssetImage("assets/cat2.png")
                      )
                    ),
                  )
                ),
              )
            ],
          )
        )
      )
    );
  }

  void _upImage() {
    print("uploading image");
  }
}