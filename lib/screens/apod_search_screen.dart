import 'package:apod_app/custom/custom_search_sliverBar.dart';
import 'package:apod_app/stores/apod_store.dart';
import 'package:apod_app/widgets/apod_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ApodSearchScreen extends StatefulWidget {
  static const routeName = '/apod_search_screen';
  @override
  _ApodSearchScreenState createState() => _ApodSearchScreenState();
}

class _ApodSearchScreenState extends State<ApodSearchScreen> {
  ApodStore _apodStore;
  DateTime _selectedDate;

  @override
  void didChangeDependencies() {
    _apodStore = Provider.of<ApodStore>(context, listen: false);
    super.didChangeDependencies();
  }

  //Picker a date
  void _pickDateDialog() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  //Submit a request to get a APOD
  Future<void> _submit() async {
    String _date = _selectedDate.year.toString() +
        '-' +
        _selectedDate.month.toString() +
        '-' +
        _selectedDate.day.toString();
    try {
      _apodStore.getApod(_date, _apodStore.hdImage.toString());
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    _apodStore = Provider.of<ApodStore>(context, listen: false);
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SearchSliverAppBar(
            title: 'Astronomy Picture of the Day',
            clean: _apodStore.cleanApods,
            filter: _apodStore.filterApod,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 8.0,
                      child: Container(
                        height: deviceSize.height / 3,
                        width: deviceSize.width,
                        padding: const EdgeInsets.all(15.0),
                        child: SingleChildScrollView(
                          physics: NeverScrollableScrollPhysics(),
                          child: Column(
                            children: <Widget>[
                              RaisedButton(
                                child: Text('Add Date'),
                                onPressed: _pickDateDialog,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(_selectedDate == null
                                  ? 'No date chosen!'
                                  : 'Selected Date: ${DateFormat.yMMMd().format(_selectedDate)}'),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('HD Image?'),
                                    Observer(
                                      builder: (_) => IconButton(
                                        icon: Icon(Icons.check_box,
                                            color: _apodStore.hdImage
                                                ? Theme.of(context)
                                                    .toggleableActiveColor
                                                : null),
                                        onPressed: () {
                                          _apodStore.hdImage
                                              ? _apodStore.hdImage = false
                                              : _apodStore.hdImage = true;
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              RaisedButton(
                                  child: Text('Search'), onPressed: _submit),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Observer(
                        // ignore: missing_return
                        builder: (_) {
                          switch (_apodStore.apodState) {
                            case ApodState.empty:
                            case ApodState.initial:
                              return Center(
                                child: Text('no data'),
                              );
                            case ApodState.loading:
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            case ApodState.loaded:
                              return CustomScrollView(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                slivers: [
                                  SliverList(
                                    delegate: SliverChildListDelegate(
                                      _apodStore.apods
                                          .map(
                                            (apod) => Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ApodItem(apod),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                ],
                              );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
