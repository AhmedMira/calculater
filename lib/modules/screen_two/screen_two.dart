import 'package:Calculater/models/user/user_model.dart';
import 'package:Calculater/shared/components/components.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ScreenTwo extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      image: 'https://media1.s-nbcnews.com/j/newscms/2019_46/3101906/191114-volkswagen-id-space-vizzion-concept-ew-818p_668c65c0dd8ab0befbec99aac57f280f.fit-760w.jpg',
      name: 'Ahmed Mira',
      phone: '233365846',
    ),
    UserModel(
      image: 'https://cdn.al-ain.com/images/2019/3/07/121-225351-2019-world-car-year-top-three_700x400.jpeg',
      name: 'Mohamed Mira',
      phone: '233365846',
    ),
    UserModel(
      image: 'https://media1.s-nbcnews.com/j/newscms/2019_46/3101906/191114-volkswagen-id-space-vizzion-concept-ew-818p_668c65c0dd8ab0befbec99aac57f280f.fit-760w.jpg',
      name: 'Ahmed Mira',
      phone: '233365846',
    ),
    UserModel(
      image: 'https://cdn.al-ain.com/images/2019/3/07/121-225351-2019-world-car-year-top-three_700x400.jpeg',
      name: 'Mohamed Mira',
      phone: '233365846',
    ),
    UserModel(
      image: 'https://media1.s-nbcnews.com/j/newscms/2019_46/3101906/191114-volkswagen-id-space-vizzion-concept-ew-818p_668c65c0dd8ab0befbec99aac57f280f.fit-760w.jpg',
      name: 'Ahmed Mira',
      phone: '233365846',
    ),
    UserModel(
      image: 'https://cdn.al-ain.com/images/2019/3/07/121-225351-2019-world-car-year-top-three_700x400.jpeg',
      name: 'Mohamed Mira',
      phone: '233365846',
    ),
    UserModel(
      image: 'https://media1.s-nbcnews.com/j/newscms/2019_46/3101906/191114-volkswagen-id-space-vizzion-concept-ew-818p_668c65c0dd8ab0befbec99aac57f280f.fit-760w.jpg',
      name: 'Ahmed Mira',
      phone: '233365846',
    ),
    UserModel(
      image: 'https://cdn.al-ain.com/images/2019/3/07/121-225351-2019-world-car-year-top-three_700x400.jpeg',
      name: 'Mohamed Mira',
      phone: '233365846',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenTwo'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => buildItem(users[index]),
        separatorBuilder: (context, index) => buildSeparator(),
        itemCount: users.length,
      ),
    );
  }

  Widget buildItem(userModel) =>
      InkWell(
        onTap: () {

        },
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 35.0,
                backgroundImage: NetworkImage(userModel.image),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userModel.name,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    userModel.phone,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
