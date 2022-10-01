import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

//you can write it anywhere outside the class
// Future<void> _launchUrl(_url) async {
//   if (!await launchUrl(_url)) {
//     throw 'Could not launch $_url';
//   }
// }

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 129, 8, 177),
      colorScheme: ColorScheme.light(),
      appBarTheme: AppBarTheme(
        backgroundColor: Color.fromARGB(255, 174, 214, 248),
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 167, 9, 230),
      colorScheme: ColorScheme.dark(),
      appBarTheme: AppBarTheme(
        backgroundColor: Color.fromARGB(248, 224, 188, 246),
      ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeClass.darkTheme,
      // darkTheme: ThemeClass.darkTheme,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Portfolio",
                style: TextStyle(fontFamily: 'Dancing_script', fontSize: 40,
                fontWeight: FontWeight.bold, color:Colors.black,
                ),
                
                ),
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage(
                  'assets/kanika.png',
                ),
              ),
              const Text('Kanika Raheja',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Dancing_script',
                    color:Colors.black,

                  )),
              const Text(
                'MCA Student',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Dancing_script',
                  color:Colors.black,
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 251, 187, 250),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.email_outlined,
                    color: Colors.black,),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'raheja160kanika@gmail.com',
                      style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Dancing_script',
                ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'projects_page');
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 251, 187, 250),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.file_copy,
                      color: Colors.black,),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Projects',
                        style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Dancing_script',
                ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'get_in_touch_page');
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 251, 187, 250),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.connect_without_contact,
                      color: Colors.black,),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Get in Touch!!',
                        style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Dancing_script',
                ),
                      ),
                    ],
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
