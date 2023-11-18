import 'package:EMOOL/core/class/crud.dart';
import 'package:EMOOL/linkapi.dart';

class NotificationData {
  Crud crud;
  NotificationData(this.crud);
  getData( id) async {
    var response = await crud.postData(AppLink.notification, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}
