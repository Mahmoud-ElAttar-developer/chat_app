import 'package:chat_app/user_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserModel> users = [
      UserModel(
        image: 'assets/20240116_125236.jpg',
        name: 'Ali',
        lasMsg: 'hello',
        time: '10:02 am',
        count: '6',
        
      ),
      UserModel(
        image: 'assets/IMG_20151010_094816.jpg',
        name: 'Mahmoud',
        lasMsg: 'I am looking for u',
        time: '4:02 am',
        count: '',
      ),
      UserModel(
        image: 'assets/IMG_20151015_153453.jpg',
        name: 'Samir',
        lasMsg: 'I have arrived',
        time: '2:02 pm',
        count: '',
      ),
      UserModel(
        image: 'assets/IMG_20160423_120040.jpg',
        name: 'Said',
        lasMsg: 'what about you!',
        time: '1:02 am',
        count: '2',
      ),
      UserModel(
        image: 'assets/Joker_by_Verehin-600x877 - Copy.jpg',
        name: 'Ahmed',
        lasMsg: 'so easy',
        time: '4:02 am',
        count: '8',
      ),
      UserModel(
        image: 'assets/joker-quotes-deep-sayings-best-dog.jpg',
        name: 'Wael',
        lasMsg: 'bye',
        time: '8:02 pm',
        count: '1',
      ),
      UserModel(
        image: 'assets/Joker-Quotes.jpg',
        name: 'Trip',
        lasMsg: 'what ?',
        time: '6:02 pm',
        count: '3',
      ),
      UserModel(
        image: 'assets/joker-quotes2.jpg',
        name: 'Neighbour',
        lasMsg: 'when did it happen',
        time: '5:02 am',
        count: '8',
      ),
      UserModel(
        image: 'assets/joker-the-joker-28092759-500-281.jpg',
        name: 'Work',
        lasMsg: 'wonderful',
        time: '7:02 am',
        count: '5',
      ),
      UserModel(
        image: 'assets/large.jpg',
        name: 'Manger',
        lasMsg: 'keep going',
        time: '4:02 pm',
        count: '2',
      ),
      UserModel(
        image: 'assets/large2.jpg',
        name: 'Office',
        lasMsg: 'I see',
        time: '3:02 am',
        count: '1',
      ),
      UserModel(
        image: 'assets/tumblr_mq1yavZMED1s4o5omo1_500.png',
        name: 'Mostafa',
        lasMsg: 'I am eating right now ',
        time: '11:02 pm',
        count: '2',
      ),
    ];
    return Scaffold(
      backgroundColor: Color(0xff4732ff),
      appBar: AppBar(
        backgroundColor: Color(0xff4732ff),
        title: Text('Chats', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  'Favourite contects',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(users[index].image),
                      ),
                      Gap(20),
                      Text(
                        users[index].name,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20,
                  );
                },
                itemCount: users.length,
              ),
            ),
          ),
          Gap(20),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  int badgeCount = int.tryParse(users[index].count) ?? 0;
                  // return
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.black12,
                    ),
                    child: Dismissible(
                      key: ValueKey(users[index].name),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(users[index].image),
                        ),
                        title: Text(
                          users[index].name,
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          users[index].lasMsg,
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, 
                          crossAxisAlignment: CrossAxisAlignment
                              .end,

                          children: [
                            Text(
                              users[index].time,
                              style: TextStyle(color: Colors.black),
                            ),
                            Opacity(
                              opacity: badgeCount > 0
                                  ? 1.0
                                  : 0.0, 
                              child: Column(
                                children: [
                                  Gap(20),
                                  Badge.count(
                                    count: badgeCount,
                                    backgroundColor: Colors.green,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Gap(20);
                },
                itemCount: users.length,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
    );
  }
}
