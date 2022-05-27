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
  TextEditingController adminLoginEmailController1;
  TextEditingController adminLoginPasswordController1;
  bool adminLoginPasswordVisibility1;
  TextEditingController teacherLoginEmailController1;
  TextEditingController teacherLoginPasswordController1;
  bool teacherLoginPasswordVisibility1;
  TextEditingController adminLoginEmailController2;
  TextEditingController adminLoginPasswordController2;
  bool adminLoginPasswordVisibility2;
  TextEditingController teacherLoginEmailController2;
  TextEditingController teacherLoginPasswordController2;
  bool teacherLoginPasswordVisibility2;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    adminLoginEmailController1 = TextEditingController();
    adminLoginPasswordController1 = TextEditingController();
    adminLoginPasswordVisibility1 = false;
    teacherLoginEmailController1 = TextEditingController();
    teacherLoginPasswordController1 = TextEditingController();
    teacherLoginPasswordVisibility1 = false;
    adminLoginEmailController2 = TextEditingController();
    adminLoginPasswordController2 = TextEditingController();
    adminLoginPasswordVisibility2 = false;
    teacherLoginEmailController2 = TextEditingController();
    teacherLoginPasswordController2 = TextEditingController();
    teacherLoginPasswordVisibility2 = false;
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Align(
                  alignment: AlignmentDirectional(0.2, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Text(
                              'All Day English',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
                                            key: formKey4,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(50, 30, 50, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 30, 0, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          adminLoginEmailController1,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Email Address',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF052948),
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        hintText:
                                                            'Email Address',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF052948),
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x80052948),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x80052948),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    20, 20, 20),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Color(
                                                                    0xFF052948),
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                      keyboardType:
                                                          TextInputType
                                                              .emailAddress,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 30, 0, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          adminLoginPasswordController1,
                                                      obscureText:
                                                          !adminLoginPasswordVisibility1,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Password',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF052948),
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        hintText: 'Password',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF052948),
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x80052948),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x80052948),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    20, 20, 20),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                            () => adminLoginPasswordVisibility1 =
                                                                !adminLoginPasswordVisibility1,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            adminLoginPasswordVisibility1
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: Color(
                                                                0xFF052948),
                                                            size: 22,
                                                          ),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Color(
                                                                    0xFF052948),
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      keyboardType:
                                                          TextInputType
                                                              .visiblePassword,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 25, 0, 0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        final user =
                                                            await signInWithEmail(
                                                          context,
                                                          adminLoginEmailController1
                                                              .text,
                                                          adminLoginPasswordController1
                                                              .text,
                                                        );
                                                        if (user == null) {
                                                          return;
                                                        }

                                                        await Navigator
                                                            .pushAndRemoveUntil(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                DashboardWidget(),
                                                          ),
                                                          (r) => false,
                                                        );
                                                      },
                                                      text: 'Login',
                                                      options: FFButtonOptions(
                                                        width: 200,
                                                        height: 60,
                                                        color:
                                                            Color(0xFF052948),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        elevation: 3,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
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
                                            key: formKey3,
                                            autovalidateMode:
                                                AutovalidateMode.disabled,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(50, 30, 50, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 30, 0, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          teacherLoginEmailController1,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Email Address',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF052948),
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        hintText:
                                                            'Email Address',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF052948),
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x80052948),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x80052948),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    20, 20, 20),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Color(
                                                                    0xFF052948),
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                      keyboardType:
                                                          TextInputType
                                                              .emailAddress,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 30, 0, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          teacherLoginPasswordController1,
                                                      obscureText:
                                                          !teacherLoginPasswordVisibility1,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Password',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF052948),
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        hintText: 'Password',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF052948),
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x80052948),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x80052948),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(20,
                                                                    20, 20, 20),
                                                        suffixIcon: InkWell(
                                                          onTap: () => setState(
                                                            () => teacherLoginPasswordVisibility1 =
                                                                !teacherLoginPasswordVisibility1,
                                                          ),
                                                          focusNode: FocusNode(
                                                              skipTraversal:
                                                                  true),
                                                          child: Icon(
                                                            teacherLoginPasswordVisibility1
                                                                ? Icons
                                                                    .visibility_outlined
                                                                : Icons
                                                                    .visibility_off_outlined,
                                                            color: Color(
                                                                0xFF052948),
                                                            size: 22,
                                                          ),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Color(
                                                                    0xFF052948),
                                                                fontSize: 22,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      keyboardType:
                                                          TextInputType
                                                              .visiblePassword,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 25, 0, 0),
                                                    child: FFButtonWidget(
                                                      onPressed: () {
                                                        print(
                                                            'TLoginBtn pressed ...');
                                                      },
                                                      text: 'Login',
                                                      options: FFButtonOptions(
                                                        width: 200,
                                                        height: 60,
                                                        color:
                                                            Color(0xFF052948),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        elevation: 3,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
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
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 550,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Text(
                          'All Day English',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF052948),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
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
                                                  0, 30, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 30, 0, 0),
                                                child: TextFormField(
                                                  controller:
                                                      adminLoginEmailController2,
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
                                                      adminLoginPasswordController2,
                                                  obscureText:
                                                      !adminLoginPasswordVisibility2,
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
                                                        () => adminLoginPasswordVisibility2 =
                                                            !adminLoginPasswordVisibility2,
                                                      ),
                                                      focusNode: FocusNode(
                                                          skipTraversal: true),
                                                      child: Icon(
                                                        adminLoginPasswordVisibility2
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
                                                    if ((adminLoginEmailController2
                                                            .text) ==
                                                        'william@alldayenglish.academy') {
                                                      final user =
                                                          await signInWithEmail(
                                                        context,
                                                        adminLoginEmailController2
                                                            .text,
                                                        adminLoginPasswordController2
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
                                                  0, 30, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 30, 0, 0),
                                                child: TextFormField(
                                                  controller:
                                                      teacherLoginEmailController2,
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
                                                      teacherLoginPasswordController2,
                                                  obscureText:
                                                      !teacherLoginPasswordVisibility2,
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
                                                        () => teacherLoginPasswordVisibility2 =
                                                            !teacherLoginPasswordVisibility2,
                                                      ),
                                                      focusNode: FocusNode(
                                                          skipTraversal: true),
                                                      child: Icon(
                                                        teacherLoginPasswordVisibility2
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
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
