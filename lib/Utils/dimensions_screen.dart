//THIS DART FILE IS FOR OUR APP TO FIT PERFECTLY INTO ANY DEVICE IRRESPECTIVE OF HEIGHT OR WIDTH
import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;

  //static double screenWidth = Get.context!.width;

  static double pageViewContainer =
      screenHeight / 3.84; // XThis indicates the height of the pageview slides
  //Now x is the height/the height of our pageview which is 220
  static double pageViewTextContainer =
      screenHeight / 7.03; //This is for the child container of the image 120

  //dynamic height padding and margin x is the num we set initially but here we divide the screen height by x
  //and then put the num here below screen height
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  //dynamic width padding and margin
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width40 = screenHeight / 84.4;

//font
  static double font26 = screenHeight / 32.46;
  static double font20 = screenHeight / 42.2;

//List view size
//static double listViewImgSize = screenHeight/6.03;
//static double listViewTxtSize = screenHeight/3.9;
}

/*NOT WE NEED TO CHANGE MATERIAL APP TO GETMATERIALAPP
  TO BE ABLE TO RUN THE CONTEXT

NOW LETS SAY YOU RUN THE APP ON ANOTHER PHONE AND YOU GET ERRORS FIND THE ERRORS AND REDUCE THE PIXELS
YOU CAN REDUCE E.G CONTAINER THE HEIGHT BY DIVIDING HEIGHT OF YOUR ORIGINALSCREEN  BY THE HEIGHT OF CONTAINER
CREATE A STATIC VAR AND THEN PASS IT AS YOUR HEIGHT
THIS APPLLIES ANYWHERE

WE CAN ALSO CHANGE WHATEVER WE WANT LIKE PADDING MARGING (THE HEIGHT AND WIDTH ) TO ENSURE
THE NEW SCREEN DISAPLAYS OUR APP LIKE THE SCREEN WE ORIGINALLY USED
 */
