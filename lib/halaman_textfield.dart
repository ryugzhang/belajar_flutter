import 'package:flutter/material.dart';

class HalamanTextField extends StatefulWidget {
  const HalamanTextField({Key? key}) : super(key: key);

  @override
  State<HalamanTextField> createState() => _HalamanTextFieldState();
}

class _HalamanTextFieldState extends State<HalamanTextField> {
  String textbutton = "Maaf tombol yang anda tuju sedang sibuk atau berada di luar jangkauan silahkan coba selama lamanya";
  String username = "username";
  String no_hp = "no_hp";
  String password = "password";
  String email = "email";

  TextEditingController controller_username = TextEditingController();
  TextEditingController controller_no_hp = TextEditingController();
  TextEditingController controller_password = TextEditingController();
  TextEditingController controller_email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Halaman TextField"),

                TextField(
                  controller: controller_username,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    hintText: "Masukkan Username Anda"
                  ),
                ),

                SizedBox(height: 15,),

                TextField(
                  controller: controller_no_hp,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "No HP",
                  ),
                ),

                SizedBox(height: 15,),

                TextField(
                  controller: controller_password,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                ),

                SizedBox(height: 15,),

                TextField(
                  controller: controller_email,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.pink.withOpacity(0.2),
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    labelText: "E-mail",
                  ),
                ),

                SizedBox(height: 15,),

                ElevatedButton(
                    onPressed: (){
                      setState((){
                        username = controller_username.text;
                        no_hp = controller_no_hp.text;
                        password = controller_password.text;
                        email = controller_email.text;

                        if(username == "" || no_hp == "" || password == "" || email == "" ){
                          textbutton = "Maaf tombol yang anda tuju sedang sibuk atau berada di luar jangkauan silahkan coba selama lamanya";
                        }else{
                          textbutton = "Selamat kamu tidak gagal";
                        }
                      });
                    },
                    child: Text(textbutton),
                ),

                Text(username),
                Text(no_hp),
                Text(password),
                Text(email),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
