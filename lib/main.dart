import 'dart:js';
import 'package:flutter/material.dart';
void main() => runApp(const MyGuide());
  
 class MyGuide extends StatelessWidget {
   const MyGuide({super.key});
   static const appTitle = " My Guide";

@override
   Widget build(BuildContext context) {
      return const MaterialApp(
      title: appTitle,
      home:MyHomePage(title: appTitle),
  );}}

 class MyHomePage extends StatelessWidget {
    const MyHomePage ({super.key, required this.title});
    final String title;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body:
      Container(
        margin: const EdgeInsets.only(left: 25, top: 25),
        width:360,
        height: 1000,
        child: Column(
            children: [
              Text( "Highlight Tour",
                  style:TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,)),
              SizedBox(height: 25),

              Text(" Ob gemalt, gehauen oder gegossen, ob Gemälde namhafter Künstler, antike Marmorskulpturen oder Bronzeplastiken aus Renaissance und Barock – lernen Sie auf dieser Tour erstklassige Meisterwerke beider Sammlungen kennen.",
                  textAlign: TextAlign.left,
                  style:TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 25),

              Text.rich(TextSpan (
                  children: [
                    WidgetSpan(child: SizedBox(width: 32,)),
                    TextSpan (text:" Gebäude:  ",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w900)),
                    TextSpan(text: "Semperbau",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500)),])),
              SizedBox(height: 5),
              Text.rich(TextSpan(
                  children:[
                    WidgetSpan(child: SizedBox(width: 105,)),
                    TextSpan(text: "Sammlung:  ",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w900)),
                    TextSpan( text:"  Gemälde Alte Meister",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500)),])),
              SizedBox(height: 5),

              Text.rich(TextSpan(
                  children: [
                    WidgetSpan(child: SizedBox(width: 0,)),
                    TextSpan(text:" Dauer:",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w900)),
                    TextSpan(text:"  1 Stunde",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500))])),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed:null,
                style: TextButton.styleFrom(
                    minimumSize: const Size.square(45),
                    backgroundColor: Colors.white,
                    side:BorderSide(color:Colors.red, width:3),
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(18.0))),
                child:
                Text.rich(TextSpan(
                  children: [
                    WidgetSpan(child: Icon(Icons.signpost_outlined, color:Colors.red)),
                    TextSpan(text:'  TOUR STARTEN',style: TextStyle(fontWeight:FontWeight.w900,color: Colors.red)),],)),),
              SizedBox(height: 30),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const  TourDetails()),
                    );},
                  style: TextButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: Colors.white,
                    side:BorderSide(color:Colors.red, width:3),
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(18.0)),),
                  child: Text.rich ( TextSpan(
                      children: [
                        WidgetSpan(child: Icon(color:Colors.red,IconData(0xe414, fontFamily: 'MaterialIcons', ))),
                        WidgetSpan(child: SizedBox(width: 20),),
                        TextSpan(text:"  Herzlich Willkommen  ",
                            style:TextStyle(fontWeight:FontWeight.w900,color: Colors.black)),
                        WidgetSpan(child: SizedBox(width: 60),),
                        WidgetSpan(child: Icon(Icons.navigate_next, color:Colors.red))
                      ]))),
              SizedBox(height: 10),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const  Madonna()),
                    );
                  },
                  style: TextButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: Colors.white,
                    side:BorderSide(color:Colors.red, width:3),
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(18.0)),),
                  child: Text.rich ( TextSpan(
                      children: [
                        WidgetSpan(child:Image.asset('images/madonna.png',width: 30, height: 30)),
                        WidgetSpan(child: SizedBox(width: 10),),
                        TextSpan(text:"  Sixtinische Madonna  ",
                            style:TextStyle(fontWeight:FontWeight.w900,color: Colors.black)),
                        WidgetSpan(child: SizedBox(width: 60),),
                        WidgetSpan(child: Icon(Icons.navigate_next, color:Colors.black))]))),
              SizedBox(height: 10),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const  Madchen()));
                  },
                  style: TextButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: Colors.white,
                    side:BorderSide(color:Colors.red, width:3),
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(18.0)),),
                  child: Text.rich ( TextSpan(
                      children: [
                        WidgetSpan(child: Image.asset('images/madchen.png', width: 30, height: 30)),
                        WidgetSpan(child: SizedBox(width: 5),),
                        TextSpan(text:"  Das Schokoladenmädchen  ",
                            style:TextStyle(fontWeight:FontWeight.w900,color: Colors.black)),
                        WidgetSpan(child: SizedBox(width: 25),),
                        WidgetSpan(child: Icon(Icons.navigate_next, color:Colors.black))]))),
              SizedBox(height: 10),
              Padding(
                  padding:EdgeInsets.all(0),
                  child:
                  OutlinedButton(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> const Weg()));
                  },
                      style: TextButton.styleFrom(
                        minimumSize: const Size.fromHeight(55),
                        backgroundColor: Colors.white,
                        side:BorderSide(color:Colors.red, width:3),
                        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(18.0)),),
                      child: Text.rich ( TextSpan(
                          children: [
                            WidgetSpan(child: Icon(Icons.place, color:Colors.red)),
                            WidgetSpan(child: SizedBox(width: 15),),
                            TextSpan(text:"  Wegbeschreibung 1  ",
                                style:TextStyle(fontWeight:FontWeight.w900,color: Colors.black)),
                            WidgetSpan(child: SizedBox(width: 22),),
                            WidgetSpan(child: SizedBox(width: 44),),
                            WidgetSpan(child: Icon(Icons.navigate_next, color:Colors.black))]))) )
            ]),),

      appBar: new AppBar(
        //leading: new Icon(Icons.menu),
        backgroundColor: Colors.red,
        title: (Text(title))
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             DrawerHeader(
              decoration:BoxDecoration(
                image: DecorationImage(
                  fit:BoxFit.fill,
                  colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6),BlendMode.modulate),
                  image:AssetImage('images/3.png' ),
                )

        ),
              child: Text('Menü',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            ListTile(
              title: const Text('Ticketshop', style:TextStyle(fontWeight: FontWeight.w400)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Tickets()));
              },
            ),
            ListTile(
              title: const Text('Kontakt', style:TextStyle(fontWeight: FontWeight.w400)),
              onTap: () {
                Navigator.pop(context);
                },),
            ListTile(
              title: const Text('Über uns', style:TextStyle(fontWeight: FontWeight.w400)),
              onTap: () {
                Navigator.pop(context);
              },)

            ,],),)); } }

