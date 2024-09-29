import 'package:crxt_muse/constants/colors.dart';
import 'package:crxt_muse/views/dashboard/widgets/fast_test_chart.dart';
import 'package:crxt_muse/views/dashboard/widgets/stats_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../bloc/data_bloc.dart';
import '../../bloc/data_event.dart';
import '../../bloc/data_state.dart';
import '../../models/dashboard_data_model.dart';
import '../../shared/widget/app_logo.dart';
import '../../shared/widget/menu_button.dart';
import '../profile/widgets/level_card.dart';

class DashboardForeground extends StatefulWidget {
  const DashboardForeground({super.key});

  @override
  State<DashboardForeground> createState() => _DashboardForegroundState();
}

class _DashboardForegroundState extends State<DashboardForeground> {
  @override
  void initState() {
    context.read<DataBloc>().add(FetchDashboardDataEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataBloc, DataState>(
      builder: (context, state) {
        ChartData chartData = state.chartDataList.chartData;
        Strength strength = state.chartDataList.strength;
        Stamina stamina = state.chartDataList.stamina;
        Level level = state.chartDataList.level;
        DashboardDataStatus dataStatus = state.dashboardDataStatus;
        bool skeleton = (dataStatus == DashboardDataStatus.fetching);

        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Skeletonizer(
                enabled: skeleton,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [AppLogo(fontColor: Colors.white), MenuButton()],
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: StatCard(
                                  title: "Strength",
                                  value: strength.value.toString(),
                                  change: strength.percentage.toString(),
                                  color: AppColors.primaryGreen,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: StatCard(
                                  title: "Stamina",
                                  value: stamina.value.toString(),
                                  change: stamina.percentage.toString(),
                                  color: AppColors.primaryOrange,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 35),
                          SizedBox(
                            height: screenHeight * 0.3,
                            child: FastTestChart(chartData: chartData),
                          ),
                          const SizedBox(height: 35),
                          LevelCard(
                            currentXP: level.currentXP,
                            maxXP: level.requiredXP,
                            level: level.currentLevel.toString(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
