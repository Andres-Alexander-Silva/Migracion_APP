import 'package:flutter/material.dart';
import 'package:transito_seguro_app/custom_icons_icons.dart';
import 'package:transito_seguro_app/pages/carousel.dart';

class SideBarPage extends StatefulWidget {
  const SideBarPage({super.key});

  @override
  State<SideBarPage> createState() => _SideBarPageState();
}

class _SideBarPageState extends State<SideBarPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 34, 88),
          title: const Text(
            'Tránsito Seguro', 
            style: TextStyle(fontSize: 22, color: Colors.white)
          ),
          actions: const [
            TextButton(
              onPressed: null,
              child: Text(
                'Idioma / Language',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            )
          ],
        ),
        body: const Column(
          children: [
            CarouselPage()
          ]
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(255, 2, 34, 88),
          padding: const EdgeInsets.only(top: 6, bottom: 25, left: 5, right: 5),
          child: Image.asset(
            'assets/img/LogoMigraWhite.png',
            scale: 1,
            fit: BoxFit.contain,
          ),
        ),
        drawer: Drawer(
          width: 380,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(0, 5)
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(child:
                      Image.asset(
                        'assets/img/logo_migracion.png', 
                        scale: 0.5, 
                        fit: BoxFit.contain
                      )
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ]
                )
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'App Tránsito Seguro', 
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                )
              ) ,
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Selecciona una opción para\ncomenzar',
                  style: TextStyle(fontSize: 20)
                )
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                child: TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 2, 34, 88),
                    padding: const EdgeInsets.all(12)
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                child: TextButton(
                  onPressed: null, 
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 16, 61, 138),
                    padding: const EdgeInsets.all(12),
                  ),
                  child: const Text(
                    'Crear Cuenta',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ),
              const SizedBox(
                height: 300,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Visitanos en',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Redes Sociales',
                  style: TextStyle(fontSize: 20),
                )
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Row(
                  children: [
                    IconButton(
                      onPressed: null, 
                      icon: Icon(Icons.language, size: 45, color: Color.fromARGB(255, 2, 34, 88))
                    ),
                    IconButton(
                      onPressed: null, 
                      icon: Icon(CustomIcons.instagram, size: 45, color: Color.fromARGB(255, 2, 34, 88))
                    ),
                    IconButton(
                      onPressed: null, 
                      icon: Icon(Icons.facebook, size: 45, color: Color.fromARGB(255, 2, 34, 88))
                    ),
                    IconButton(
                      onPressed: null, 
                      icon: Icon(CustomIcons.twitter, size: 45, color: Color.fromARGB(255, 2, 34, 88))
                    ),
                    IconButton(
                      onPressed: null, 
                      icon: Icon(CustomIcons.youtube, size: 45, color: Color.fromARGB(255, 2, 34, 88))
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child:const Text(
                  'Copyrigth Migración Colombia',
                  style: TextStyle(fontSize: 16),
                )
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Desarrollado por AP SYSTEM',
                  style: TextStyle(fontSize: 16),
                )
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Version 1.0.0',
                  style: TextStyle(fontSize: 16),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}