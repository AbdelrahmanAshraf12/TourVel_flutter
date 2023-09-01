// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_project/auth.dart';
// import 'package:flutter_project/navegation_bar/layout_screen.dart';
// import 'package:flutter_project/trips/desert/desrt_screen.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:path/path.dart';
//
// import 'aboutScreen.dart';
// import 'developersScreen.dart';
// import 'logoutScreen.dart';
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
//   static const String screenRoute="homeScreen";
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   File? _imageFile;
//   final picker = ImagePicker();
//   bool _uploading = false;
//
//   Future getImage() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//
//     setState(() {
//       if (pickedFile != null) {
//         _imageFile = File(pickedFile.path);
//       }
//     });
//   }
//
//   Future uploadImageToFirebase(BuildContext context) async {
//     String fileName = basename(_imageFile!.path!);
//     Reference firebaseStorageRef =
//     FirebaseStorage.instance.ref().child('images/$fileName');
//     UploadTask uploadTask = firebaseStorageRef.putFile(_imageFile!);
//     TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);
//
//     setState(() {
//       _uploading = false;
//     });
//
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Image uploaded successfully')),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Colors.blueGrey,
//           elevation: 0,
//
//           actions:[PopupMenuButton<int>(
//             onSelected: (item)=>onSelected(context,item),
//             itemBuilder: (context) => [
//               PopupMenuItem(
//                 value: 0,
//                 child: Text("categories"),),
//               PopupMenuItem(
//                 value: 1,
//                 child: Text("About"),),
//               PopupMenuDivider(),
//               PopupMenuItem(
//                 value: 2,
//                 child: Row(
//                   children: [
//                     Icon(Icons.login_outlined,color: Colors.black,),
//                     SizedBox(width: 5,),
//                     Text("Logout",textAlign: TextAlign.left,),
//                   ],
//                 ),),
//             ],
//           ),
//
//
//
//
//           ]
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             _imageFile != null
//                 ? Image.file(
//               _imageFile!,
//               height: 200,
//             )
//                 : Text('No image selected'),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => getImage(),
//               child: Text('Select Image'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _imageFile != null && !_uploading
//                   ? () {
//                 setState(() {
//                   _uploading = true;
//                 });
//                 uploadImageToFirebase(context);
//               }
//                   : null,
//               child: _uploading ? CircularProgressIndicator() : Text('Upload Image'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// onSelected(BuildContext context, int item) {
//   switch(item)
//   {
//     case 0:
//       print("Clicked Developers");
//       Navigator.of(context).push(
//         MaterialPageRoute(builder: (context)=>LayoutScreen(),),
//       );
//       break;
//     case 1:
//       print("Clicked About");
//       Navigator.of(context).push(
//         MaterialPageRoute(builder: (context)=>AboutScreen(),),
//       );
//       break;
//     case 2:
//       print("Clicked Logout");
//       Navigator.of(context).push(
//         MaterialPageRoute(builder: (context)=>LogoutScreen(),),);
//
//       break;
//
//   }
//
//
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String screenRoute = "homeScreen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(" You are logged in"
          //     ,style: TextStyle(
          //   fontWeight: FontWeight.bold,
          //   fontSize: 35,
          // ),),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/tourvelapp-34f3a.appspot.com/o/images%2FLogo.png?alt=media&token=b9b2d24e-1bff-4c8d-8057-15a052e56eef"),
                  height: 450,
                ),
              ],
            ),
          ),
          //

          MaterialButton(
            onPressed: () {
              FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: AutofillHints.email, password: AutofillHints.password);
              Navigator.of(context).pushNamed("layoutScreen");
            },
            color: Colors.green,
            child: Text(
              "Start",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      )),
    );
  }
}
