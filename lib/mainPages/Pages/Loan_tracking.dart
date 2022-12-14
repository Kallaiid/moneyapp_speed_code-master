import 'package:flutter/material.dart';
import 'package:vertical_stepper/vertical_stepper.dart';
import 'package:vertical_stepper/vertical_stepper.dart' as step;
import 'package:lottie/lottie.dart';



class loantracking extends StatefulWidget {
  const loantracking({Key? key}) : super(key: key);

  @override
  _loantrackingState createState() => _loantrackingState();
}

class _loantrackingState extends State<loantracking> with TickerProviderStateMixin {
  bool result = false;
  List<step.Step> steps = [
    step.Step(
      shimmer: false,
      title: "Loan Request Placed",
      iconStyle: Colors.green,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("2021/5/20 7:00 AM Request Created !!"),
        ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "Loan Evaluation",
      iconStyle: Colors.green,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("2021/5/20 9:35 AM Credit Score Assessment !!"),
        ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "Loan Granted",
      iconStyle: Colors.green,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("2021/5/20 2:35 PM Funds Issue In Progress!!"),
        ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "Funds Sent",
      iconStyle: Colors.green,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("2021/5/20 3:00 AM Funds Sent to Customer !!"),
        ),
      ),
    ),
    step.Step(
      shimmer: false,
      title: "Funds Recieved",
      iconStyle: Colors.blue,
      content: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text("2021/5/20 11:35 AM Funds Reached Destination Account !!"),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          height: 300,
          color: Colors.green,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                children: [
                  Image.network(
                    "https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqazZxZkZuLUE0RkY2ZkFnNVc5cGYtc2V3dTBjUXxBQ3Jtc0ttVnhhcVNLcW92RVRXeG9WTnVEWXE3N0NlZzdkWUx1bEhfQmZnNWpjckdUYXZRQy1FOGJLcENFdWlsemJCZTBsSGxoU0VqMThobERUaGM5SzBNUFVHTzZlZHlPejZRUS15Xy10UFlocmxaSW9Cb0hqbw&q=https%3A%2F%2Fencrypted-tbn0.gstatic.com%2Fimages%3Fq%3Dtbn%3AANd9GcT6Yc_N3xC9akfMD4yRs9kwCBKoaRrie9z-Rg%26usqp%3DCAU&v=pKl4QxefSwM",
                  height: 200,
                  ),
                  Text(
                    "Loan Tracker",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
          ),
        ),
        body()
      ],
    );
  }

  Widget body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Text(
            "Tracking Number :",
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 310,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "e.g #12371236874"),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    result = true;
                  });
                },
                child: Icon(
                  Icons.search,
                  size: 35,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        result
        ?Padding(
          padding: const EdgeInsets.fromLTRB(35, 2, 31, 0),
          child: Row(
            children: [
              Text(
                "Results :",
                style: TextStyle(fontSize: 25),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  setState((){
                    result=false;
                  });
                },
                child: Icon(
                  Icons.close,
                  size: 25,
                ),
              )
            ],
          ),
        )
            : SizedBox(),
        SizedBox(
          height: 5,
        ),
        result
            ? Padding(
          padding: const EdgeInsets.fromLTRB(15, 2, 15, 0),
          child: VerticalStepper(
            steps: steps,
            dashLength: 2,
          ),
        )
            : Transform(
          transform: Matrix4.translationValues(0, -50, 0),
          child: Lottie.network(
              "https://assets2.lottiefiles.com/packages/lf20_t24pvcu.json"),
        )
      ],
    );
  }
}




