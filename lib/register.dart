import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 60, top: 70),
                child: const Text(
                  'Create,\nAccount',
                  style: TextStyle(fontSize: 33, color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.30,
                      left: 45,
                      right: 45),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Name',
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey,
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
