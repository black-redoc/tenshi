import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  Widget btn({Widget? child, Function()? onPressed, Color? color, double? width}) {
    return Container(
      width: width,
      margin: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity, minHeight: 40),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              color!
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            )
          ),
          child: child,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.blue,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const Text(
                "Nueva Cita",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                )
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Selecciona una cita",
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      )
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: SfDateRangePicker(
                  showNavigationArrow: true,
                  minDate: DateTime.now(),
                  onSelectionChanged: _onSelectedDate,
                ),
              ),
              btn(
                child: const Text(
                  "Ver veterinarios disponibles",
                  style: TextStyle(color: Colors.blueGrey)
                ),
                onPressed: () {},
                color: Colors.white,
                width: 300
              )
            ]
          )
        )
      )
    );
  }

  void _onSelectedDate(DateRangePickerSelectionChangedArgs? args) {
    DateTime selected = args!.value;
    print("selected ${selected} 123");
  }
}