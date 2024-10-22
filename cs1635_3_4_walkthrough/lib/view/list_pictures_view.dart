import 'package:flutter/cupertino.dart';
import 'package:mvvm_example_with_provider/view_model/list_pictures_view_model.dart';

import 'package:mvvm_example_with_provider/view/widgets/single_picture_widget.dart';

import 'package:provider/provider.dart';

class PictureListView extends StatefulWidget {
  const PictureListView({Key? key}) : super(key : key);

  @override
  State<PictureListView> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PictureListView> {


  @override
  void initState() {
    super.initState();
    Provider.of<ListPicturesViewModel>(context, listen: false).fetchPictures();
//you can use anything you like or not use anything here. I call it just to have a content on the screen rather than having a blank screen
  }


  @override
  Widget build(BuildContext context){

    final vm = Provider.of<ListPicturesViewModel>(context);


    final parentWidth = MediaQuery.of(context).size.width;

    final gridCount = parentWidth < 800 ? 2: 3;

    return CupertinoPageScaffold(
      navigationBar : CupertinoNavigationBar(
        middle: Text('Random Photos'),
      ),

      child: Column (children: <Widget>[

        Expanded(
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: vm.pictures!.length,

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: gridCount),
            itemBuilder: (BuildContext context, int index){
              final picture = vm.pictures[index];

              return SinglePictureWidget(picturesViewModel: picture);
            },
          )
        )

      ]),

    );
  }
}