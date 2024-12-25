import 'dart:developer';
import 'package:bloc_demo/config/routes/app_router.dart';
import 'package:bloc_demo/constant/route_constants.dart';
import 'package:bloc_demo/features/articles/bloc/bloc/cubit/all_article_cubit.dart';
import 'package:bloc_demo/features/articles/repo/all_article_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AllArticleCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // navigatorKey: GlobalInit.navKey,
        // theme: LightTheme().lightTheme,
        // builder: EasyLoading.init(
        //   builder: (BuildContext context, Widget? child) {
        //     return Stack(
        //       children: [
        //         MediaQuery(
        //           child: child!,
        //           data: MediaQuery.of(context).copyWith(
        //             textScaler: TextScaler.linear(1.0),
        //           ),
        //         ),

        //         /// support minimizing
        //         ZegoUIKitPrebuiltCallMiniOverlayPage(
        //           contextQuery: () {
        //             return GlobalInit.navKey.currentState!.context;
        //           },
        //         ),
        //       ],
        //     );
        //   },
        // ),
        // supportedLocales: S.delegate.supportedLocales,
        // locale: Locale.fromSubtags(languageCode: lanCubit.currentLocale),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: AppRoutes.splash,
      ),
    );
  }
}
