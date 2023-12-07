import 'package:flutter/material.dart';
import 'package:selamat/styles.dart';
import 'package:selamat/widget/custom_icon_button.dart';
import 'package:selamat/widget/custom_image_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class itemHomeWidget extends StatelessWidget {
  const itemHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 21.0, vertical: 17.0),
        decoration: AppDecoration.fillBlue2
            .copyWith(borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    'assets/images/home_page/img_arrow_left.svg',
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, top: 3.0, right: 5.0),
                    child: Text(
                      '16, Nov 2023 - 23, Nov 2023',
                      style: TextStyles.title,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/home_page/img_arrow_right.svg',
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CustomIconButton(
                            height: 40.0,
                            width: 40.0,
                            padding: EdgeInsets.all(8),
                          ),
                          SvgPicture.asset(
                              'assets/images/home_page/img_ic_outline_work.svg'),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, top: 9.0, bottom: 10.0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: '42 hrs', style: TextStyles.body),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: 'Work', style: TextStyles.body),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 40.0,
                            width: 40.0,
                            padding: EdgeInsets.all(8.0),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
