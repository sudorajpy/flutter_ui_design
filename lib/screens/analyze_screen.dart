import 'package:flutter/material.dart';
import 'package:flutter_ui_design/components/transaction_section.dart';
import 'package:flutter_ui_design/constants/colors.dart';
import 'package:flutter_ui_design/model/chart_data.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../components/navbar_widget.dart';
import '../constants/temp_data.dart';

class AnalyzeScreen extends StatefulWidget {
  const AnalyzeScreen({super.key});

  @override
  State<AnalyzeScreen> createState() => _AnalyzeScreenState();
}

class _AnalyzeScreenState extends State<AnalyzeScreen> {
  TempData transactionData = TempData();
  late List<ChartData> data;

  @override
  void initState() {
    super.initState();
    data = [
      ChartData(17, 2000),
      ChartData(18, 2001),
      ChartData(19, 2002),
      ChartData(20, 2002),
      ChartData(21, 2003),
      ChartData(22, 2004),
      ChartData(23, 2005),
      ChartData(24, 2006),
    ];

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text('Analyze Screen',
            style: TextStyle(color: ktextColor, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: ktextColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  Text(
                    'Oct-Feb',
                    style: TextStyle(
                      color: ktextColor,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: ktextColor,
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 230,
              
                child: SfCartesianChart(
                  margin: const EdgeInsets.all(0),
                  borderWidth: 0,
                  borderColor: Colors.transparent,
                  plotAreaBorderWidth: 0,
                  primaryXAxis: NumericAxis(
                    isVisible: false,
                  minimum: 17,
                  maximum: 24,
                  interval: 1,
                  borderWidth: 0,
                  borderColor: Colors.transparent,
                  
                  ),
                  primaryYAxis: NumericAxis(
                    isVisible: false,
                    minimum: 2000,
                    maximum: 2006,
                    interval: 1,
                    borderWidth: 0,
                  borderColor: Colors.transparent,
                  ),
                  series: <ChartSeries<ChartData,double>>[
                    SplineAreaSeries(dataSource: data, xValueMapper: (ChartData data, _) => data.value, yValueMapper: (ChartData data, _) => data.year, gradient: LinearGradient(colors: [
                      kGardient3,
                      kGardient1,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topRight,
                    ),
                    splineType: SplineType.natural
                    ),
                    SplineSeries(dataSource: data, xValueMapper: (ChartData data, _) => data.value, yValueMapper: (ChartData data, _) => data.year)
                  ]
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '\$ 1,000,000',
                style: TextStyle(
                    color: ktextColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              TransactionSection(transactionData: transactionData)
            ],
          )),
      bottomNavigationBar: Container(
        color: kBackgroundColor,
        child:NavBarWid(),
      ),
    );
  }
}
