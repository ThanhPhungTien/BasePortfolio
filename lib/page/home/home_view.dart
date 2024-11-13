import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfilio/base/app_color.dart';
import 'package:portfilio/base/style.dart';
import 'package:portfilio/page/about/about_view.dart';
import 'package:portfilio/page/skill/skill_view.dart';
import 'package:portfilio/page/welcome/welcome_view.dart';

import 'home_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  late PageController controller;
  late HomeCubit bloc;

  @override
  void initState() {
    controller = PageController()
      ..addListener(() {
        bloc.updatePage(controller.page!.toInt());
      });
    bloc = HomeCubit();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          PageView(
            scrollDirection: Axis.vertical,
            controller: controller,
            physics: const NeverScrollableScrollPhysics(),
            children: const <Widget>[
              WelcomeView(),
              AboutView(),
              SkillView(),
            ],
          ),
          BlocBuilder<HomeCubit, HomeState>(
            bloc: bloc,
            builder: (BuildContext context, HomeState state) {
              int page = 0;
              if (state is HomeInitial) {
                page = state.page;
              }
              return Positioned(
                top: 16,
                right: 32,
                child: Wrap(
                  children: <Widget>[
                    MaterialButton(
                      textColor: AppColor.primaryColor,
                      onPressed: () {
                        jumpToPage(0);
                      },
                      child: Text(
                        'Welcome',
                        style: textTheme.titleLarge!.copyWith(
                          color: page == 0
                              ? AppColor.white
                              : AppColor.primaryColorDark,
                        ),
                      ),
                    ),
                    Container(width: 16),
                    MaterialButton(
                      textColor: AppColor.primaryColor,
                      onPressed: () {
                        jumpToPage(1);
                      },
                      child: Text(
                        'About Me',
                        style: textTheme.titleLarge!.copyWith(
                          color: page == 1
                              ? AppColor.white
                              : AppColor.primaryColorDark,
                        ),
                      ),
                    ),
                    Container(width: 16),
                    MaterialButton(
                      textColor: AppColor.primaryColor,
                      onPressed: () {
                        jumpToPage(2);
                      },
                      child: Text(
                        'Skills',
                        style: textTheme.titleLarge!.copyWith(
                          color: page == 2
                              ? AppColor.white
                              : AppColor.primaryColorDark,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<void> jumpToPage(int page) async {
    await controller.animateToPage(
      page,
      curve: Curves.easeInToLinear,
      duration: const Duration(milliseconds: 1000),
    );

    bloc.updatePage(page);
  }
}
