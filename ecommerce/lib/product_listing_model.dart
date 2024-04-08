import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'product_listing_widget.dart' show ProductListingWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductListingModel extends FlutterFlowModel<ProductListingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
