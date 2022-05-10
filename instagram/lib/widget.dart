import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';
import 'store.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<Store1>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.watch<Store2>().name),
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: ProfileHeader(),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) =>
                Image.network(context.watch<Store1>().profileImage[index]),
            childCount: context.watch<Store1>().profileImage.length,
          ),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        )
      ]),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(backgroundColor: Colors.grey),
        Text('팔로워 ${context.watch<Store1>().follower}명'),
        ElevatedButton(
          child: Text('Follow'),
          onPressed: () {
            context.read<Store1>().addFollower();
          },
        ),
      ],
    );
  }
}

class Upload extends StatelessWidget {
  Upload(
      {Key? key, this.userImage, this.uploadData, this.uploadImage, this.data})
      : super(key: key);
  final userImage;
  var uploadData;
  var uploadImage;
  final data;
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  uploadData();
                  uploadImage['content'] = textController.text;
                  print(userImage);
                },
                child: Text('Upload'))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.file(
                userImage,
                fit: BoxFit.fitWidth,
                width: 420,
                height: 420,
              ),
              TextField(
                decoration:
                    InputDecoration.collapsed(hintText: '여기에 글을 입력해주세요.'),
                controller: textController,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close)),
            ],
          ),
        ));
  }
}
