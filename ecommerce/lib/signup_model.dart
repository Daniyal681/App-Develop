import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
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
  // State field(s) for txtConfirmPassword widget.
  FocusNode? txtConfirmPasswordFocusNode;
  TextEditingController? txtConfirmPasswordController;
  late bool txtConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtConfirmPasswordControllerValidator;

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
    txtConfirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtUsernameFocusNode?.dispose();
    txtUsernameController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordController?.dispose();

    txtConfirmPasswordFocusNode?.dispose();
    txtConfirmPasswordController?.dispose();
  }
}
