import 'package:bloc_app_stuctura/generated/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/domain/entities/character/character.dart';

class CharacterDetail extends StatelessWidget {
  final Character character;

  const CharacterDetail({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name ?? "")
      ),
      body: SingleChildScrollView(child: _buildCharacterDetailView(context),),
    );
  }


  Widget _buildCharacterDetailView(BuildContext context){
    final size = MediaQuery.of(context).size;
    return Padding(padding:const EdgeInsets.all(20),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: (character.image!.isEmpty)
              ? Container(
            height: size.height*0.3,
            width: size.width*0.6,
            decoration:const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(Assets.imageImage1))),
          )
              : CachedNetworkImage(
              fit: BoxFit.fill, imageUrl: character.image??"", height:size.height*0.3, width: size.width*0.6),
        ),
       const SizedBox(height: 10),
        character.actor != null
            ? Text(character.actor??"",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold))
            : const SizedBox.shrink(),
       const SizedBox(height: 20),
        buildCharacterFeatures(context),
      ],
    ),
    );
  }


  Widget buildCharacterFeatures(BuildContext context){
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _DetailsItemCard(title: 'Species', subtitle: character.species)),
            Expanded(child: _DetailsItemCard(title: 'Gender', subtitle: character.gender)),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: _DetailsItemCard(title: 'Date of Birth', subtitle: character.dateOfBirth)),
            Expanded(
                child: _DetailsItemCard(title: 'Alive', subtitle: character.alive! ? 'Yes' : 'No')),
          ],
        ),
        Row(
          children: [
            Expanded(child: _DetailsItemCard(title: 'Eye Colour', subtitle: character.eyeColour)),
            Expanded(child: _DetailsItemCard(title: 'Hair Colour', subtitle: character.hairColour)),
          ],
        ),
        Row(
          children: [
            Expanded(
                child:
                _DetailsItemCard(title: 'Wizard', subtitle: character.wizard! ? 'Yes' : 'No')),
            Expanded(child: _DetailsItemCard(title: 'Ancestry', subtitle: character.ancestry)),
          ],
        ),
        Row(
          children: [
            Expanded(child: _DetailsItemCard(title: 'House', subtitle: character.house)),
            Expanded(child: _DetailsItemCard(title: 'Patronus', subtitle: character.patronus)),
          ],
        ),
        (character.wand == null)
            ? const SizedBox.shrink()
            : Card(
          child: ListTile(
            title: Text('Wand',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white60)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wood: ${(character.wand?.wood != null) ? character.wand?.wood : '-'}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  'Core: ${(character.wand?.core != null) ? character.wand?.core : '-'}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  "Length: ${(character.wand?.length != null) ? '${character.wand?.length!.toString()} inches' : '-'}",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }




}

class _DetailsItemCard extends StatelessWidget {
  const _DetailsItemCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      borderOnForeground: true,
      child: ListTile(
        title: Text(title, style:Theme.of(context).textTheme.bodyMedium),
        subtitle: Text((subtitle ?? '-'),
            style:Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}