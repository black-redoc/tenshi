import 'package:flutter/material.dart';

class VeterinaryEnable extends StatefulWidget {
  const VeterinaryEnable({Key? key}) : super(key: key);

  @override
  State<VeterinaryEnable> createState() => _VeterinaryEnableState();
}

class _VeterinaryEnableState extends State<VeterinaryEnable> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.blue,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Text(
                "Seleccione veterinaria",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 28,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: const EdgeInsets.all(5),
                      child: Image.asset("assets/imagen 4.png")
                    );
                  },
                ),
              ),
            ]
          ),
        )
      )
    );
  }
}