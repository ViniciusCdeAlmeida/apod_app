import 'package:apod_app/stores/apod_store.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey();
  ApodStore _apodStore;

  DateTime _selectedDate;

  @override
  void didChangeDependencies() {
    _apodStore = Provider.of<ApodStore>(context, listen: false);
    super.didChangeDependencies();
  }

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

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    // try {
    //   if (!_loginStore.usuarioOffline) {
    //     _loginStore
    //         .login(
    //           _loginData['userName'],
    //           _loginData['password'],
    //         )
    //         .then(
    //           (_) => Navigator.of(context).pushNamed(
    //             OrganizacaoTela.routeName,
    //           ),
    //         )
    //         .catchError(
    //           (error) => erroDialog(context, error.toString()),
    //         );
    //   } else {
    //     _loginStore.logarOffline().then(
    //           (_) => Navigator.of(context).pushNamed(
    //             OrganizacaoTela.routeName,
    //           ),
    //         );
    //   }
    // } catch (error) {
    //   erroDialog(context, error.toString());
    // }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    _apodStore = Provider.of<ApodStore>(context, listen: false);
    return Scaffold(
      body: Column(
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
              child: Form(
                key: _formKey,
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
                      Text(_selectedDate ==
                              null //ternary expression to check if date is null
                          ? 'No date chosen!'
                          : 'Selected Date: ${DateFormat.yMMMd().format(_selectedDate)}'),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('HD Image?'),
                            IconButton(
                                icon: Icon(Icons.check_box,
                                    color: Theme.of(context)
                                        .toggleableActiveColor),
                                onPressed: () {})
                          ],
                        ),
                      ),
                      RaisedButton(child: Text('Search'), onPressed: _submit),
                      SizedBox(
                        height: 20,
                      ),
                      Observer(builder: (_) {
                        // switch (_apodStore.) {
                        // }
                      })
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
