import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AmountPaidWidget extends StatefulWidget {
  const AmountPaidWidget({Key key}) : super(key: key);

  @override
  _AmountPaidWidgetState createState() => _AmountPaidWidgetState();
}

class _AmountPaidWidgetState extends State<AmountPaidWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        width: 240,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF052948),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$1,500',
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      fontSize: 40,
                    ),
              ),
              Text(
                'Amount Paid',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
