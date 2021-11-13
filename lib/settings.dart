import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({ Key key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  // text fields
  String name = '';
  int age = 18;
  int sleepHours = 6;

  String dropdownValueGender = 'Male';
  String dropdownValueHyper = 'No';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings'
        ),
        backgroundColor: Colors.amber[700]
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    'Gender', 
                    style: TextStyle(
                      fontSize: 16.0, 
                      color: Colors.black
                      ),
                  ),
                  SizedBox(width: 24.0,),
                  DropdownButton<String>(
                    value: dropdownValueGender,
                    icon: const Icon(Icons.arrow_drop_down_rounded),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(
                      color: Colors.deepPurple
                    ),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValueGender = newValue;
                      });
                    },
                    items: <String>['Male', 'Female']
                      .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                      .toList(),
                  )
                ],
              ),
              SizedBox(height: 24.0,),
              Text(
                'Age', 
                style: TextStyle(
                  fontSize: 16.0, 
                  color: Colors.black
                  ),
              ),
              TextFormField(
                // controller: _textController,
                cursorColor: Colors.amber[700],
                decoration: InputDecoration(
                  //hintText: 'Enter your Name'
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: (Colors.amber[700]))
                  ),
                  // errorText: usernameErrorText
                ),
                style: TextStyle(
                  fontSize: 18
                ),
                onChanged: (val) {
                  setState(() {
                    age = val as int;
                  });
                },
              ),
              SizedBox(height: 24.0,),
              Text(
                'How many hours did you sleep last night?', 
                style: TextStyle(
                  fontSize: 16.0, 
                  color: Colors.black
                  ),
              ),
              TextFormField(
                // controller: _textController,
                cursorColor: Colors.amber[700],
                decoration: InputDecoration(
                  //hintText: 'Enter your Name'
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: (Colors.amber[700]))
                  ),
                  // errorText: usernameErrorText
                ),
                style: TextStyle(
                  fontSize: 18
                ),
                onChanged: (val) {
                  setState(() {
                    sleepHours = val as int;
                  });
                },
              ),
              SizedBox(height: 24.0,),
              Row(
                children: [

                  Text(
                    'Do you have Hypertensive?', 
                    style: TextStyle(
                      fontSize: 16.0, 
                      color: Colors.black
                      ),
                  ),
                  SizedBox(width: 24.0,),
                  DropdownButton<String>(
                    value: dropdownValueHyper,
                    icon: const Icon(Icons.arrow_drop_down_rounded),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(
                      color: Colors.deepPurple
                    ),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValueHyper = newValue;
                      });
                    },
                    items: <String>['No', 'Yes']
                      .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                      .toList(),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}