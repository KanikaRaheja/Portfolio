import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(248, 224, 188, 246),
            title: const Text(
              'Get in Touch',
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontFamily: 'Dancing_Script',
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse('https://github.com/KanikaRaheja');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Card(child: ListTile(
                        leading :FlutterLogo(),
                        title: Text('Github'),
                        // subtitle:Text(
                        // 'Project to demonstrate what I learned in GDSC Flutter circle',
                        // ),
                      ),
                        
                      ),
                    ],
                  ),
                ),
              ),
              // const Divider(
              //   thickness: 2,
              // ),
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse('https://www.linkedin.com/in/kanika-raheja-331a7a1b2/');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Card(child: ListTile(
                        leading :FlutterLogo(),
                        title: Text('Linkedln'),
                        // subtitle:Text(
                        // 'Project to demonstrate what I learned in GDSC Flutter circle',
                        // ),
                      ),
                        
                      ),
                      
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse('https://www.instagram.com/rahejakanika/');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Card(child: ListTile(
                        leading :FlutterLogo(),
                        title: Text('Instagram'),
                        
                      ),
                        
                      ),
                      
                    ],
                  ),
                ),
              ),              
            ],
          )),
    );
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
