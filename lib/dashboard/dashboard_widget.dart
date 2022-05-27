import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
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
      appBar: AppBar(
        backgroundColor: Color(0xFF052948),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            scaffoldKey.currentState.openDrawer();
          },
          child: Icon(
            Icons.menu_rounded,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 26,
          ),
        ),
        title: Text(
          'Dashboaed',
          style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primaryBtnText,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Drawer(
          elevation: 0,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFF052948),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 50, 0, 3),
                  child: Text(
                    'All Day English',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 30, 0, 0),
                  child: ListTile(
                    title: Text(
                      'Dashoard',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 20,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                  ),
                ),
                Spacer(),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Logout',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50,
                    color: Color(0x58084478),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
