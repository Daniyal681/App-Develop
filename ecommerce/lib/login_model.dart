import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtUsername widget.
  FocusNode? txtUsernameFocusNode;
  TextEditingController? txtUsernameController;
  String? Function(BuildContext, String?)? txtUsernameControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordControllerValidator;

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtUsernameFocusNode?.dispose();
    txtUsernameController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordController?.dispose();
  }
}
