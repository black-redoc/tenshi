import 'package:flutter/material.dart';

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
    return Container(
      height: 200,
      color: Colors.blueGrey,
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
                    const Text(
                      "Mishi1",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      "1 year",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 8
                      ),
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
                    const Text(
                      "Mishi1",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      "1 year",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 8
                      ),
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
                    const Text(
                      "Mishi1",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      "1 year",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 8
                      ),
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
                    const Text(
                      "Mishi1",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      "1 year",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 8
                      ),
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
                  Text(
                    "Dashboard",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
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
                    Text(
                      "Proximo examen:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      )
                    ),
                    Text(
                      "15/Jun/2022",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      )
                    )
                  ]
                ),
                const SizedBox(width: 1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Proxima cita:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      )
                    ),
                    Text(
                      "15/Jun/2022",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      )
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
                  const Text(
                    "Ultimos Resultados:",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: const <Widget>[
                      Icon(Icons.bloodtype, size: 15, color: Colors.blue),
                      SizedBox(width: 10),
                      Text(
                        "Ver resultados examen de sangre.",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10
                        )
                      )
                    ],
                  ),
                  Row(
                    children: const <Widget>[
                      Icon(Icons.bloodtype, size: 15, color: Colors.blue),
                      SizedBox(width: 10),
                      Text(
                        "Ver resultados uroanalisis.",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10
                        )
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