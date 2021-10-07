import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../model/profile.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  var profile =
      Profile(email: '', password: '', UserName: '',  PhoneNumber: null  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("สร้างบัญชีใหม่"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 150, 30, 50),
        child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ชื่อ-นามสกุล", style: TextStyle(fontSize: 20)),
                  TextFormField(),
                  SizedBox(
                    height: 10,
                  ),
                  Text("อีเมล", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (email) async {
                      assert(email != null);
                      profile.email = email!;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("รหัสผ่าน", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("เบอร์โทรศัพท์", style: TextStyle(fontSize: 20)),
                  TextFormField(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        "ลงทะเบียน",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        formKey.currentState!.save();
                      },
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Profile>('profile', profile));
  }
}

class Password {}
