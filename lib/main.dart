import 'package:flutter/material.dart';

import 'package:universal_platform/universal_platform.dart';

import 'material/material_widget.dart';
import 'cupertino/cupertino_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //! Android
    if (UniversalPlatform.isAndroid) {
      debugPrint("Android");
      // ? Material UI Presentation
      return MaterialWidge(key: super.key, message: 'Hi Android with Material!');
      // ? Cupertino UI Presentation
      // return CupertinoWidget(key: super.key, message: 'Hi Android with Cupertino!');
    }
    //! iOs
    else if (UniversalPlatform.isIOS) {
      debugPrint("isIOS");
      // ? Material UI Presentation
      //return MaterialWidge(key: super.key, message: 'Hi iOS with Material!');
      // ? Cupertino UI Presentation
      return CupertinoWidget(key:super.key, message: 'Hi iOS with Cupertino!');
    }
    //! Web
    else if (UniversalPlatform.isWeb) {
      debugPrint("Web");
      // ? Material UI Presentation
      return MaterialWidge(key: super.key, message: 'Hi Web!');
      // ? Cupertino UI Presentation
      //return CupertinoWidget(key: super.key, message: 'Hi Web!');
    }

    //! Desktop (Linux, Windows, Macintosh)
    //  isDesktop includeisWindows, isLinux and isMacOS
    else if (UniversalPlatform.isDesktop) {
      debugPrint("Desktop");
      // ? Material UI Presentation
      //return MaterialWidge(key: super.key, message: 'Hi Computers!');
      // ? Cupertino UI Presentation
      return  CupertinoWidget(key: super.key, message: 'Hi Computers!',);
    }

    //! Fuchshia
    else if (UniversalPlatform.isFuchsia) {
      debugPrint("Fuchsia");
      // ? Material UI Presentation
      return MaterialWidge(key : super.key, message: 'Hi Fuchsia!');
      // ? Cupertino UI Presentation
      // return CupertinoWidget(key: super.key, message: 'Hi Fuchsia!');
    }

    return Container(); // Incase none of the if statements is true
  }


}