class TourDetails extends StatelessWidget {
   const TourDetails({super.key});
   @override
   Widget build(BuildContext context) {
     return Scaffold(

       appBar: AppBar (
         title: const Text('Tour Details'),
         backgroundColor: Colors.redAccent.shade100,
       ),

       body:Container (
         decoration: BoxDecoration(
             image: DecorationImage(
              image: AssetImage('images/zwinger.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6),BlendMode.modulate))),

         child :Column(

           children: [
             SizedBox(height: 10,),
             Text(' Herzlich Willkommen im Zwinger!', style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize:25)),
             SizedBox(height: 340),
             Text(' Bis heute prägt der Dresdner Zwinger das Stadtbild und erinnert wie \nkein anderes Gebäude an die prunkvolle Barockzeit. Auf Wunsch Augusts des Starken entstand zwischen der inneren und äußeren Befestigungsmauer ein höfisches Gesamtkunstwerk, das Matthäus Daniel Pöppelmann und Balthasar Permoser statt einer schlichten Orangerie schufen.\n Anstelle des geplanten Schlossanbaus traten Gemäldegalerie und Semperoper.',  style:TextStyle(backgroundColor:Colors.black45,color:Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
             SizedBox(height: 10,),
             ElevatedButton( onPressed: ()  {
               Navigator.pop(context);},
                 style: TextButton.styleFrom( backgroundColor: Colors.red),
                 child:const Text('zurück')),

]
       )
     ));
   }}

class Madonna extends StatelessWidget {
  const Madonna ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar (
          title: const Text('Die Sixtinische Madonna'),
          backgroundColor: Colors.redAccent.shade100,
        ),
        body:Container (
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/madonna.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6),BlendMode.modulate))),

            child :Column(

                children: [
                  Text(' Sixtinische Madonna ', style: TextStyle(color:Colors.black26,fontWeight: FontWeight.bold, fontSize:25)),
                  SizedBox(height: 300),
                  Text(' Die Sixtinische Madonna von Raffael ist eines der berühmtesten Gemälde der italienischen Renaissance.\n Es befindet sich in der Gemäldegalerie Alte Meister in den Staatlichen Kunstsammlungen Dresden, nachdem es 1754 von König August III. angekauft worden war. \n Das Gemälde in seiner Gesamtheit ist vielen Menschen weniger geläufig als die beiden Puttenfiguren am unteren Bildrand (Raffaels Engel), die als eigenständiges Motiv millionenfach in der Werbewirtschaft oder als Poster und Postkarten in der Alltagskultur auftauchen.', style:TextStyle(color:Colors.black54, fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  ElevatedButton( onPressed: ()  {
                    Navigator.pop(context);},
                      style: TextButton.styleFrom( backgroundColor: Colors.red),
                      child:const Text('zurück')),


                  //
                ]
            )
        ));
  }}

