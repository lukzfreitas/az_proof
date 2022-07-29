import 'package:az_proof/app/data/models/order.dart';
import 'package:az_proof/app/data/models/response_dashboard.dart';
import 'package:az_proof/app/data/providers/dashboard_provider.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final orders = <Order>[].obs;
  final averageTicket = 0.0.obs;
  final ordersTotal = 0.0.obs;
  final ordersCount = 0.obs;
  final salesTotal = 0.0.obs;
  final salesCount = 0.obs;

  DashboardProvider dashboardProvider;

  DashboardController(this.dashboardProvider);

  void dashboardController() async {
    ResponseDashboard? response = await dashboardProvider.getDashboard();
    if (response != null) {
      averageTicket.value = response.average_ticket!;
      ordersTotal.value = response.orders_total!;
      ordersCount.value = response.orders_count!;
      salesTotal.value = response.sales_total!;
      salesCount.value = response.sales_count!;
    }
  }

  // String get error => dashboardProvider.error;
}
