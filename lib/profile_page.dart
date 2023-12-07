import 'package:flutter/material.dart';
import 'package:selamat/styles.dart';
import 'package:selamat/widget/custom_image_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
              child: Column(
            children: [
              // _buildSection1(context),
              SizedBox(
                height: 18.0,
              ),
              _buildSection2(context),

              SizedBox(
                height: 18.0,
              ),
              Container(
                height: 169.0,
                width: 365.0,
                decoration: BoxDecoration(
                    color: AppColors.blue1,
                    borderRadius: BorderRadius.circular(12.0)),
              ),

              SizedBox(
                height: 18.0,
              ),
              Container(
                height: 337.0,
                width: 365.0,
                decoration: BoxDecoration(
                    color: AppColors.blue2,
                    borderRadius: BorderRadius.circular(12.0)),
              ),

              SizedBox(
                height: 18.0,
              ),
              Container(
                height: 77.0,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: AppColors.blue1,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

//SECTION1
Widget _buildSection1(BuildContext context) {
  return Container(
    decoration: AppDecoration.fillBlue3,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 5.0,
        ),
        Container(
          height: 15.0,
          width: double.maxFinite,
          decoration: BoxDecoration(color: Colors.blue),
        )
      ],
    ),
  );
}

//SECTION 2
Widget _buildSection2(BuildContext context) {
  return Container(
    width: 365.0,
    margin: EdgeInsets.symmetric(horizontal: 17),
    padding: EdgeInsets.symmetric(
      horizontal: 21,
      vertical: 26,
    ),
    decoration: AppDecoration.fillBlue2
        .copyWith(borderRadius: BorderRadius.circular(12.0)),
    child: CustomImageView(
      Image.asset(
        'assets/images/login-page.png',
        height: 146.0,
        width: 147.0,
      ),
    ),
    // child: CustomImageView(
    //   imagePath: ImageConstant.imgEllipse2,
    //   height: 146,
    //   width: 147,
    //   radius: BorderRadius.circular(
    //     8.0
    //   ),
    // ),
  );
}
