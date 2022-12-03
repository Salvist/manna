import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginFormKey = GlobalKey<FormState>();

  String? email;
  String? password;
  bool _obscurePassword = true;
  void _toggleObscurePassword() => setState(() {_obscurePassword = !_obscurePassword;});
  Icon get _visibilityIcon => _obscurePassword ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('LOGIN'),

            SizedBox(
              width: 400.0,
              child: Form(
                key: _loginFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        label: Text('Email')
                      ),
                      validator: (value) => value!.isEmpty ? 'Please enter your email' : null,
                      onSaved: (newValue) => email = newValue,
                    ),
                    const SizedBox(height: 16.0,),
                    TextFormField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password),
                        label: const Text('Password'),
                        suffixIcon: IconButton(
                          onPressed: _toggleObscurePassword,
                          icon: _visibilityIcon
                        )
                      ),
                      validator: (value) => value!.isEmpty ? 'Please enter your password' : null,
                      onSaved: (newValue) => password = newValue,
                    ),
                    const SizedBox(height: 32.0,),
                    SizedBox(
                      width: 400.0,
                      child: ElevatedButton(
                        onPressed: (){
                          context.go('/home');
                        },
                        child: const Text('Login'),
                      ),
                    )
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
