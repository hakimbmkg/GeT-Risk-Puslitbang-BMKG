import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kegiatan_rekayasa_litbanggeo/client/getdata.dart';
import 'package:we_slide/we_slide.dart';

void main() => runApp(LocalEqPage());

class LocalEqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GeT - Risk Puslitbang BMKG',
      home: EqLocalView(),
    );
  }
}

class EqLocalView extends StatefulWidget {
  @override
  _EqLocalViewState createState() => _EqLocalViewState();
}

class _EqLocalViewState extends State<EqLocalView> {
  CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));
  GoogleMapController mapController;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final WeSlideController _controller = WeSlideController();
    final double _panelMinSize = 127.0;
    final double _panelMaxSize = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: WeSlide(
        controller: _controller,
        panelMinSize: _panelMinSize,
        panelMaxSize: _panelMaxSize,
        body: _body(),
        panel: _panel(),
        panelHeader: _panelHeader(),
      ),
    );
  }

  Widget _panel() {
    final cardSize = MediaQuery.of(context).size.height * 0.4;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.5, 3.5],
        colors: [
          Colors.white,
          Colors.white,
        ],
      )),
      child: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).padding.top),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                  children: <Widget>[
                    Text(
                      """103 km BaratLaut TUAL-MALUKU """,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )
                  ],
                )),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: cardSize,
              width: cardSize,
              child: Image.network(
                  "https://ews.bmkg.go.id/tews/data/20210428202350.mmi.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Wurkit",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _panelHeader() {
    return Container(
      color: Colors.white,
      child: AnimatedContainer(
        duration: Duration(microseconds: 200),
        height: 100.0,
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => widget,
                  child: Container(
                    width: 70,
                    height: 92,
                    child: Image.network(
                        "https://ews.bmkg.go.id/tews/data/20210428202350.mmi.jpg",
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '28-04-21 | 09:57:28 WIB',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(width: 8, height: 8),
                      Text(
                        '103 km BaratLaut TUAL-MALUKU',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  '5.0',
                  style: TextStyle(fontSize: 60, color: Colors.black),
                ),
                SizedBox(width: 20)
              ],
            ),
            Divider(color: Colors.white, height: 1),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: Colors.black45,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            GoogleMap(
              initialCameraPosition: _initialLocation,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              mapType: MapType.normal,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
              // polylines: Set<Polyline>.of(polyline.values),
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
            ),
          ],
        ),
      ),
    );
  }
}
