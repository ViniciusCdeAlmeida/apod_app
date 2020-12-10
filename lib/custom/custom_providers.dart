import 'package:apod_app/providers/apods.dart';
import 'package:apod_app/stores/apod_store.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers() => [
      Provider(
        create: (ctx) => Apods(),
      ),
      Provider(
        create: (ctx) => ApodStore(Apods()),
      ),
    ];
