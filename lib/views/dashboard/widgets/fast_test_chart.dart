import 'package:crxt_muse/constants/colors.dart';
import 'package:crxt_muse/models/dashboard_data_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FastTestChart extends StatelessWidget {
  final ChartData chartData;
  const FastTestChart({super.key, required this.chartData});

  @override
  Widget build(BuildContext context) {
    final List<DataPoint> greenDataSource = chartData.greenData;
    final List<DataPoint> orangeDataSource = chartData.orangeData;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "F.A.S.T Test",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                      color: AppColors.primaryGreen,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Strength',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Row(
                children: [
                  Container(
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                      color: AppColors.primaryOrange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Stamina',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            height: 160,
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                majorGridLines: const MajorGridLines(width: 0),
                axisLine: const AxisLine(width: 0),
                majorTickLines: const MajorTickLines(size: 0),
                labelStyle: Theme.of(context).textTheme.bodySmall,
                interval: 3,
                labelPlacement: LabelPlacement.onTicks,
              ),
              primaryYAxis: const NumericAxis(
                isVisible: false,
              ),
              borderWidth: 0,
              plotAreaBorderWidth: 0,
              series: <CartesianSeries>[
                LineSeries<DataPoint, String>(
                  color: AppColors.primaryGreen,
                  dataSource: greenDataSource,
                  xValueMapper: (DataPoint data, _) => data.x,
                  yValueMapper: (DataPoint data, _) => data.y,
                ),
                LineSeries<DataPoint, String>(
                  color: AppColors.primaryOrange,
                  dataSource: orangeDataSource,
                  xValueMapper: (DataPoint data, _) => data.x,
                  yValueMapper: (DataPoint data, _) => data.y,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
