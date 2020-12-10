import 'package:apod_app/custom/custom_search_sliverBar.dart';
import 'package:apod_app/stores/apod_store.dart';
import 'package:apod_app/widgets/apod_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

//Screen to get the data and pass to the widget
class ApodSavedScreen extends StatefulWidget {
  static const routeName = '/apod_saved_screen';

  @override
  _ApodSavedScreenState createState() => _ApodSavedScreenState();
}

class _ApodSavedScreenState extends State<ApodSavedScreen> {
  ApodStore _apodStore;

  @override
  void didChangeDependencies() {
    _apodStore = Provider.of<ApodStore>(context, listen: false);
    _apodStore.getSavedApods();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    _apodStore = Provider.of<ApodStore>(context, listen: false);
    return Scaffold(
      body: Observer(
        // ignore: missing_return
        builder: (_) {
          switch (_apodStore.apodSavedState) {
            case ApodState.initial:
            case ApodState.loading:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ApodState.empty:
              return Center(
                child: Text('VAZIO'),
              );
            case ApodState.loaded:
              return CustomScrollView(
                slivers: [
                  SearchSliverAppBar(
                    title: 'Pictures saved',
                    filter: _apodStore.filterApods,
                    clean: _apodStore.cleanSavedFilterd,
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      _apodStore.apodsSaved
                          .map(
                            (apod) => Padding(
                              padding: const EdgeInsets.all(8.0),
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
    );
  }
}
