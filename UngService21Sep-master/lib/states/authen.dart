import 'package:flutter/material.dart';
import 'package:ungservice/utility/my_constant.dart';
import 'package:ungservice/widgets/show_image.dart';
import 'package:ungservice/widgets/show_title.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: Container(
          decoration: MyConstant().imageBox(),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildImage(),
                  buildAppName(),
                  buildUser(),
                  buildPassword(),
                  buildLogin(),
                  buildCreateAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row buildCreateAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ShowTitle(title: 'Non Account ?'),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/createAccount');
          },
          child: const Text(' Create Account'),
        ),
      ],
    );
  }

  Container buildLogin() {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: 250,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Login'),
        style: MyConstant().mainStyle(),
      ),
    );
  }

  Container buildUser() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: const EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
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

  ShowTitle buildAppName() => ShowTitle(
        title: MyConstant.appName,
        textStyle: MyConstant().h1Style(),
      );

  Container buildImage() {
    return Container(
      width: 250,
      child: const ShowImage(),
    );
  }
}
