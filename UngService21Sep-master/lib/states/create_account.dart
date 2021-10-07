import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ungservice/utility/my_constant.dart';
import 'package:ungservice/utility/my_dialog.dart';
import 'package:ungservice/widgets/show_title.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  List<String>? types;
  String? type;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    types = MyConstant.types;
  }

  Container buildCreateNewAccount() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: 250,
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            if (type == null) {
              MyDialog().normalDialog(
                  context, 'Non Choose Type ?', 'Please Choose Type User');
            } else {
              processCreateNewAccount();
            }
          }
        },
        child: const Text('Create New Account'),
        style: MyConstant().mainStyle(),
      ),
    );
  }

  Container buildName() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: const EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please Fill Name in Blank';
          } else {
            return null;
          }
        },
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.fingerprint,
            color: Colors.indigo,
          ),
          label: ShowTitle(title: 'Name :'),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo),
          ),
        ),
      ),
    );
  }

  Container buildUser() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: const EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please Fill User in Blank';
          } else {
            return null;
          }
        },
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.perm_identity,
            color: Colors.indigo,
          ),
          label: ShowTitle(title: 'User :'),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo),
          ),
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: const EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please Fill Password in Blank';
          } else {
            return null;
          }
        },
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Colors.indigo,
          ),
          label: ShowTitle(title: 'Password :'),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyConstant.primary,
        title: const Text('Create New Account'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: Container(
          decoration: MyConstant().gradientBox(),
          child: Center(
            child: Form(
              key: formKey,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 50),
                children: [
                  buildName(),
                  buildTitleTypeUser(),
                  buildDropdown(),
                  buildUser(),
                  buildPassword(),
                  buildCreateNewAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  DropdownButton<String> buildDropdown() {
    return DropdownButton<String>(
      items: types!
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
      value: type,
      onChanged: (value) {
        setState(() {
          type = value;
        });
      },
      hint: const ShowTitle(title: 'Please Choose Type'),
    );
  }

  Row buildTitleTypeUser() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ShowTitle(
            title: 'Type User หรือ ชนิดของ ผู้ใช้ :',
            textStyle: MyConstant().h2Style(),
          ),
        ),
      ],
    );
  }

  Future<void> processCreateNewAccount() async {
    await Firebase.initializeApp().then((value) => print('initial Success'));
  }
}
