import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../modules/text.dart';
import '../../modules/tff.dart';
import 'login.dart';

class Register extends StatefulWidget {
   const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final nameCont = TextEditingController();
  final phoneCont = TextEditingController();
  final passCont = TextEditingController();
  final passConfirmCont = TextEditingController();

  final regFormKey = GlobalKey<FormState>();

  late List<Tff> regFields;
  
  @override
  void initState() {
    regFields = 
    [
      Tff(
          prefixIcon: Icons.person,
          hintText: 'اسم المستخدم',
          controller: nameCont,
          validator: (name)
          {
            if(name!.isEmpty)
              {
                return 'الرجاء كتابة الاسم';
              }
            return null;
          },
          obscureText: false
      ),
      Tff(
          prefixIcon: Icons.phone_android,
          hintText: 'رقم التليفون',
          controller: phoneCont,
          validator: (phone)
          {
            if(phone!.isEmpty)
              {
                return 'الرجاء كتابة رقم التليفون';
              }
            return null;
          },
          obscureText: false
      ),
      Tff(
          prefixIcon: Icons.lock,
          hintText: 'كلمة المرور',
          controller: passCont,
          validator: (pass)
          {
            if(pass!.isEmpty)
              {
                return 'الرجاء كتابة كلمة المرور';
              }
            return null;
          },
          obscureText: true
      ),
      Tff(
          prefixIcon: Icons.lock,
          hintText: 'تأكيد كلمة المرور',
          controller: passConfirmCont,
          validator: (passConfirm)
          {
            if(passConfirm!.isEmpty)
              {
                return 'الرجاء تأكيد كلمة المرور';
              }
            return null;
          },
          obscureText: true
      ),
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FFF9F6'),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
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
            Align(
              alignment: Alignment.topRight,
              child: MyText(
                text: 'مرحبًا بك مجددًا!',
                color: HexColor('DD8560'),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/2.5,
              child: Form(
                key: regFormKey,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => regFields[index],
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 16,
                  ),
                  itemCount: regFields.length,
                 ),
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
              onPressed: () {},
              child: MyText(
                text: 'انشاء حساب ',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: 'لديك حساب بالفعل؟',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                TextButton(
                  onPressed: ()
                  {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                            (route) => false,
                    );
                  },
                  child: MyText(
                    text: 'سجل دخول',
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
    );
  }
}
