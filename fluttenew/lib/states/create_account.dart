import 'package:fluttenew/utility/my_constant.dart';
import 'package:fluttenew/utility/my_dialog.dart';
import 'package:fluttenew/widgets/show_image.dart';
import 'package:fluttenew/widgets/show_title.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final formkey = GlobalKey<FormState>();

  get typeUser => null;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('create new account'),
        backgroundColor: Myconstant.primary,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              // padding: EdgeInsets.all(20),
              children: [
                buildTitle("Let's get started !"),
                buildName(size),
                buildEmail(size),
                buildPhone(size),
                buildPassword(size),
                buildConfirmPassword(size),
                buildCreateAccount(size),
                buildLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildName(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          width: size * 0.8,
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Please complete your name";
              } else {}
            },
            decoration: InputDecoration(
              labelStyle: Myconstant().h3Style(),
              labelText: 'Name :',
              prefixIcon: Icon(
                Icons.manage_accounts_outlined,
                color: Myconstant.dark,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Myconstant.light),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Myconstant.light),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildEmail(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          width: size * 0.8,
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your email";
              } else {}
            },
            decoration: InputDecoration(
              labelStyle: Myconstant().h3Style(),
              labelText: 'Email :',
              prefixIcon: Icon(
                Icons.mail_outline,
                color: Myconstant.dark,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Myconstant.light),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Myconstant.light),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildPhone(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          width: size * 0.8,
          child: TextFormField(
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your phone number";
              } else {}
            },
            decoration: InputDecoration(
              labelStyle: Myconstant().h3Style(),
              labelText: 'Phone :',
              prefixIcon: Icon(
                Icons.phone_android_outlined,
                color: Myconstant.dark,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Myconstant.light),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Myconstant.light),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildPassword(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          width: size * 0.8,
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your password";
              } else {}
            },
            decoration: InputDecoration(
              labelStyle: Myconstant().h3Style(),
              labelText: 'Password :',
              prefixIcon: Icon(
                Icons.lock_outline_rounded,
                color: Myconstant.dark,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Myconstant.light),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Myconstant.light),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildConfirmPassword(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          width: size * 0.8,
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your password";
              } else {}
            },
            decoration: InputDecoration(
              labelStyle: Myconstant().h3Style(),
              labelText: 'Confirm Password :',
              prefixIcon: Icon(
                Icons.lock_open_outlined,
                color: Myconstant.dark,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Myconstant.light),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Myconstant.light),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildCreateAccount(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 25),
          width: size * 0.8,
          child: buildCreateNewAccount(),
        ),
      ],
    );
  }

  ElevatedButton buildCreateNewAccount() {
    return ElevatedButton(
      style: Myconstant().myButtonStyle(),
      onPressed: () {
        if (formkey.currentState!.validate()) {
          // if (typeUser == null) {
          //   print('Non Choose Type User');
          //   MyDialog().normalDialog(context, 'ยังไม่ได้เลือก ', message)
          // } else {
          //   print('Process Insert to Database');
          // }
        }
      },
      child: Text('Create Account'),
    );
  }

  Row buildLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
          title: 'Already have a account ?',
          textStyle: Myconstant().h2Style(),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, Myconstant.routeAuthen),
          child: Text('Login '),
        ),
      ],
    );
  }

  Container buildTitle(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: ShowTitle(
        title: title,
        textStyle: TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }
}
