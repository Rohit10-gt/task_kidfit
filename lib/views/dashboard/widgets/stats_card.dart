import 'package:crxt_muse/views/dashboard/widgets/rounded_circular_progress_indicator.dart';
import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String change;
  final Color color;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.change,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final double changeValue = double.tryParse(change) ?? 0.0;
    final bool isIncrease = changeValue >= 0;

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
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: Transform(
                    transform: Matrix4.identity()..scale(1.0, -1.0),
                    alignment: Alignment.center,
                    child: RoundedCircularProgressIndicator(
                      value: double.parse(value) / 100,
                      color: color,
                    ),
                  ),
                ),
                Text(
                  value,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 25),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 18),
          ),
          Row(
            children: [
              Text(
                isIncrease ? 'Increase: ' : 'Decrease: ',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '$changeValue%',
                style: TextStyle(color: color),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
