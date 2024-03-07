import 'package:flutter/material.dart';
import 'package:myproject/app_router.dart';

void main() {
  runApp(RickAndMorty(appRouter: AppRouter(),));
}

class RickAndMorty extends StatelessWidget {
   const RickAndMorty({super.key, required this.appRouter}); 
  
  final AppRouter appRouter;           //Give the class of my AppRoutter any name'appRouter'
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,    //تعمل نافيقيت بين الصفحات للبلوك
    );

      
}
}

