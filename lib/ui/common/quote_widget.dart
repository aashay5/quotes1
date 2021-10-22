import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:quotes/ui/styleguide/theme_text.dart';

class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
  final String quote, author;
  const QuoteWidget({Key key, this.backgroundColor, this.quote, this.author}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 450, height: 660);
    return Container(
      width: ScreenUtil.screenWidthDp,
      color: backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16), vertical: ScreenUtil().setHeight(48)),
      child: Column(
        children: <Widget>[
          Image.asset('assets/quote_image.png',
            color: Colors.white.withOpacity(0.4),
            width: ScreenUtil().setWidth(100),
            height: ScreenUtil().setHeight(100),),
          Expanded(
            child: Center(
            child: Text(
            quote, style: ThemeText.headline,
            ),
            ),
          ),
          Center(
            child:Text(
            author, style: ThemeText.subhead,
            ),
          ),
        ],
      ),
    );
  }
}
