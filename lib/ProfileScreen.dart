import 'package:flutter/material.dart';
import 'package:untitled12/modules/TexrFormField.dart';

class Profile extends StatefulWidget {
   const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final nameCont = TextEditingController();

  final ageCont = TextEditingController();

  final emailCont = TextEditingController();

  final passCont = TextEditingController();

  late List<Tff> fields;
  @override
  void initState() {
    fields = [
      Tff(text: 'Name', hintText: 'ex : william', controller: nameCont),
      Tff(text: 'Age', hintText: 'ex : 20', controller: ageCont),
      Tff(text: 'Email', hintText: 'ex : example@gmail.com', controller: emailCont),
      Tff(text: 'Password', hintText: 'ex : 22255882', controller: passCont),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
                onPressed: ()
                {
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back),
            ),
          ),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
              fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Align(
              alignment:Alignment.center,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.width/2,
                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdX029ohIUSygq9zirl9fSNBwSLqEOaKEYuw&usqp=CAU'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: const Icon(Icons.camera_alt_outlined)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => fields[index],
                itemCount: fields.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width/4,
                    vertical: 12,
                  ),
                  child: const Text(
                    'Update',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
