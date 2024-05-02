import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

TextEditingController userController = TextEditingController();
TextEditingController passController = TextEditingController();
String user = "RamaLowden";
String pass = "Ferro123";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Logueo",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
              TextField(
                controller: userController,
                decoration: const InputDecoration(
                  hintText: 'Usuario',
                  icon: Icon(Icons.person)
                  ),
              ),
              TextField(
                controller: passController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Contraseña',
                  icon: Icon(Icons.key)
                  ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  if(userController.text == user && passController.text == pass){
                    context.go('/home');
                  }
                  else if(userController.text == '' && passController.text == ''){
                    print('Usuario y Contraseña sin respuesta');
                  }
                  else if(userController.text == ''){
                    print('Usuario sin resuesta');
                  }
                  else if(passController.text == ''){
                    print('Contraseña sin respuesta');
                  }
                  else if(userController.text != user){
                    print('incorrecto');
                  }
                  else if(passController.text != pass){
                    print('incorrecto');
                  }
                }, 
                child: const Text("Login")
              ),
            ],
          )
        )
    );
  }
}