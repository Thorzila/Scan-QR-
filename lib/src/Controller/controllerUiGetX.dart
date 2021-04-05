import 'package:get/get.dart';

class ControllerUi extends GetxController {
  
  var _index = 0;

  getIndex(){
    return _index;
  }

  setIndex(int i) {
    _index = i;
    update();
  }
}