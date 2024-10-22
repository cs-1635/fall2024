import 'package:flutter/cupertino.dart';

import 'package:mvvm_example_with_provider/services/services.dart';
import 'package:mvvm_example_with_provider/view_model/pictures_view_model.dart';


class ListPicturesViewModel extends ChangeNotifier {

  List<PicturesViewModel> pictures = <PicturesViewModel>[];

  Future<void> fetchPictures() async{
    final api = await PicsumService().fetchPicturesApi();

    this.pictures = api.map((e) => PicturesViewModel(e)).toList();

    notifyListeners();
  }

}
