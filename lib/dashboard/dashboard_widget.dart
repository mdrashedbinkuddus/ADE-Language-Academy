import '../components/amount_paid_widget.dart';
import '../components/cutome_card_widget.dart';
import '../components/invoice_due_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: !(isWeb)
          ? AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryColor,
              automaticallyImplyLeading: false,
              leading: InkWell(
                onTap: () async {
                  scaffoldKey.currentState.openDrawer();
                },
                child: Icon(
                  Icons.menu_rounded,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 28,
                ),
              ),
              title: Text(
                'Dashboard',
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 0,
            )
          : null,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (isWeb ?? true)
                  Container(
                    width: 280,
                    decoration: BoxDecoration(
                      color: Color(0xFF052948),
                    ),
                  ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 220,
                            decoration: BoxDecoration(),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      50, 50, 50, 50),
                                  child: CutomeCardWidget(),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 50, 50, 50),
                                  child: AmountPaidWidget(),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 50, 0, 50),
                                  child: InvoiceDueWidget(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
