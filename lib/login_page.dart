import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body(){
    return Column(
      children: [
      SingleChildScrollView(        
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          child: Padding(
            padding: const EdgeInsets.all(8.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
      
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/imagens/logo.png')  
                ),
      
                const SizedBox(height: 20),

                TextField(
                  onChanged: (text) {
                    email = text;
                  },

                  keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      color: Colors.white,
                  ),

                  decoration: const InputDecoration(
                    labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.white,
                    ),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),

                  ),
                ),

                const SizedBox(height: 10),

                TextField(
                  onChanged: (text) {
                    password = text;
                  },

                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.white,
                  ),

                  decoration: const InputDecoration(
                    labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),

                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      
                  ),
                ),

                const SizedBox(height: 10),

                ElevatedButton(     
                  onPressed: () {
                    if (email == 'Victow3@gmail.com' && password == '123456') {
                      Navigator.of(context).pushReplacementNamed('/home');
                      print("Login feito com sucesso");
                    } else {
                      print("Login ou senha incorretos");
                    }
                  },

                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),

                  child: const Text('Entrar'),
                ),

              ],
            ),
          ),
        ),
      ),
    ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/imagens/background.png',
                fit: BoxFit.cover)

        ),

        Container(color: Colors.black.withOpacity(0.3)),

          _body(),
        ]
      )
    );
  }
}
