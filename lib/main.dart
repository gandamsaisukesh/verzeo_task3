import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Verzeo app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: Text("verzeo app"),
        //leading: Icon(Icons.home,size:35,color: Colors.black,),
        actions: [
          Icon(Icons.login,size: 35,color: Colors.black,),
        ],

      ),

      drawer: Drawer(
        child:Column(children:[
          Divider(thickness: 10,),
          ListTile(
            title:Text("Home"),
            trailing: Icon(Icons.home,color: Colors.redAccent,),
          ),
          Divider(thickness: 4,color: Colors.deepOrange,),
          ListTile(
            title:Text("Help"),
            trailing: Icon(Icons.help,color: Colors.redAccent,),
          ),
          Divider(thickness: 4,color: Colors.deepOrange,),
          ListTile(
            title:Text("Support"),
            trailing: Icon(Icons.support,color: Colors.redAccent,),
          ),
          Divider(thickness: 4,color: Colors.deepOrange,),
          ListTile(
            title:Text("Team"),
            trailing: Icon(Icons.people,color: Colors.redAccent,),
          ),
          Divider(thickness: 4,color: Colors.deepOrange,),
        ]) ,),
      body: Center(
        
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Text("Row view",style: TextStyle(color:Colors.black,fontSize:25.0),),
                Icon(Icons.headphones,size:85,color:Colors.black ,),
                Icon(Icons.library_books,size:85,color:Colors.red ,),
              ]
            ),
            Column(
              children: [
                Text("column view ",style: TextStyle(color:Colors.black,fontSize:25.0),),
                Icon(Icons.account_tree,size:65,color:Colors.lightGreen),
                Icon(Icons.menu,size:65,color:Colors.lightBlue,),
                
              ],

            ),
            
            Text("welcome to verzeo",style:TextStyle(color: Colors.red,fontSize:25.0),),
            SizedBox(
              height: 250,
              width: 200,
              child: Image.network("https://st2.depositphotos.com/1588037/7901/v/950/depositphotos_79015500-stock-illustration-panda-say-hii.jpg",)
              ),
              SizedBox(
                height: 250,
                width: 200,
                child: Image.network("https://image.shutterstock.com/image-vector/silhouette-dancers-simple-260nw-302757734.jpg")),
            const Text(
              'You have pushed the button this many times:',
            ),
            Icon(Icons.home,size:75,color:Colors.grey,),
            Padding(
              padding: const EdgeInsets.all(45.0),
              child: ElevatedButton(onPressed:(){

              }, child: Text("Press here to submit")),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
