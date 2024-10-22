import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_example_with_provider/view_model/pictures_view_model.dart';

class SinglePictureWidget extends StatefulWidget {
  const SinglePictureWidget({
    Key? key,
    required this.picturesViewModel,
  }) : super(key: key);

  final PicturesViewModel picturesViewModel;


  @override
  State<SinglePictureWidget> createState() => _SinglePictureWidgetState();
}

class _SinglePictureWidgetState extends State<SinglePictureWidget> {


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 0, 4),
      child: Container(
          width: 200,
          color: Colors.grey,
          child: CachedNetworkImage(imageUrl: "${widget.picturesViewModel.picsumModel!.downloadUrl}", fit: BoxFit.cover,)
      ),
    );
  }
}
