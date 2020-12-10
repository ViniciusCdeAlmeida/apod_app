import 'package:apod_app/custom/custom_detail_sliverBar.dart';
import 'package:apod_app/helpers/apod.dart';
import 'package:apod_app/stores/apod_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//Screen to get the data and pass to the widget
class ApodDetailScreen extends StatefulWidget {
  static const routeName = '/apod_detail_screen';
  @override
  _ApodDetailScreenState createState() => _ApodDetailScreenState();
}

class _ApodDetailScreenState extends State<ApodDetailScreen> {
  Apod apod;
  ApodStore _apodStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _apodStore = Provider.of<ApodStore>(context, listen: false);
  }

  Future<void> _saveApod(Apod apod) async {
    try {
      _apodStore.saveApod(apod);
      Navigator.of(context).pop();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    apod = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          DetailSliverAppBar(
            title: apod.title,
            image: apod.url,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              _buildApod(apod, _saveApod),
            ),
          ),
        ],
      ),
    );
  }
}

List _buildApod(Apod apod, Function funcApod) {
  List<Widget> apods = [];
  apods.add(
    Container(
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'date: ${apod.date}',
              ),
              Text(
                apod.explanation,
                textAlign: TextAlign.justify,
              ),
              RaisedButton(
                child: Text('Save'),
                onPressed: () {
                  funcApod(apod);
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
  return apods;
}
