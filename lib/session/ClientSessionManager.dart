
import 'package:bookstore_thais/model/vo/home_item_vo.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class ClientSessionManager {
  var localCart = <HomeBookVO?>{};
}