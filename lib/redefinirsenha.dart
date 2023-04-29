import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Esqueceu a senha',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ForgotPasswordPage(),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esqueceu a senha'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Text('Digite seu e-mail abaixo para redefinir sua senha'),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Enviar'),
              onPressed: () {
                _resetPassword(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _resetPassword(BuildContext context) {
    // Aqui você pode implementar a lógica para redefinir a senha do usuário
    // Por exemplo, você pode enviar um e-mail de redefinição de senha para o endereço de e-mail fornecido.
    // Depois disso, você pode exibir uma mensagem de confirmação e retornar à tela de login.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Redefinição de senha'),
          content: Text('Um e-mail de redefinição de senha foi enviado para ${_emailController.text}'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}