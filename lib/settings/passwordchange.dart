import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordChange extends StatefulWidget {
  @override
  _PasswordChangeState createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  final _formKey = GlobalKey<FormState>();
  late String _currentPassword;
  late String _newPassword;
  late String _confirmPassword;

  void _submit() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      // Send the current password, new password, and confirm password to the backend for verification
      // and to update the password in the database
      // ...
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Current Password'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your current password';
                  }
                  return null;
                },
                onSaved: (value) => _currentPassword = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'New Password'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your new password';
                  }
                  return null;
                },
                onSaved: (value) => _newPassword = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Confirm Password'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please confirm your new password';
                  }
                  if (value != _newPassword) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                onSaved: (value) => _confirmPassword = value!,
              ),
              RaisedButton(
                onPressed: _submit,
                child: Text('Change Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}