import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AwesomeApp extends StatelessWidget {
  const AwesomeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static bool changedCheck = true;
  TextEditingController controller = TextEditingController();
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPassWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome, Charlie!',
            ),

            Checkbox(
                key: Key('termsCheckbox'),
                value: changedCheck,
                onChanged: (value) {
                  setState(() {
                    changedCheck = value!;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('chack_box_tap $value'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }),

            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Elevated_button tap'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: Text("signUpButton"),
                key: Key('signUpButton')),
            TextFormField(
              key: Key('emailTextField'),
              onChanged: (value){
                controller.text = value;

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('change_tap $value'),
                    duration: Duration(seconds: 2),
                  ),
                );
                setState(() {});

              },
              onTap: (){
                setState(() {});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('tab_tap'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              onEditingComplete: (){
                setState(() {});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('edit_tap '),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              onSaved: (value){

                setState(() {controller.text = value!;});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('save_tap $value'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              onFieldSubmitted: (value){
                setState(() {controller.text = value;});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('subm_tap $value'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              controller: controller,
              style: const TextStyle(color: Colors.black),
              cursorColor: Colors.deepPurpleAccent,
            ),
            TextFormField(
              key: Key('nameTextField'),
              onChanged: (value){
                controllerName.text = value;

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('change_tap $value'),
                    duration: Duration(seconds: 2),
                  ),
                );
                setState(() {});

              },
              onTap: (){
                setState(() {});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('tab_tap'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              onEditingComplete: (){
                setState(() {});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('edit_tap '),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              onSaved: (value){

                setState(() {controllerName.text = value!;});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('save_tap $value'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              onFieldSubmitted: (value){
                setState(() {controllerName.text = value;});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('subm_tap $value'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              controller: controllerName,
              style: const TextStyle(color: Colors.black),
              cursorColor: Colors.deepPurpleAccent,
            ),
            TextFormField(
              key: Key('passwordTextField'),
              onChanged: (value){
                controllerPassWord.text = value;

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('change_tap $value'),
                    duration: Duration(seconds: 2),
                  ),
                );
                setState(() {});

              },
              onTap: (){
                setState(() {});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('tab_tap'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              onEditingComplete: (){
                setState(() {});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('edit_tap '),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              onSaved: (value){

                setState(() {controllerPassWord.text = value!;});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('save_tap $value'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              onFieldSubmitted: (value){
                setState(() {controllerPassWord.text = value;});

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('subm_tap $value'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              controller: controllerPassWord,
              style: const TextStyle(color: Colors.black),
              cursorColor: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}