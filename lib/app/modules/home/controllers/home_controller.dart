import 'package:az_proof/app/data/models/order_model.dart';
import 'package:az_proof/app/data/models/response_dashboard_model.dart';
import 'package:az_proof/app/data/preferences/user_preferences.dart';
import 'package:az_proof/app/data/providers/dashboard_provider.dart';
import 'package:az_proof/app/widgets/pagination/pagination.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final user = UserPreferences().obs;
  final userName = ''.obs;
  final orders = <OrderModel>[].obs;
  final averageTicket = 0.0.obs;
  final ordersTotal = 0.0.obs;
  final ordersCount = 0.obs;
  final salesTotal = 0.0.obs;
  final salesCount = 0.obs;
  final totalPages = 1.obs;
  final pagesItem = <Item>[].obs;
  final pageCurrent = 1.obs;
  final rowPerPage = 6.obs;
  final totalRows = 0.obs;

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

  void getDashboard() async {
    DashboardProvider dashboardProvider = DashboardProvider();
    ResponseDashboardModel? response = await dashboardProvider.getDashboard();
    if (response != null) {
      averageTicket.value = response.average_ticket!;
      ordersTotal.value = response.orders_total!;
      ordersCount.value = response.orders_count!;
      salesTotal.value = response.sales_total!;
      salesCount.value = response.sales_count!;
      totalRows.value = response.total!;
      totalPages.value = totalRows.value ~/ rowPerPage.value;
      orders.value = _createListOrders(response.orders!);
      pagesItem.value = _createListPageItem();
    }
  }

  List<OrderModel> _createListOrders(List<OrderModel> orders) {
    List<OrderModel> ordersAux = [];
    orders.asMap().entries.forEach((element) {
      if (element.key < rowPerPage.value) {
        ordersAux.add(element.value);
      }
    });
    return ordersAux;
  }

  List<Item> _createListPageItem() {
    int pageCount = 1;
    List<Item> items = [];
    while (pageCount <= totalPages.value) {
      items
          .add(Item(value: pageCount, actived: pageCount == pageCurrent.value));
      pageCount++;
    }
    return items;
  }

  void changePage(int page) {
    pageCurrent.value = page;
    pagesItem.value = _createListPageItem();
  }

  void nextPage() {
    if (pageCurrent.value == totalPages.value) return;
    pageCurrent.value = pageCurrent.value + 1;
    pagesItem.value = _createListPageItem();
  }

  void prevPage() {
    if (pageCurrent.value == 1) return;
    pageCurrent.value = pageCurrent.value - 1;
    pagesItem.value = _createListPageItem();
  }

  void goToLastPage() {
    pageCurrent.value = totalPages.value;
    pagesItem.value = _createListPageItem();
  }

  void goToFirstPage() {
    pageCurrent.value = 1;
    pagesItem.value = _createListPageItem();
  }
}
