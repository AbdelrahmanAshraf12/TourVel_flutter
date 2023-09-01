import 'package:flutter/material.dart';
import 'package:flutter_project/Models/success_stories_model.dart';
import 'package:flutter_project/dio/api_provider.dart';

class UserModel{

  final int id;
  final String name;
  final String phone;

  UserModel({required this.id,required this.name,required this.phone,});

}

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});


  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserModel user =UserModel(id: 1, name: "gsdk", phone: "12314");

  List<UserModel> users=[
    UserModel(id: 1, name: "Abdo", phone: "12345785609"),
    UserModel(id: 2, name: "Ashraf", phone: "1234569870"),
    UserModel(id: 3, name: "Mohsen", phone: "123457356"),
    UserModel(id: 4, name: "Ahmed", phone: "1234583489"),
    UserModel(id: 5, name: "Mahmoud", phone: "123459453"),
    UserModel(id: 6, name: "Mamdouh", phone: "12345165478"),
    UserModel(id: 7, name: "Rami", phone: "1234554321"),
    UserModel(id: 8, name: "Mohammed", phone: "1234512509"),
    UserModel(id: 9, name: "Zizo", phone: "1234587685"),
  ];


  SuccessStoriesModel? storiesModel;
  bool isLoading=true;

  getData() async
  {
    storiesModel= await ApiProvider().getSuccessStories();
    print(storiesModel?.model![1].title);

    setState(() {
      isLoading=false;
    });
  }

  @override
  void initState()
  {
    getData();
    super.initState();

  }
  @override
  void dispose()
  {
    //TODO: implement dispose
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users"),
      ),
      body: isLoading
          ? const Center(child:  CircularProgressIndicator())
          :ListView.separated(
          itemBuilder: (context, index)=> buildUserItem(storiesModel!.model![index]),
          separatorBuilder: (context, index)=>const Divider(),
          itemCount: storiesModel!.model!.length),

    );
  }
}


Widget buildUserItem(Model story) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            story.id!,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

            ),
          ),

        ),
        const SizedBox(width: 10,),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 220,
              child: Text(
                story.title!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,


                ),

              ),


            ),

          ],

        ),

      ],


    ),




  );
}
