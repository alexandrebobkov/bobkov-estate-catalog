import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class ProjectsPage extends StatelessWidget {
  static final showGrid = true; // Set to false to show ListView

  @override
  Widget build(BuildContext context) {
    /*return Container (
      child: Row (
        children: <Widget> [
          Image.asset('assets/images/20200916_132932.jpg'),
        ],
      ),
    );*/
    return Scaffold (
      appBar: AppBar(title: Text("PROJECTS")),
      body: Center(child: showGrid ? _buildGrid() : _buildList()),
      /*body: Center(
        child:
        /*Text("Bobkov Estate Improvement Ltd.\n\n"
            "M060 - 1554 Carling Ave.\n"
            "Ottawa ON K1Z 7M4\n\n"
            "(819) 639 - 4478\n"
            "bobkovestateimprovement@gmx.com",
            textAlign: TextAlign.center),*/
        Image.asset(
          'assets/images/20200916_132932.jpg',
          fit: BoxFit.cover,
        ),
      ),*/
    );
  }

  // #docregion grid
  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(10),
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: _buildGridTileList(5));

// The images are saved with names pic0.jpg, pic1.jpg...pic29.jpg.
// The List.generate() constructor allows an easy way to create
// a list when objects have a predictable naming pattern.
  List<Container> _buildGridTileList(int count) => List.generate(
      count, (i) => Container(child: Image.asset('assets/images/project$i.jpg')));
// #enddocregion grid

// #docregion list
  Widget _buildList() => ListView(
    children: [
      _tile('CineArts at the Empire', '85 W Portal Ave', Icons.add_photo_alternate_outlined),
      _tile('The Castro Theater', '429 Castro St', Icons.add_photo_alternate_outlined),
      _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.add_photo_alternate_outlined),
      _tile('Roxie Theater', '3117 16th St', Icons.add_photo_alternate_outlined),
      _tile('United Artists Stonestown Twin', '501 Buckingham Way',
          Icons.add_photo_alternate_outlined),
      _tile('AMC Metreon 16', '135 4th St #3000', Icons.add_photo_alternate_outlined),
      Divider(),
      _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.add_photo_alternate_outlined),
      _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.add_photo_alternate_outlined),
      _tile(
          'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.add_photo_alternate_outlined),
      _tile('La Ciccia', '291 30th St', Icons.add_photo_alternate_outlined),
    ],
  );

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
    title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
// #enddocregion list
}
