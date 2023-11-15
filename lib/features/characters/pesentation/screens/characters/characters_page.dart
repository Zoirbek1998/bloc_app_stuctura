import 'package:bloc_app_stuctura/core/error/error_object.dart';
import 'package:bloc_app_stuctura/core/helpers/debouncer.dart';
import 'package:bloc_app_stuctura/core/init/routes/app_router.dart';
import 'package:bloc_app_stuctura/features/app_widgets/app_error_widget.dart';
import 'package:bloc_app_stuctura/features/characters/pesentation/bloc/characters/characters_bloc.dart';
import 'package:bloc_app_stuctura/features/characters/pesentation/screens/characters/widgets/discover_user_card.dart';
import 'package:bloc_app_stuctura/features/app_widgets/focus_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

import '../../../../../shared/domain/entities/character/character.dart';
import '../../../../app_widgets/app_text_field.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(duration: const Duration(milliseconds: 500));

    return FocusWidget(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          'Characters',
          style: Theme.of(context).textTheme.titleMedium,
        )),
        body: BlocBuilder<CharactersBloc, CharactersState>(
          builder: (context, state) {
            return _buildCharactersView(debouncer, context, state);
          },
        ),
      ),
    );
  }

  Widget _buildCharactersView(
      Debouncer debouncer, BuildContext context, CharactersState state) {


    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          AppTextField(
            key: key,
            labelText: 'Search',
            suffixIcon: const Icon(Icons.search, size: 4),
            onChanged: (value) {
              debouncer.run(() => context
                  .read<CharactersBloc>()
                  .add(CharactersEvent.searchCharacters(characterName: value)));
            },
          ),
          const SizedBox(height: 4),
          Expanded(
            child: state.when(
              loading: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              loaded: (characters)=> _buildCharactersGridView(characters),
              error: (errorObject)=> AppErrorWidget(errorObject: errorObject),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCharactersGridView(List<Character> characters) {
    return SingleChildScrollView(
      child: MasonryGridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: characters.length,
        itemBuilder: (context, index) {
          Character character = characters[index];
          return InkWell(
              onTap: () => context.goNamed(RouterName.characterDetail.name, extra: character),
              child: DiscoverUserCard(character: character, index: index));
        },
      ),
    );
  }

}
