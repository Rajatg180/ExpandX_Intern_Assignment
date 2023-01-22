import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Models/model_class.dart';

class GraphWidget extends StatelessWidget {
  const GraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
            ChartData(2010, 35),
            ChartData(2011, 28),
            ChartData(2012, 34),
            ChartData(2013, 32),
            ChartData(2014, 40),
            ChartData(2015, 42),
            ChartData(2016, 45),
            ChartData(2017, 42),
            ChartData(2018, 35),
            ChartData(2019, 28),
            ChartData(2020, 34),
            ChartData(2021, 32),
            ChartData(2022, 40),
            ChartData(2023, 42),
            ChartData(2024, 45),
            ChartData(2025, 42),
        ];
        
    return Container(
      height: MediaQuery.of(context).size.height*0.47,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color.fromARGB(255, 222, 222, 222))
      ),
      child:  Column(
        children: [
          Container(
            margin: EdgeInsets.all(3),
            height: 350,
            child: SfCartesianChart(
              series: <ChartSeries>[
                  LineSeries<ChartData, int>(
                    dataSource: chartData,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y
                  ),
              ]
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Container(
                   width: 50,
                   height: 30,
                   decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 227, 242, 254)),
                    color: Color.fromARGB(255, 227, 242, 254),
                    borderRadius: BorderRadius.circular(20)
                   ),
                   child: Center(child: Text('6Y')),
                 ),
                 Container(
                   width: 50,
                   height: 30,
                   child: Center(child: Text('1Y')),
                 ),
                 Container(
                   width: 50,
                   height: 30,
                   child: Center(child: Text('3Y')),
                 ),
                 Container(
                   width: 50,
                   height: 30,
                   child: Center(child: Text('4Y')),
                 ), 
              ],
            ),
          ),
        ],
      )
    );
  }
}

class ChartData {
        ChartData(this.x, this.y);
        final int x;
        final double y;
}