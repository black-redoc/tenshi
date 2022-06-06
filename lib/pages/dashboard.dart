import 'package:flutter/material.dart';
import 'package:tenshi/widgets/text_large.dart';
import 'package:tenshi/widgets/text_medium.dart';
import 'package:tenshi/widgets/text_small.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _header(),
          _banner(),
          _pets()
        ]
      ),
    );
  }

  Widget _pets() {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.all(3),
                padding: const EdgeInsets.all(5),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("assets/cat.png", width: 100),
                    const TextMediumWidget(
                      "Mishi1",
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),
                    const TextSmallWidget(
                      "1 year",
                      color: Colors.blue,
                    )
                  ]
                )
              ),
              Container(
                margin: const EdgeInsets.all(3),
                padding: const EdgeInsets.all(5),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("assets/cat.png", width: 100),
                    const TextMediumWidget(
                      "Mishi1",
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),
                    const TextSmallWidget(
                      "1 year",
                      color: Colors.blue
                    )
                  ]
                )
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.all(3),
                padding: const EdgeInsets.all(5),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("assets/cat.png", width: 100),
                    const TextMediumWidget(
                      "Mishi1",
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),
                    const TextSmallWidget(
                      "1 year",
                      color: Colors.blue,
                    )
                  ]
                )
              ),
              Container(
                margin: const EdgeInsets.all(3),
                padding: const EdgeInsets.all(5),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("assets/cat.png", width: 100),
                    const TextMediumWidget(
                      "Mishi1",
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),
                    const TextSmallWidget(
                      "1 year",
                      color: Colors.blue,
                    )
                  ]
                )
              )
            ],
          )
        ],
      )
    );
  }
  
  Widget _banner() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Image.asset("assets/banner_dashboard.png"),
    );
  }

  Widget _header() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: Colors.blue
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  TextLargeWidget(
                    "Dashboard",
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  Icon(Icons.access_alarms, color: Colors.white)
                ]
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.white
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    TextMediumWidget(
                      "Proximo examen:",
                      color: Colors.white,
                    ),
                    TextMediumWidget(
                      "15/Jun/2022",
                      color: Colors.white,
                    )
                  ]
                ),
                const SizedBox(width: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    TextMediumWidget(
                      "Proxima cita:",
                      color: Colors.white,
                    ),
                    TextMediumWidget(
                      "15/Jun/2022",
                      color: Colors.white,
                    )
                  ]
                ),
                const SizedBox(width: 1),
              ]
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.white
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: 10
              ),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const TextMediumWidget(
                    "Ultimos Resultados:",
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                  Row(
                    children: const <Widget>[
                      Icon(Icons.bloodtype, size: 15, color: Colors.blue),
                      SizedBox(width: 10),
                      TextSmallWidget(
                        "Ver resultados examen de sangre.",
                        color: Colors.blue,
                      )
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Icon(Icons.bloodtype, size: 15, color: Colors.blue),
                      SizedBox(width: 10),
                      TextSmallWidget(
                        "Ver resultados uroanalisis.",
                        color: Colors.blue,
                      )
                    ],
                  )
                ]
              ),
            )
          ]
        ),
      ),
    );
  }
}