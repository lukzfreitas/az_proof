import 'package:az_proof/app/data/models/order.dart';
import 'package:az_proof/app/data/models/response_dashboard.dart';
import 'package:az_proof/app/data/preferences/user_preferences.dart';
import 'package:az_proof/app/data/providers/dashboard_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final user = UserPreferences().obs;
  final userName = ''.obs;
  final orders = <Order>[].obs;  
  final averageTicket = 0.0.obs;
  final ordersTotal = 0.0.obs;
  final ordersCount = 0.obs;
  final salesTotal = 0.0.obs;
  final salesCount = 0.obs;

  void getDashboard() async {
    DashboardProvider dashboardProvider = DashboardProvider();
    ResponseDashboard? response = await dashboardProvider.getDashboard();
    if (response != null) {
      orders.value = response.orders!;
      averageTicket.value = response.average_ticket!;
      ordersTotal.value = response.orders_total!;
      ordersCount.value = response.orders_count!;
      salesTotal.value = response.sales_total!;
      salesCount.value = response.sales_count!;
    }
  }

  @override
  void onInit() async {
    await getName();
    getDashboard();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<void> getName() async {
    userName.value = await user.value.getName();
  }
}
