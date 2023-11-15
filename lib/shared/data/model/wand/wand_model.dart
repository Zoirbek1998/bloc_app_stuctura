import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/wand/wand.dart';

part 'wand_model.freezed.dart';

part 'wand_model.g.dart';

@freezed
class WandModel with _$WandModel {
  const WandModel._();

  const factory WandModel({
    String? wood,
    String? core,
    num? length,
  }) = _WandModel;

  factory WandModel.fromJson(Map<String, Object?> json) =>
      _$WandModelFromJson(json);

  factory WandModel.fromEntity(Wand? wand) {
    return WandModel(
      wood: wand?.wood,
      core: wand?.core,
      length: wand?.length,
    );
  }

  Wand toEntity() {
    return Wand(
      wood: wood,
      core: core,
      length: length,
    );
  }
}
