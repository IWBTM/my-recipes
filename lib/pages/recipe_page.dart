import 'package:flutter/material.dart';
import 'package:my_rescipes/components/recipe_list_item.dart';
import 'package:my_rescipes/components/recipe_menu.dart';
import 'package:my_rescipes/components/recipe_title.dart';
import 'package:flutter/cupertino.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        // 스크롤이 담겨져 있음
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecipeTitle(),
                RecipeMenu(),
                RecipeListItem(imageName: "burger", title: "Made Burger"),
                RecipeListItem(imageName: "coffee", title: "Made Coffee"),
                RecipeListItem(imageName: "pizza", title: "Made Pizza"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
} // end of recipe_page

/// AppBar 위젯
///  : 현재 화면에 title, leading, action 영역을 포함하고 있는 막대 모양의 위젯이다.
///
/// 왼쪽 - leading
/// 가운데 - title
/// 오른쪽 - action
///
/// elevation - 그림자
