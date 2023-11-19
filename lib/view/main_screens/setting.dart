import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled12/modules/text.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('FFF9F6'),
      appBar: AppBar(
        title: MyText(text: 'الاعدادات'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyText(
              text: 'واجهة المستخدم',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
           Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.dark_mode_outlined,
                    color: HexColor('DD8560'),
                  ),
                  title: MyText(text: 'الوضع المظلم',fontWeight: FontWeight.w600),
                  trailing: Switch(
                    onChanged: (value) {},
                    value: false,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListTile(
                  leading: Icon(Icons.notifications_none,
                    color: HexColor('DD8560'),
                  ),
                  title: MyText(text: 'الاشعارات',fontWeight: FontWeight.w600),
                  trailing: Switch(
                    onChanged: (value) {},
                    value: false,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //////////////
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyText(
              text: 'اللغة والمنطقة',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.location_on_outlined,
                    color: HexColor('DD8560'),
                  ),
                  title: MyText(text: 'العربية(مصر)',fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          /////////////
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyText(
              text: 'الدعم',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.dark_mode_outlined,
                    color: HexColor('DD8560'),
                  ),
                  title: MyText(text: 'سياسة الخصوصية',fontWeight: FontWeight.w600),
                  trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
                ),
                const SizedBox(
                  height: 16,
                ),

                ListTile(
                  leading: Icon(Icons.notifications_none,
                    color: HexColor('DD8560'),
                  ),
                  title: MyText(text: 'معلومات عنا',fontWeight: FontWeight.w600),
                  trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
                ),
                ListTile(
                  leading: Icon(Icons.dark_mode_outlined,
                    color: HexColor('DD8560'),
                  ),
                  title: MyText(text: 'تواصل معنا',fontWeight: FontWeight.w600),
                  trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
                ),
                const SizedBox(
                  height: 16,
                ),
                ListTile(
                  leading: Icon(Icons.notifications_none,
                    color: HexColor('DD8560'),
                  ),
                  title: MyText(text: 'تسجيل خروج',fontWeight: FontWeight.w600),
                  trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
