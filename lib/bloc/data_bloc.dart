import 'dart:convert';
import 'package:crxt_muse/models/dashboard_data_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data_event.dart';
import 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc() : super(const DataState()) {
    on<FetchDashboardDataEvent>(fetchDashboardData);
  }

  fetchDashboardData(FetchDashboardDataEvent event, Emitter<DataState> emit) async {
    emit(state.copyWith(dashboardDataStatus: DashboardDataStatus.fetching));
    try {
      final String response = await rootBundle.loadString('assets/json/fast_data.json');
      final data = jsonDecode(response);
      DashboardModel dashboardData = DashboardModel.fromJson(data);
      emit(state.copyWith(chartDataList: dashboardData, dashboardDataStatus: DashboardDataStatus.fetched));
    } catch (error) {
      emit(state.copyWith(dashboardDataStatus: DashboardDataStatus.error));
    }
  }

}
