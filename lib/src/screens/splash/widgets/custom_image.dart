import 'package:flutter/cupertino.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Image.asset(url, 
      height: 400, 
      fit: BoxFit.fitHeight, 
      width: double.infinity
    );
  }
}