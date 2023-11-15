import 'package:bloc_app_stuctura/generated/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/theme/themeUtils.dart';
import '../../../../../../shared/domain/entities/character/character.dart';
import '../../../../../app_widgets/custom_gradient_overlay.dart';

class DiscoverUserCard extends StatelessWidget {
  const DiscoverUserCard({
    Key? key,
    required this.character,
    required this.index,
  }) : super(key: key);

  final Character character;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          (character.image!.isEmpty)
              ? Container(
            height: MediaQuery.of(context).size.height*0.35,
            width: double.infinity,
            decoration:const BoxDecoration(
                image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(Assets.imageImage1))),
          )
              : CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: character.image!,
              // height: (index == 0) ?  80 : 88,
              ),
          const CustomGradientOverlay(
              stops: [0.1, 1.0], colors: [kTranspatern, kDarkTextColor]),
          Positioned(
            left: 10,
            bottom: 10,
            child: SizedBox(child: Text(character.name!, style: Theme.of(context).textTheme.bodyMedium)),
          ),
        ],
      ),
    );
  }
}
