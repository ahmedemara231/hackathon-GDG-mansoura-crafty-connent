import 'package:flutter/material.dart';
import 'package:untitled12/modules/text.dart';

class WorkerProfile extends StatelessWidget {
  
  String image;
  String name;
   WorkerProfile({super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(image),
              ),
              const SizedBox(
                height: 16,
              ),
              MyText(text: name,fontSize: 20,fontWeight: FontWeight.w500,),

              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(text: 'اهلا',fontSize: 20,fontWeight: FontWeight.w500,),
                        )),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(text: 'ازاي اساعدك',fontSize: 20,fontWeight: FontWeight.w500,),
                        )),
                  )),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'send message',
                        enabledBorder: OutlineInputBorder()
                      ),
                    )),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.send))

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