class Madchen extends StatelessWidget {
  const Madchen ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar (
          title: const Text('Das Schokoladenmädchen'),
          backgroundColor: Colors.redAccent.shade100,
        ),
        body:Container (
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/madchen.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6),BlendMode.modulate))),

            child :Column(
                children: [
                  Text(' Das Schokoladenmädchen ', style: TextStyle(color:Colors.black26,fontWeight: FontWeight.bold, fontSize:25)),
                  SizedBox(height: 300),
                  Text('Das Wiener Schokoladenmädchen (La Belle Chocolatière de Vienne), eine Pastellmalerei auf Pergament (82,5 × 52,5 cm) von Jean-Étienne Liotard, entstand zwischen 1743 und 1745, vielleicht Dezember 1744.\n Der Künstler hielt sich in dieser Zeit auf Wunsch der Kaiserin Maria Theresia in Wien auf.[2] Hier malte er sein berühmtestes Pastellbild, das Porträt eines Stubenmädchens.\n Es ist Teil der Sammlung der Gemäldegalerie Alte Meister in Dresden. ', style:TextStyle(color:Colors.black54, fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  ElevatedButton( onPressed: ()  {
                    Navigator.pop(context);},
                      style: TextButton.styleFrom( backgroundColor: Colors.red),
                      child:const Text('zurück')),


                  //
                ]
            )
        ));
  }}

class Weg extends StatelessWidget {
  const Weg ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar (
          title: const Text('Ausstelungen'),
          backgroundColor: Colors.redAccent.shade100,
        ),
        body:  SingleChildScrollView(
        child: Container (
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/museum.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6),BlendMode.modulate))),

            child :Column(

                children: [
                  Text(' Ausstelungen ', style: TextStyle(color:Colors.black26,fontWeight: FontWeight.bold, fontSize:25)),
                  SizedBox(height: 80),
                  Row( children: [
                        Text(' Gemäldegalerie \n Alte Meister und Skulpturensammlung bis 1800', style:TextStyle(color:Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(width: 2),
                      ],),
                        Row(children:
                        [
                          Image.asset('images/babel.jpg', width:150,height: 200,),
                          Image.asset('images/baby.jpg', width: 150,height: 200,),
                          Image.asset('images/adler.jpg', width: 150,height: 200,),
                        ]),
                  SizedBox(height: 3),
                        Column(children: [
                          Text(' Reise ins Jenseits:\n Ägyptische Grabkunst aus der Dresdner Skulpturensammlung', style:TextStyle(color:Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 2),
                          Image.asset('images/egypt.jpg', width: 350,height: 150),


                        ]),
                  SizedBox(height: 5),

                  SizedBox(width: 10),
                 Row(children:
                 [ElevatedButton( onPressed: ()  {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const Tickets()));},
                     style: TextButton.styleFrom( backgroundColor: Colors.red),
                     child:const Text('zu Tickets')),
                   SizedBox(width: 10),
                   ElevatedButton( onPressed: ()  {
                     Navigator.pop(context);},
                       style: TextButton.styleFrom( backgroundColor: Colors.red),
                       child:const Text('zurück')),

                 ])


                ]))));}}

class Tickets extends StatelessWidget {
  const Tickets ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text('Tickets'),
        backgroundColor: Colors.redAccent.shade100,
      ),
      body:Container(
        width:900,
          height: 1000,
          margin:EdgeInsets.zero,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/museum.png"),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6),BlendMode.modulate))),
        child:
          Row(
            children: [
              SizedBox(width:30),
              Text('regulär: \n  14€', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                  ),
              SizedBox(width:10),
              Text('ermäßigt: \n  10.50€',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                  ),
              SizedBox(width: 10,),
              Text('unter 17: \n  frei', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                  ),
              SizedBox(width: 10,),
              Text('ab 10.Person: \n  12.50€',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                  ),])));}}
        