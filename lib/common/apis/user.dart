import 'package:flutter_learn_news/common/entity/entity.dart';
import 'package:flutter_learn_news/common/utils/utils.dart';

/// 用户
class UserAPI {
  /// 登录
  static Future<UserLoginResponseEntity> login({UserLoginRequestEntity params}) async {
    var response = await HttpUtil().post('/user/login', params: params);
    return UserLoginResponseEntity.fromJson(response);
  }
}
