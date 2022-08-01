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
  final allOrders = <OrderModel>[].obs;
  final hashMapOrder = Map().obs;
  final averageTicket = 0.0.obs;
  final ordersTotal = 0.0.obs;
  final ordersCount = 0.obs;
  final salesTotal = 0.0.obs;
  final salesCount = 0.obs;
  final totalPages = 1.obs;
  final pagesItem = <Item>[].obs;
  final pageCurrent = 1.obs;
  final rowsPerPage = 6.obs;
  final totalRows = 0.obs;
  final lastPage = 0.obs;

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
      allOrders.value = response.orders!;
      lastPage.value = _lastPage();
      orders.value = _createListOrders();
      pagesItem.value = _createListPageItem();
    }
  }

  void changePage(int page) {
    pageCurrent.value = page;
    pagesItem.value = _changeStatePageItem(pageCurrent.value - 1);
    List<OrderModel> list = hashMapOrder[page - 1];
    orders.value = list;
  }

  void nextPage() {
    if (pageCurrent.value == lastPage.value) return;
    pageCurrent.value = pageCurrent.value + 1;
    orders.value = hashMapOrder[pageCurrent.value - 1];
    pagesItem.value = _changeStatePageItem(pageCurrent.value - 1);
  }

  void prevPage() {
    if (pageCurrent.value == 1) return;
    pageCurrent.value = pageCurrent.value - 1;
    orders.value = hashMapOrder[pageCurrent.value - 1];
    pagesItem.value = _changeStatePageItem(pageCurrent.value - 1);
  }

  void goToLastPage() {
    pageCurrent.value = lastPage.value;
    orders.value = hashMapOrder[pageCurrent.value - 1];
    pagesItem.value = _changeStatePageItem(pageCurrent.value - 1);
  }

  void goToFirstPage() {
    pageCurrent.value = 1;
    orders.value = hashMapOrder[pageCurrent.value - 1];
    pagesItem.value = _changeStatePageItem(pageCurrent.value - 1);
  }

  void changeRowsPerPage(int rows) {
    rowsPerPage.value = rows;
    orders.value = _changeRows();
    pagesItem.value = _createListPageItem();
  }

  List<OrderModel> _changeRows() {
    int page = 0;
    int start = 0;
    int size = 0;
    Map<int, List<OrderModel>> hashMap = Map();
    lastPage.value = _lastPage();    
    while (page < lastPage.value) {
      start = page * rowsPerPage.value;
      size = start + rowsPerPage.value;
      if (size > allOrders.length) {
        size = allOrders.length;
        pageCurrent.value = 1;
      }
      hashMap[page] = allOrders.getRange(start, size).toList();
      page++;
    }
    hashMapOrder.value = hashMap;
    totalPages.value = hashMapOrder.length;
    return hashMapOrder[pageCurrent.value - 1];
  }

  List<OrderModel> _createListOrders() {
    int page = 0;
    int start = 0;
    int size = 0;
    Map<int, List<OrderModel>> hashMap = Map();
    while (page < lastPage.value - 1) {
      start = page * rowsPerPage.value;
      size = start + rowsPerPage.value;
      hashMap[page] = allOrders.getRange(start, size).toList();
      page++;
    }
    hashMap[page] = allOrders.getRange(size, totalRows.value).toList();
    hashMapOrder.value = hashMap;
    totalPages.value = hashMapOrder.length;
    return hashMapOrder[pageCurrent.value - 1];
  }

  List<Item> _changeStatePageItem(int index) {
    List<Item> items = [];
    pagesItem.asMap().forEach((key, value) {
      value.actived = (index == key);
      items.add(value);
    });
    return items;
  }

  List<Item> _createListPageItem() {
    int pageCount = 1;
    List<Item> items = [];
    while (pageCount <= lastPage.value) {
      items
          .add(Item(value: pageCount, actived: pageCount == pageCurrent.value));
      pageCount++;
    }
    return items;
  }

  int _lastPage() {
    int last = (totalRows.value ~/ rowsPerPage.value);
    if (last == 0) {
      return 1;
    }
    if (totalRows.value % rowsPerPage.value > 0) {
      return last + 1;
    }    
    return last;
  }
}
