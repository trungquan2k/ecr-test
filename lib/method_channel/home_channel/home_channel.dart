import 'package:flutter/services.dart';

class HomeChannel {
  static const MethodChannel _methodChannel = MethodChannel("HomePlugin");

    /// 
  static Future<String?> getListUser()
    async
    {
        return _methodChannel.invokeMethod('GetListUser');
    }
  
}