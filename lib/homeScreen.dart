import 'package:flutter/material.dart';
import 'package:untitled12/modules/TexrFormField.dart';
import 'package:untitled12/modules/text.dart';

import 'modules/elevatedButton.dart';
import 'modules/list_of_diseases.dart';

class Home extends StatelessWidget {
   Home({super.key});

  final searchCont = TextEditingController();
  List<Diseases> diseases =
  const [
    Diseases(),
    Diseases(),
    Diseases(),
    Diseases(),
    Diseases(),
    Diseases(),
    Diseases(),
    Diseases(),
  ];
  List<ElevButton> elevButtons = 
  [
    ElevButton(text: 'Examination Roy',icon: Icons.camera_alt_outlined),
    ElevButton(text: 'Examination Blood count',icon: Icons.water_drop_outlined),
    ElevButton(text: 'Skin Disease',icon: Icons.radio_button_off_outlined),
    ElevButton(text: 'Diagnosis of Disease',icon: Icons.mark_as_unread),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(text: 'Hi mohamed',fontWeight: FontWeight.w500,),
        actions: const [
          CircleAvatar(
            // backgroundImage: NetworkImage(''),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            MyText(
              text: 'Keep Talking',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            MyText(
              text: 'care of your self',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            Tff(
              text: '',
              hintText: 'Search',
              controller: searchCont,
              prefixIcon: Icons.search,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mic),
              ),
            ),
            MyText(text: 'Spread Diseases',fontWeight: FontWeight.bold,),
            SizedBox(
              height: MediaQuery.of(context).size.height/4.2,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 30,
                ),
                itemBuilder: (context, index) => diseases[index],
                itemCount: diseases.length,
              ),
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: MyText(text: 'OR',fontWeight: FontWeight.w500,),
                ),
                const Expanded(
                  child: Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => elevButtons[index],
                itemCount: elevButtons.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
