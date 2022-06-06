import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tenshi/widgets/floating_button.dart';
import 'package:tenshi/widgets/text_field.dart';
import 'package:tenshi/widgets/text_medium.dart';

class Stepper2 extends StatefulWidget {
  const Stepper2({Key? key}) : super(key: key);

  @override
  State<Stepper2> createState() => _Stepper2State();
}

class _Stepper2State extends State<Stepper2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10),
              const Center(child: TextFieldWidget(label: "Nombre", isNumber: false)),
              const SizedBox(height: 10),
              const TextFieldWidget(label: "Edad", isNumber: true),
              const SizedBox(height: 10),
              FloatingButtonWidget(
                backgroundColor: Colors.white,
                onPressed: _upImage,
                width: 60.0,
                height: 60.0,
                child: Image.asset("assets/upimage.png"),
              ),
              const TextMediumWidget("Subir foto"),
              const SizedBox(height: 10),
              FloatingButtonWidget(
                backgroundColor: Colors.blue,
                onPressed: () {},
                width: 100.0,
                height: 40.0,
                child: const Icon(Icons.arrow_forward_ios_outlined),
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

  void  _upImage() async {
    final _picker = ImagePicker();
    final image = await _picker.pickImage(
      source: ImageSource.gallery
    );
    print("uploading image");
  }
}