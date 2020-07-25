// Introducing the Concept of Hot Reload and packages! 
// Add dependencies of the packages like Statusbar and Toast in pubspec.yaml file, refer pub.dev site 


import 'package:flutter/material.dart';

import 'ui/home.dart';

main()
{
  runApp(MyHot());
}

class MyHot extends StatelessWidget{
  build(BuildContext context)
  {
    return MyApp();
  }
}
