import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled12/view/login-reg_screens/register.dart';
import '../../modules/text.dart';
import '../../modules/tff.dart';
import '../home.dart';

class Login extends StatefulWidget {
   const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   final emailCont = TextEditingController();
   final passCont = TextEditingController();

   final loginFormKey = GlobalKey<FormState>();

   late  List<Tff> loginFields;
   @override
  void initState() {
     loginFields =
     [
       Tff(
           prefixIcon: Icons.phone_android,
           hintText: 'رقم التليفون',
           controller: emailCont,
           validator: (phone)
           {
             if(phone!.isEmpty)
             {
               return 'ادخل رقم التليفون ';
             }
             return null;
           },
           obscureText: false
       ),
       Tff(
           prefixIcon: Icons.lock,
           hintText: 'كلمة المرور',
           controller: passCont,
           validator: (password)
           {
             if(password!.isEmpty)
               {
                 return 'ادخل كلمة المرور';
               }
             return null;
           },
           obscureText: false
       ),
     ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FFF9F6'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/worker.png'),
                  ),
                  MyText(
                    text: 'حِرفي',
                    color: HexColor('DD8560'),
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              MyText(
                text: 'مرحبًا بك مجددًا!',
                color: HexColor('DD8560'),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/4.7,
                child: Form(
                  key: loginFormKey,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => loginFields[index],
                    separatorBuilder: (context, index) => const SizedBox(height: 16,),
                      itemCount: loginFields.length,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {}, 
                  child: MyText(
                      text: 'نسيت كلمة المرور؟',
                      color: HexColor('DD8560'),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                      horizontal: MediaQuery.of(context).size.width/3),
                  backgroundColor: HexColor('DD8560'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
                  onPressed: ()
                  {
                    if(loginFormKey.currentState!.validate())
                      {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ), (route) => false,
                        );
                      }
                  },
                  child: MyText(
                    text: 'تسجيل الدخول',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: 'ليس لديك حساب؟',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  TextButton(
                      onPressed: ()
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Register(),
                            ),
                        );
                      },
                      child: MyText(
                        text: 'انشئ حساب',
                        fontWeight: FontWeight.bold,
                        color: HexColor('DD8560'),
                        fontSize: 16,
                      ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
