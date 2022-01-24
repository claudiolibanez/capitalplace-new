import 'package:capitalplace/app/core/constants/app_constants.dart';
import 'package:capitalplace/app/core/widgets/icon_button_widget.dart';
import 'package:capitalplace/app/modules/start/submodules/home/presenter/widgets/card_balance_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// store
import 'package:capitalplace/app/modules/start/submodules/home/presenter/stores/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  List<Color> borderColors = [
    AppColorConstants.primary,
  ];

  List<Color> colors = [
    const Color(0xFF97F4FF),
  ];

  List completeData = [];
  List<FlSpot> chartData = [
    FlSpot(0.0, 1.0),
    FlSpot(2.0, 4.0),
    FlSpot(3.0, 3.0),
    FlSpot(4.0, 6.0),
    FlSpot(5.0, 5.0),
    FlSpot(6.0, 7.0),
    FlSpot(7.0, 9.0),
    FlSpot(8.0, 7.0),
    FlSpot(9.0, 8.0),
  ];

  FlTitlesData get titlesData1 => FlTitlesData(
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(showTitles: false),
        leftTitles: leftTitles(
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return '4k';
              case 4:
                return '6k';
              case 6:
                return '8k';
              case 8:
                return '10k';
            }
            return '';
          },
        ),
      );

  SideTitles leftTitles({required GetTitleFunction getTitles}) => SideTitles(
        getTitles: getTitles,
        showTitles: true,
        margin: 8,
        interval: 1,
        reservedSize: 40,
        getTextStyles: (context, value) => const TextStyle(
          color: Color(0xff75729e),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      );

  double maxX = 0;
  double maxY = 0;
  double minX = 0;
  double minY = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bom dia",
                    style: AppTypographyConstants.body.copyWith(
                      color: AppColorConstants.white,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "AUGUSTO",
                    style: AppTypographyConstants.heading.copyWith(
                      color: AppColorConstants.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: AppColorConstants.white,
                      size: 28.0,
                    ),
                  ),
                  const SizedBox(
                    width: 2.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                      color: AppColorConstants.white,
                      size: 28.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        titleSpacing: 0.0,
        backgroundColor: AppColorConstants.primary,
        toolbarHeight: 100.0,
        elevation: 0.0,
      ),
      body: SizedBox(
        child: Stack(
          children: [
            SizedBox(
              child: SizedBox(
                child: ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    color: AppColorConstants.primary,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  const CardBalanceWidget(
                    balance: "21.870",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 18.0,
                      horizontal: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Conferir Investimentos",
                          style: AppTypographyConstants.body,
                        ),
                        Text(
                          "Ver Mais",
                          style: AppTypographyConstants.body.copyWith(
                            color: AppColorConstants.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rentabilidade",
                              style: AppTypographyConstants.body.copyWith(
                                fontSize: 18.0,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "+73.28 (0.62%)",
                                  style: AppTypographyConstants.body.copyWith(
                                    color:
                                        AppColorConstants.text.withOpacity(0.7),
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_drop_up,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 200.0,
                          child: LineChart(
                            LineChartData(
                              gridData: FlGridData(show: false),
                              titlesData: titlesData1,
                              borderData: FlBorderData(
                                border: const Border(
                                  bottom: BorderSide(
                                    color: AppColorConstants.border,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              minX: 0,
                              maxY: 10,
                              minY: 0,
                              maxX: 10,
                              lineBarsData: [
                                LineChartBarData(
                                    spots: chartData,
                                    colors: borderColors,
                                    barWidth: 2,
                                    isCurved: false,
                                    dotData: FlDotData(show: false),
                                    belowBarData: BarAreaData(
                                      show: true,
                                      colors: colors
                                          .map((color) =>
                                              color.withOpacity(0.15))
                                          .toList(),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: AppColorConstants.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: AppColorConstants.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alocação",
                          style: AppTypographyConstants.body,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: 94.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFCE00),
                                      borderRadius: BorderRadius.circular(
                                        12.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Tesouro D.",
                                    style: AppTypographyConstants.body,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: 94.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF17A0B0),
                                      borderRadius: BorderRadius.circular(
                                        12.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Renda Fixa",
                                    style: AppTypographyConstants.body,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: 94.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF1D5464),
                                      borderRadius: BorderRadius.circular(
                                        12.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Ações",
                                    style: AppTypographyConstants.body,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
