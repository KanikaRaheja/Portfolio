import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(248, 224, 188, 246),
            title: const Text(
              ('My Projects'),
              style: TextStyle(fontFamily: 'Dancing_Script', fontSize: 40,color:Colors.black,),),
              // backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              
              // style: TextStyle(
              //   fontSize: 20,
              //   color: Colors.black,
              // ),
            
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
                  final Uri _url = Uri.parse('https://github.com/KAnikaRaheja');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Card(child: ListTile(
                        leading :FlutterLogo(),
                        title: Text('Project 1'),
                        subtitle:Text(
                        'Project to demonstrate what I learned in GDSC Flutter circle',
                        ),
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
                  final Uri _url = Uri.parse('https://github.com/KanikaRaheja');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Card(child: ListTile(
                        leading :FlutterLogo(),
                        title: Text('Project 2'),
                        subtitle:Text(
                        'Project to demonstrate what I learned in GDSC Flutter circle',
                        ),
                      ),
                        
                      ),
                      
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse('https://github.com/KanikaRaheja');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Card(child: ListTile(
                        leading :FlutterLogo(),
                        title: Text('Project 3'),
                        subtitle:Text(
                        'Project to demonstrate what I learned in GDSC Flutter circle',
                        ),
                      ),
                        
                      ),
                      
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse('https://github.com/KanikaRaheja');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Card(child: ListTile(
                        leading :FlutterLogo(),
                        title: Text('Project 4'),
                        subtitle:Text(
                        'Project to demonstrate what I learned in GDSC Flutter circle',
                        ),
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
