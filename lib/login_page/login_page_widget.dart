import '../auth/auth_util.dart';
import '../dashboard/dashboard_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  TextEditingController adminLoginEmailController;
  TextEditingController adminLoginPasswordController;
  bool adminLoginPasswordVisibility;
  TextEditingController teacherLoginEmailController;
  TextEditingController teacherLoginPasswordController;
  bool teacherLoginPasswordVisibility;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    adminLoginEmailController = TextEditingController();
    adminLoginPasswordController = TextEditingController();
    adminLoginPasswordVisibility = false;
    teacherLoginEmailController = TextEditingController();
    teacherLoginPasswordController = TextEditingController();
    teacherLoginPasswordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/background-big-home.png',
              ).image,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(300, 0, 0, 0),
                child: Container(
                  width: 530,
                  height: 642,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Text(
                          'All Day English',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF052948),
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                          child: DefaultTabController(
                            length: 2,
                            initialIndex: 0,
                            child: Column(
                              children: [
                                TabBar(
                                  labelColor: Color(0xFF052948),
                                  unselectedLabelColor: Color(0xFF052948),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  indicatorColor: Color(0xFF052948),
                                  indicatorWeight: 2,
                                  tabs: [
                                    Tab(
                                      text: 'Admin',
                                    ),
                                    Tab(
                                      text: 'Teacher',
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      Form(
                                        key: formKey2,
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  50, 30, 50, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 30, 0, 0),
                                                child: TextFormField(
                                                  controller:
                                                      adminLoginEmailController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Email Address',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF052948),
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    hintText: 'Email Address',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF052948),
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x80052948),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x80052948),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 20, 20, 20),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF052948),
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 30, 0, 0),
                                                child: TextFormField(
                                                  controller:
                                                      adminLoginPasswordController,
                                                  obscureText:
                                                      !adminLoginPasswordVisibility,
                                                  decoration: InputDecoration(
                                                    labelText: 'Password',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF052948),
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    hintText: 'Password',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF052948),
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x80052948),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x80052948),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 20, 20, 20),
                                                    suffixIcon: InkWell(
                                                      onTap: () => setState(
                                                        () => adminLoginPasswordVisibility =
                                                            !adminLoginPasswordVisibility,
                                                      ),
                                                      focusNode: FocusNode(
                                                          skipTraversal: true),
                                                      child: Icon(
                                                        adminLoginPasswordVisibility
                                                            ? Icons
                                                                .visibility_outlined
                                                            : Icons
                                                                .visibility_off_outlined,
                                                        color:
                                                            Color(0xFF052948),
                                                        size: 22,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF052948),
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  textAlign: TextAlign.start,
                                                  keyboardType: TextInputType
                                                      .visiblePassword,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 25, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    Future Function()
                                                        _navigate = () async {};
                                                    if ((adminLoginEmailController
                                                            .text) ==
                                                        'william@alldayenglish.academy') {
                                                      final user =
                                                          await signInWithEmail(
                                                        context,
                                                        adminLoginEmailController
                                                            .text,
                                                        adminLoginPasswordController
                                                            .text,
                                                      );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      _navigate = () =>
                                                          Navigator
                                                              .pushAndRemoveUntil(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  DashboardWidget(),
                                                            ),
                                                            (r) => false,
                                                          );
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'You are not admin!!!'),
                                                            content: Text(
                                                                'This login form is for only admin'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child: Text(
                                                                    'Nevermind'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }

                                                    await _navigate();
                                                  },
                                                  text: 'Login',
                                                  options: FFButtonOptions(
                                                    width: 200,
                                                    height: 60,
                                                    color: Color(0xFF052948),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0,
                                                    ),
                                                    borderRadius: 5,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Form(
                                        key: formKey1,
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  50, 30, 50, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 30, 0, 0),
                                                child: TextFormField(
                                                  controller:
                                                      teacherLoginEmailController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Email Address',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF052948),
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    hintText: 'Email Address',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF052948),
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x80052948),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x80052948),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 20, 20, 20),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF052948),
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 30, 0, 0),
                                                child: TextFormField(
                                                  controller:
                                                      teacherLoginPasswordController,
                                                  obscureText:
                                                      !teacherLoginPasswordVisibility,
                                                  decoration: InputDecoration(
                                                    labelText: 'Password',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF052948),
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    hintText: 'Password',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF052948),
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x80052948),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x80052948),
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 20, 20, 20),
                                                    suffixIcon: InkWell(
                                                      onTap: () => setState(
                                                        () => teacherLoginPasswordVisibility =
                                                            !teacherLoginPasswordVisibility,
                                                      ),
                                                      focusNode: FocusNode(
                                                          skipTraversal: true),
                                                      child: Icon(
                                                        teacherLoginPasswordVisibility
                                                            ? Icons
                                                                .visibility_outlined
                                                            : Icons
                                                                .visibility_off_outlined,
                                                        color:
                                                            Color(0xFF052948),
                                                        size: 22,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF052948),
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  textAlign: TextAlign.start,
                                                  keyboardType: TextInputType
                                                      .visiblePassword,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 25, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    print(
                                                        'TLoginBtn pressed ...');
                                                  },
                                                  text: 'Login',
                                                  options: FFButtonOptions(
                                                    width: 200,
                                                    height: 60,
                                                    color: Color(0xFF052948),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.white,
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 0,
                                                    ),
                                                    borderRadius: 5,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
