import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tictactoe_app/constants/app_assets.dart';
import 'package:tictactoe_app/constants/app_theme.dart';

import '../../bloc/backend_bloc.dart';

class GridBox extends StatelessWidget {
  const GridBox({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: BlocBuilder<BackendBloc, BackendState>(
        builder: (context, state) {
          return InkWell(
            onTap: () {
              if (state is WinState) {
                return;
              }
              BlocProvider.of<BackendBloc>(context).add(ClickEvent(index));
            },
            child: BlocBuilder<BackendBloc, BackendState>(
              builder: (context, state) {
                // Game State
                if (state is GameState) {
                  var value = state.gameList[index];
                  return Container(
                    decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: value.isEmpty
                          ? const SizedBox()
                          : SimpleShadow(
                              color:
                                  value.contains('X') ? lightBlue : Colors.red,
                              child: SvgPicture.asset(
                                value.contains('X')
                                    ? AppAsset.xWithUnShadow
                                    : AppAsset.oWithUnShadow,
                                width: 60.w,
                              ),
                            ),
                    ),
                  );
                }

                // Win State
                if (state is WinState) {
                  var value = state.gameList[index];
                  return Container(
                    decoration: const BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: value.isEmpty
                          ? const SizedBox()
                          : SimpleShadow(
                              color:
                                  value.contains('X') ? lightBlue : Colors.red,
                              child: SvgPicture.asset(
                                value.contains('X')
                                    ? AppAsset.xWithUnShadow
                                    : AppAsset.oWithUnShadow,
                                width: 60.w,
                              ),
                            ),
                    ),
                  );
                }

                return Container(
                  decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: const Center(
                    child: SizedBox(),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
