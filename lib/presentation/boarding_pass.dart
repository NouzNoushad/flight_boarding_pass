import 'package:boarding_pass/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class FlightBoardingPass extends StatelessWidget {
  const FlightBoardingPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColor.lightColor,
                    radius: 25,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ),
                  Text(
                    'Boarding Pass',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.backgroundColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ]),
          ),
          Expanded(
              flex: 12,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  color: AppColor.backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Stack(children: [
                    Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                const Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          'Emirates',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: timeLocation(
                                            CrossAxisAlignment.start,
                                            '12:30 AM',
                                            'DHK',
                                            'Dhaka'),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: CustomPaint(
                                          painter: DotterCurve(),
                                          child: SizedBox(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Transform(
                                              transform:
                                                  Matrix4.translationValues(
                                                      0, 10, 0),
                                              child: const RotatedBox(
                                                quarterTurns: 1,
                                                child: Icon(Icons.flight,
                                                    size: 30,
                                                    color:
                                                        AppColor.primaryColor),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: timeLocation(
                                            CrossAxisAlignment.end,
                                            '11:30 AM',
                                            'OTW',
                                            'Ottawa'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          flightDetails(
                                              CrossAxisAlignment.start,
                                              'Passenger',
                                              'Adman'),
                                          flightDetails(
                                              CrossAxisAlignment.center,
                                              'Class seat',
                                              'ECMO'),
                                          flightDetails(CrossAxisAlignment.end,
                                              'Weight', '30KG'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          flightDetails(
                                              CrossAxisAlignment.start,
                                              'Gate',
                                              'A15'),
                                          flightDetails(
                                              CrossAxisAlignment.center,
                                              'Seat',
                                              '20CA'),
                                          flightDetails(CrossAxisAlignment.end,
                                              'FlightNo', 'DS8A'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Image.asset('assets/barcode.png')),
                            ],
                          ),
                        ),
                      ],
                    ),
                    CustomPaint(
                      painter: DottedLine(),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height / 3.8,
                      left: MediaQuery.of(context).size.width / 2.7,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColor.primaryColor,
                        ),
                        child: const Text('20h 20m',
                            style: TextStyle(
                              color: AppColor.backgroundColor,
                            )),
                      ),
                    ),
                  ]),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: const BoxDecoration(
                  color: AppColor.secondaryColor,
                  borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
                ),
                padding: const EdgeInsets.all(2),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColor.primaryColor,
                        child: Icon(Icons.keyboard_double_arrow_right,
                            color: AppColor.lightColor)),
                    Text(
                      'Download Ticket',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    SizedBox(width: 30),
                  ],
                ),
              )),
        ]),
      ),
    );
  }

  Widget timeLocation(CrossAxisAlignment axis, String time, String short,
          String location) =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: axis,
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColor.primaryColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              short,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: AppColor.primaryColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              location,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColor.primaryColor,
              ),
            ),
          ],
        ),
      );

  Widget flightDetails(
          CrossAxisAlignment axis, String subtitle, String title) =>
      Expanded(
        child: Column(crossAxisAlignment: axis, children: [
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor.primaryColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColor.primaryColor,
            ),
          ),
        ]),
      );
}

class DotterCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var h = size.height;
    var w = size.width;

    var sp = Offset(10, h - 50);
    var cp1 = Offset(w / 5, h / 15);
    var cp2 = Offset(4 * w / 5, h / 15);
    var ep = Offset(w - 10, h - 50);

    var path = Path();
    path.moveTo(sp.dx, sp.dy);
    path.cubicTo(cp1.dx, cp1.dy, cp2.dx, cp2.dy, ep.dx, ep.dy);
    var curvePath = dashPath(path, dashArray: CircularIntervalList([4, 5]));
    canvas.drawPath(
        curvePath,
        Paint()
          ..color = AppColor.primaryColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.5);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class DottedLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 3;
    double dashSpace = 4;
    double startX = 0;

    final paint = Paint()
      ..color = AppColor.primaryColor
      ..strokeWidth = 1;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, size.height / 2.5),
          Offset(startX + dashWidth, size.height / 2.5), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
