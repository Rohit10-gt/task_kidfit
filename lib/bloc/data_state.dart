import 'package:crxt_muse/models/dashboard_data_model.dart';

enum DashboardDataStatus { initial, fetching, fetched, error}

class DataState {
  final DashboardModel chartDataList;
  final DashboardDataStatus dashboardDataStatus;
  const DataState(
      {this.chartDataList = const DashboardModel(),
      this.dashboardDataStatus = DashboardDataStatus.initial});
  DataState copyWith(
      {DashboardModel? chartDataList,
      DashboardDataStatus? dashboardDataStatus}) {
    return DataState(
        chartDataList: chartDataList ?? this.chartDataList,
        dashboardDataStatus: dashboardDataStatus ?? this.dashboardDataStatus);
  }
}
