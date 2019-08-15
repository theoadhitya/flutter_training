import 'package:flutter/material.dart';
import 'package:some_function_practice/text_input/models/user.dart';

class MyTextInput extends StatefulWidget {
  @override
  MyTextInputState createState() => MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  
  final TextEditingController controller = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Practice"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Builder(
          builder: (context) => Form(
            key: _formKey,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'First Name'),
                    validator: (value) { 
                      if (value.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                    onSaved: (val) => setState(() => _user.firstName = val),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Last Name'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                    onSaved: (val) => setState(() => _user.lastName = val),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 15),
                    child: Text('Subscribe'),
                  ),
                  SwitchListTile(
                    title: const Text('Monthly Newsletter'),
                    value: _user.newsletter,
                    onChanged: (bool val) => setState(() => _user.newsletter = val)
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Text('Interests'),
                  ),
                  CheckboxListTile(
                    title: Text('Tea'),
                    value: _user.passions[User.PassionTea],
                    onChanged: (val) {
                      setState(() => _user.passions[User.PassionTea] = val);
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Coffee'),
                    value: _user.passions[User.PassionCoffee],
                    onChanged: (val) {
                      setState(() => _user.passions[User.PassionCoffee] = val);
                    },
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: RaisedButton(
                      onPressed: () {
                        final form = _formKey.currentState;
                        if (form.validate()) {
                          form.save();
                          _user.save();
                          _showDialog(context);
                        }
                      },
                      child: Text('Save'),
                    )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
      .showSnackBar(SnackBar(content: Text('Submitting Form'),));
  }
}

// return Scaffold(
//       appBar: AppBar(
//         title: Text("Form Practice"),
//         backgroundColor: Colors.deepOrange
//       ),
//       body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Type in here"
//                 ),
//                 onSubmitted: (String str) {
//                   setState(() {
//                    this.result = str; 
//                   });
//                   controller.text = "";
//                 },
//                 controller: this.controller,
//                 // onChanged: (String str) {
//                 //   setState(() {
//                 //     this.result = str;
//                 //   });
//                 // },
//               ),
//               Text(this.result)
//             ],
//           ),
//         ),
//       ),
//     );