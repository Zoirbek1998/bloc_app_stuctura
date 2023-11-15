import 'package:bloc_app_stuctura/features/app_widgets/focus_widget.dart';
import 'package:bloc_app_stuctura/features/spells/pesentation/bloc/spells/spells_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/debouncer.dart';
import '../../../../shared/domain/entities/spell/spells.dart';
import '../../../app_widgets/app_error_widget.dart';
import '../../../app_widgets/app_text_field.dart';

class SpellsPage extends StatelessWidget {
  const SpellsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(duration: const Duration(microseconds: 300));
    return FocusWidget(
        child: Scaffold(
      appBar: AppBar(
          title: Text(
        'Spells',
        style: Theme.of(context).textTheme.titleMedium,
      )),
      body: BlocBuilder<SpellsBloc, SpellsState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                AppTextField(
                  labelText: 'Search',
                  suffixIcon: const Icon(Icons.search, size: 24),
                  onChanged: (value) {
                    debouncer.run(() => context
                        .read<SpellsBloc>()
                        .add(SpellsEvent.searchSpell(spellName: value)));
                  },
                ),
               const SizedBox(height: 10),
                Expanded(
                  child: state.when(
                    loading: () => const Center(
                        child: CircularProgressIndicator.adaptive()),
                    error: (errorObject) =>
                        AppErrorWidget(errorObject: errorObject),
                    loaded: (spells) => buildListViewSpells(spells),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }

  ListView buildListViewSpells(List<Spells> spells) {
    return ListView.builder(
      itemCount: spells.length,
      itemBuilder: (context, index) {
        Spells spell = spells[index];
        return Card(
          child: ListTile(
            title: Text(spell.name!,
                style:Theme.of(context).textTheme.bodyMedium!),
            subtitle: SelectableText(spell.description!, style: Theme.of(context).textTheme.bodyLarge),
          ),
        );
      },
    );
  }
}
