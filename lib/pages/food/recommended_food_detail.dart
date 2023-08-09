import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimensions.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:food_app/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          //for the background image.
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: "Chinese Side",
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //for the text.
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text:
                        "The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers...              The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers....              The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers.....                  The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers...              The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers....              The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers......                  The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers...              The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers....              The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers........                  The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers...              The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers....              The chicken (Gallus domesticus) is a domesticated species that arose from the red junglefowl, originally from India. They have also partially hybridized with other wild species of junglefowl (the grey junglefowl, Ceylon junglefowl, and green junglefowl).[1] Rooster and cock are terms for adult male birds, and a younger male may be called a cockerel. A male that has been castrated is a capon. An adult female bird is called a hen, and a sexually immature female is called a pullet. Humans keep chickens primarily as a source of food (consuming both their meat and eggs) or as pets. Traditionally, they were also bred for cockfighting, which is still practiced in some places. Chickens domesticated for meat are broilers, and for eggs, they are layers",
                  ),
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                ),
                BigText(text: "\$12.88 " + " X " + " 0 ",
                color: AppColors.mainBlackColor,
                  size: Dimensions.font26,

                ),

                AppIcon(
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                ),
              ],
            ),
          ),

          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                    size: 45,
                  ),
                ),
                Container(
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
