import 'package:flutter/material.dart';
import './chat_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fluttermaster.com - Message Chat'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: ChatModel.dummyData.length,
          itemBuilder: (context, index) {
            ChatModel _model = ChatModel.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 16.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(_model.avatarUrl),
                  ),
                  title: Text(_model.name),
                  subtitle: Text(_model.message),
                  trailing: Text(_model.datetime),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
