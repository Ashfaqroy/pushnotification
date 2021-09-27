import 'package:get/state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignContrller extends GetxController {
  var googlesignin = GoogleSignIn();
  var googleacount = Rx<GoogleSignInAccount?>(null);
  login() async {
    googleacount.value = await googlesignin.signIn();
  }
}
