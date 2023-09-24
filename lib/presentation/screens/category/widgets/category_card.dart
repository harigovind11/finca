import 'package:auto_route/auto_route.dart';
import 'package:finca/application/category/category_actor/catergory_actor_bloc.dart';
import 'package:finca/core/colors_collection.dart';
import 'package:finca/core/constants.dart';
import 'package:finca/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:finca/domain/category/category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icon.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class CategoryCard extends StatelessWidget {
  final CategoryEntity categoryEntity;

  const CategoryCard({
    super.key,
    required this.categoryEntity,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: const BoxDecoration(
        color: kBluegreyShade,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: categoryEntity.color,
            child: Icon(
              categoryEntity.getIconData(),
            ),
          ),
          title: TextWidget(
            text: categoryEntity.categoryName.getOrCrash(),
            color: kWhite,
            fontSize: 15,
          ),
          trailing: SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    context.pushRoute(
                      AddCategoryRoute(categoryEntity: categoryEntity),
                    );
                  },
                  style:
                      const ButtonStyle(splashFactory: NoSplash.splashFactory),
                  icon: const LineIcon.pen(
                    color: kBlueShade,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showTopSnackBar(
                      Overlay.of(context),
                      const CustomSnackBar.success(
                        backgroundColor: kBlueShade,
                        message: 'Deleted',
                      ),
                    );
                    context
                        .read<CatergoryActorBloc>()
                        .add(CatergoryActorEvent.deleted(categoryEntity));
                  },
                  style:
                      const ButtonStyle(splashFactory: NoSplash.splashFactory),
                  icon: const LineIcon.trash(
                    color: kRed,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
