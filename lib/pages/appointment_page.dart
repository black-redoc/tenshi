import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:tenshi/widgets/floating_button.dart';
import 'package:tenshi/widgets/text_large.dart';
import 'package:tenshi/widgets/text_medium.dart';
import 'package:tenshi/widgets/text_small.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
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
              const TextLargeWidget(
                "Nueva Cita",
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    TextMediumWidget(
                      "Selecciona una cita",
                      color: Colors.white,
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
              FloatingButtonWidget(
                onPressed: () {},
                backgroundColor: Colors.white,
                width: 300,
                child: const TextSmallWidget(
                  "Ver veterinarios disponibles",
                  color: Colors.black
                ),
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