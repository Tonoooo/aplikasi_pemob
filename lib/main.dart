import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// ---
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Profile App',
      theme: ThemeData.dark().copyWith(
      primaryColor: Colors.deepPurple,
      scaffoldBackgroundColor: const Color(0xFF121212),
      cardColor: const Color(0xFF1E1E1E),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF1E1E1E),
        elevation: 2,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: ThemeData.dark().textTheme.apply(
            fontFamily: 'Bitcount',
            bodyColor: Colors.white70,
            displayColor: Colors.white,
          ),
      iconTheme: const IconThemeData(color: Colors.deepPurpleAccent),
    ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 10,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/9919?v=4',
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Hendriansyah',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Mahasiswa',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email, color: Colors.deepPurpleAccent),
                  SizedBox(width: 6),
                  Text(
                    'hendri@gmail.com',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Card(
                color: Theme.of(context).cardColor,
                elevation: 2,
                child: const ListTile(
                  leading: Icon(Icons.info_outline,
                      color: Colors.deepPurpleAccent),
                  title: Text(
                    'Tentang Saya',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Saya sedang belajar menggunakan Flutter untuk membuat aplikasi menarik.',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
