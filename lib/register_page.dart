import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Register'),

              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return 'Please Enter Your Email';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return 'Please Enter Your Password';
                  }
                  return null;
                },
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, '/Login');
                },
                child: Text('Register')),

              TextButton(
                onPressed: () {
                  Navigator.pop(context, '/login');
                },
                child: Text('Sudah Memiliki Akun? Login Sekarang!!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
