import 'package:get/get.dart';

class home_controller extends GetxController {


  ///variational ///
  int counter= 0;

  ///function ////

void incremrnt(){

  counter++;

  ///method lisnner //

  update();

}


void dicremnt(){

  counter--;
  update();


}

}
