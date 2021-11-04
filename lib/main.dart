import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hss_flutix/bloc/blocs.dart';
import 'package:provider/provider.dart';
import 'ui/pages/pages.dart';
import 'package:hss_flutix/services/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (_) => PageBloc())],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Wrapper(),
        ),
      ),
    );
  }
}

// Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               RaisedButton(
//                 child: Text('Sign In'),
//                 onPressed: () async {
//                   SignInSignUpResult result = await AuthServices.signIn(
//                     'midoriya@bnh.com',
//                     '1234567',
//                   );

//                   if (result.user == null) {
//                     print(result.message);
//                   } else {
//                     print(result.user.toString());
//                   }
//                 },
//               ),
//               RaisedButton(
//                 child: Text('Sign Up'),
//                 onPressed: () async {
//                   SignInSignUpResult result = await AuthServices.signUp(
//                     'midoriya@bnh.com',
//                     '123456',
//                     'Deku',
//                     ['Action', 'Adventure', 'Crime', 'Horror'],
//                     'Japan',
//                   );

//                   if (result.user == null) {
//                     print(result.message);
//                   } else {
//                     print(result.user.toString());
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
