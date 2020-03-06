import 'package:basic_design/widgets/title_info_widget.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Column(
          children: <Widget>[
          _createImage(),
          TitleInfoWidget(), 
          _createAction(),
          _createTextDate(),
          _createTextDate(),
          _createTextDate(),
          _createTextDate(),
          _createTextDate(),
        ]
       ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/ESO-VLT-Laser-phot-33a-07.jpg/1200px-ESO-VLT-Laser-phot-33a-07.jpg'),
      ),
    );
  }
 
  Widget  _createAction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createActionBottom(Icons.call, 'CALL'),
        SizedBox(height: 10.0,),
        _createActionBottom(Icons.near_me, 'ROUTE'),
         SizedBox(height: 10.0,),
        _createActionBottom(Icons.share, 'SHARE'),
      ],
    );
  }


  Widget _createActionBottom(IconData icon, String text){

    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: 40.0,),
            Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
          ],
        );

  }

Widget _createTextDate() {
  return SafeArea(
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text('De noche se ve como una borrosa banda de luz blanca alrededor de toda la esfera celeste. El fenómeno visual de la Vía Láctea se debe a estrellas y otros materiales que se hallan sobre el plano de la galaxia, como el gas interestelar. La Vía Láctea aparece más brillante en la dirección de la constelación de Sagitario, ya que hacia allí se ubica su núcleo.', textAlign: TextAlign.justify)
    ),
  );
}
}
