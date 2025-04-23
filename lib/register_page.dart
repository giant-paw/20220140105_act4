import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                decoration: const InputDecoration(labelText: 'Email'),
              ),

              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
              ),

              ElevatedButton(onPressed: () {}, child: Text('Register')),

              TextButton(
                onPressed: () {},
                child: Text('Sudah Memiliki Akun? Login Sekarang!!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
