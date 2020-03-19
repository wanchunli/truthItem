import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  var loginText;
  var bottonText = "登陆";
  int sex = 1;
  var flag = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              maxLines: 1,
              style: TextStyle(fontSize: 20, color: Colors.blue),
              cursorColor: Colors.red,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "请输入用户名",

                labelText: "用户名",
              ),
              onChanged: (value) {
                this.loginText = value;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 1,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: "请输入密码",
                labelText: "密码",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text(bottonText),
                onPressed: () {
                  setState(() {
                    this.bottonText = this.loginText;
                  });
                },
              ),
            ),
            Row(
              children: <Widget>[
                Text("男"),
                SizedBox(
                  width: 5,
                ),
                Radio(
                  value: 1,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                  groupValue: this.sex,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("女"),
                SizedBox(
                  width: 5,
                ),
                Radio(
                  value: 2,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                  groupValue: this.sex,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                RadioListTile(
                  value: 1,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                  groupValue: this.sex,
                  selected: this.sex == 1,
                  title: Text("我是闹钟"),
                  subtitle: Text("我是闹钟的附标题"),
                  secondary: Icon(Icons.access_alarms),
                ),
                SizedBox(
                  height: 5,
                ),
                RadioListTile(
                  value: 2,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                  groupValue: this.sex,
                  selected: this.sex == 2,
                  title: Text("我是星星"),
                  subtitle: Text("我是星星的附标题"),
                  secondary: Icon(Icons.star),
                ),
                SizedBox(
                  height: 5,
                ),
                Switch(
                  value: this.flag,
                  onChanged: (value){
                    setState(() {
                      this.flag = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
