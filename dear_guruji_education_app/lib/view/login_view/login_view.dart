import 'package:dear_guruji_education_app/view/login_view/registration_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../components/back_button.dart';
import '../../components/default_button.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_font_size.dart';
import '../../resourse/routes/routes_name.dart';
import '../../utils/app_utils.dart';
import '../../view_model/login_viewModel/login_view_model.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;
  final loginVM=Get.put(Login_viewModel());

  final _formKey=GlobalKey<FormState>();

  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    //_passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    //Size size=MediaQuery.of(context).size;

    Size size = Get.size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                 // height: size.height*0.4,
                  child: Image.asset(
                    "assets/images/background_curve.jpg",
                    fit: BoxFit.cover,
                  )),

             Padding(
               padding: const EdgeInsets.only(top: 300.0),
               child: Container(
                 width: double.infinity,
                 height: double.infinity,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(
                     topRight: Radius.circular(25),
                     topLeft: Radius.circular(25)
                   )
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text(
                       "Welcome Back",
                       style: TextStyle(
                           fontSize: 35.0,
                           fontWeight: FontWeight.bold,
                           color: AllColors.primaryColor,
                           fontFamily: 'Ageo Persona'),
                     ),
                     SizedBox(
                       height: 0,
                     ),
                     Text("Login to your account",
                         style: GoogleFonts.roboto(
                             fontSize: 12.0,
                             fontWeight: FontWeight.bold,
                             color: Colors.blueGrey,
                             fontStyle: FontStyle.normal)),

                     SizedBox(
                       height: 25,
                     ),

                 Form(
                   key: _formKey,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                     child: Column(
                       children: [
                         TextFormField(
                           controller: loginVM.emailController.value,
                           focusNode: loginVM.emailFocusNode.value,
                           cursorColor: AllColors.primaryDark1,
                           validator: (value){
                             if (value!.isEmpty) {
                               return "Email can't be blank";
                             }
                             return null;
                           },

                           onChanged: (value) {
                             // Clear the error when the user enters a value
                             if (value.isNotEmpty) {
                               _formKey.currentState?.validate();
                             }
                           },
                           onFieldSubmitted: (value){
                             Utils.fieldFocusChange(context, loginVM.emailFocusNode.value, loginVM.passFocusNode.value);
                           },


                           decoration: InputDecoration(
                             focusColor: Colors.black,
                             contentPadding: EdgeInsets.symmetric(vertical:AllFontSize.ten,horizontal: AllFontSize.ten),
                             hintText: "Enter your email",
                             labelText: 'Email',
                             hintStyle: TextStyle(color: AllColors.primaryDark1),
                             labelStyle: TextStyle(color: AllColors.primaryDark1),
                             suffix: Icon(
                               Icons.person,
                               color: AllColors.primaryDark1,
                               size: AllFontSize.eighteen,
                             ),
                             //floatingLabelBehavior: FloatingLabelBehavior.always,
                             // Add a clear icon if needed
                             filled: true,
                             fillColor: Colors.grey[50],
                             // Light gray background

                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(8.0),
                               borderSide: BorderSide.none,
                             ),
                           ),


                         ),
                         SizedBox(height: 20), // Add spacing between text fields
                         TextFormField(
                           controller: loginVM.passController.value,
                           obscureText: !_isPasswordVisible,
                           cursorColor: AllColors.primaryDark1,
                           obscuringCharacter: "*",
                           validator: (value){
                             if (value!.isEmpty) {
                               return "Password can't be blank";
                             }
                             return null;
                           },

                           onChanged: (value) {
                             // Clear the error when the user enters a value
                             if (value.isNotEmpty) {
                               _formKey.currentState?.validate();
                             }
                           },

                           onFieldSubmitted: (value){
                             Utils.fieldFocusChange(context, loginVM.passFocusNode.value, loginVM.emailFocusNode.value);
                           },// Password field
                           decoration: InputDecoration(
                             contentPadding: EdgeInsets.symmetric(vertical:AllFontSize.ten,horizontal: AllFontSize.ten),
                             hintText: "Enter your password",
                             labelText: 'Password',
                             hintStyle: TextStyle(color: AllColors.primaryDark1),
                             labelStyle: TextStyle(color: AllColors.primaryDark1),
                             /*suffix: Icon(
                               _isPasswordVisible ? Icons.visibility
                                   : Icons.visibility_off, Icons.lock,
                               color: AllColors.primaryDark1,
                               size: AllFontSize.eighteen,
                             ),*/
                             //floatingLabelBehavior: FloatingLabelBehavior.always,
                             suffixIcon: IconButton(
                               icon: Icon(
                                 _isPasswordVisible
                                     ? Icons.visibility
                                     : Icons.visibility_off,
                                 color: AllColors.primaryDark1,
                               ),
                               onPressed: () {
                                 setState(() {
                                   _isPasswordVisible = !_isPasswordVisible;
                                 });
                               },
                             ),
                             // Add an eye icon for password visibility
                             filled: true,
                             fillColor: Colors.grey[50],
                             // Light gray background
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(8.0),
                               borderSide: BorderSide.none,
                             ),
                           ),
                         ),
                         SizedBox(height: 60),
                         Obx(() {
                           return DefaultButton(
                             text: "Login",
                             press: () {
                               /*if (_formKey.currentState!.validate()) {
                                  loginVM.loading.value = true;
                                  loginVM.loginApi();
                               }*/
                               Get.offAllNamed(RoutesName.homeScreen);
                             },
                             loading: loginVM.loading.value,
                           );
                         }),
                         GestureDetector(
                           onTap: () {
                             Get.to(RegisterScreen(),
                                 transition: Transition.rightToLeftWithFade,
                                 duration: Duration(seconds: 1));
                           },
                           child: Visibility(
                             visible: true,
                             child: Container(
                               margin: EdgeInsets.only(top: 16.0),
                               child: RichText(
                                 text: TextSpan(
                                   text: "Don't have an account? ",
                                   style: TextStyle(
                                     color: Colors.grey,
                                     fontFamily: 'Ageo Persona',
                                     fontWeight: FontWeight.bold,
                                   ),
                                   children: [
                                     TextSpan(
                                       text: "Sign Up",
                                       style: TextStyle(
                                         color: AllColors.primaryDark1,
                                         //fontFamily: 'Roboto',
                                         fontWeight: FontWeight.bold,
                                         decoration: TextDecoration.underline,
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ),



                       ],
                                      ),
                   ),
               )
                   ]
               ),
             )

             )
            ],
          ),
        ),
      ),
    );
  }

}
