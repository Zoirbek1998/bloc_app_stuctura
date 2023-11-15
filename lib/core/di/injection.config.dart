// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bloc_app_stuctura/core/di/module/register_module.dart' as _i19;
import 'package:bloc_app_stuctura/core/init/network/dio_client.dart' as _i5;
import 'package:bloc_app_stuctura/features/characters/data/datasources/remote_characters_datasource.dart'
    as _i6;
import 'package:bloc_app_stuctura/features/characters/data/repositoryies/characters_repository_impl.dart'
    as _i12;
import 'package:bloc_app_stuctura/features/characters/domain/repositoryies/characters_repository.dart'
    as _i11;
import 'package:bloc_app_stuctura/features/characters/domain/usecases/fetch_all_characters.dart'
    as _i13;
import 'package:bloc_app_stuctura/features/characters/domain/usecases/search_character.dart'
    as _i15;
import 'package:bloc_app_stuctura/features/characters/pesentation/bloc/characters/characters_bloc.dart'
    as _i18;
import 'package:bloc_app_stuctura/features/settings/bloc/theme/theme_bloc.dart'
    as _i10;
import 'package:bloc_app_stuctura/features/spells/data/datasources/remote_spells_datasource.dart'
    as _i7;
import 'package:bloc_app_stuctura/features/spells/data/repositories/spells_repository_impl.dart'
    as _i9;
import 'package:bloc_app_stuctura/features/spells/domain/repositoryies/spells_repositories.dart'
    as _i8;
import 'package:bloc_app_stuctura/features/spells/domain/usecases/fetch_spells.dart'
    as _i14;
import 'package:bloc_app_stuctura/features/spells/domain/usecases/search_spells.dart'
    as _i16;
import 'package:bloc_app_stuctura/features/spells/pesentation/bloc/spells/spells_bloc.dart'
    as _i17;
import 'package:bloc_app_stuctura/shared/bottom_nav/bloc/bottom_navigation/bottom_nav_bloc.dart'
    as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.BottomNavBloc>(() => _i3.BottomNavBloc());
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i5.DioClient>(() => _i5.DioClient());
    gh.lazySingleton<_i6.RemoteCharactersDataSource>(() =>
        _i6.RemoteCharactersDataSourceImpl(dioClient: gh<_i5.DioClient>()));
    gh.lazySingleton<_i7.RemoteSpellsDataSource>(
        () => _i7.RemoteSpellsDataSourceImpl(dioClient: gh<_i5.DioClient>()));
    gh.lazySingleton<_i8.SpellsRepository>(
        () => _i9.SpellsRepositoryImpl(gh<_i7.RemoteSpellsDataSource>()));
    gh.factory<_i10.ThemeBloc>(() => _i10.ThemeBloc());
    gh.lazySingleton<_i11.CharactersRepository>(() =>
        _i12.CharactersRepositoryImpl(gh<_i6.RemoteCharactersDataSource>()));
    gh.factory<_i13.FetchAllCharacters>(
        () => _i13.FetchAllCharacters(gh<_i11.CharactersRepository>()));
    gh.factory<_i14.FetchSpells>(
        () => _i14.FetchSpells(gh<_i8.SpellsRepository>()));
    gh.factory<_i15.SearchCharacter>(
        () => _i15.SearchCharacter(gh<_i11.CharactersRepository>()));
    gh.factory<_i16.SearchSpell>(
        () => _i16.SearchSpell(gh<_i8.SpellsRepository>()));
    gh.factory<_i17.SpellsBloc>(() => _i17.SpellsBloc(
          fetchSpells: gh<_i14.FetchSpells>(),
          searchSpell: gh<_i16.SearchSpell>(),
        ));
    gh.factory<_i18.CharactersBloc>(() => _i18.CharactersBloc(
          fetchAllCharacters: gh<_i13.FetchAllCharacters>(),
          searchCharacter: gh<_i15.SearchCharacter>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i19.RegisterModule {}
