import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hicheel/stopwatch.dart';

class LoginScreen extends StatefulWidget {
  static const route = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loggedIn = false;
  late String name;
  final _nameConrtoller = TextEditingController();
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nevtreh'),
      ),
      body: Center(
        child: loggedIn ? _buildSuccess() : _buildLoginForm(),
      ),
    );
  }

  Widget _buildSuccess() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Icon(
          Icons.check,
          color: Colors.orange,
        ),
        Text('Sain bnuu $name ta amjiltttai nevterlee'),
      ],
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameConrtoller,
              decoration: const InputDecoration(labelText: 'Net'),
              validator: (text) => text!.isEmpty ? 'Ta utga oruulna uu' : null,
            ),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: 'email'),
              validator: (text) {
                if (text!.isEmpty) {
                  return 'ta email ee oruulnuu.';
                }
                final regex = RegExp('[^@]+@[^\.]+\..+');
                if (!regex.hasMatch(text)) {
                  return 'ta email ee zuv oruuln uu';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _validate,
              child: const Text('Vrgeljleh'),
            ),
          ],
        ),
      ),
    );
  }

  void _validate() {
    final form = _formKey.currentState;
    if (!form!.validate()) {
      return;
    }
    final name = _nameConrtoller.text;
    final email = _emailController.text;
    Navigator.of(context).pushReplacementNamed(
      StopWatch.route,
      arguments: StopWatch(name: name, email: email),
      // MaterialPageRoute(
      //   builder: (_) => StopWatch(name: name, email: email),
      // ),
    );
  }
}
