// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppThemeStateAdapter extends TypeAdapter<AppThemeState> {
  @override
  final int typeId = 0;

  @override
  AppThemeState read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppThemeState()..isdarkMode = fields[0] as bool;
  }

  @override
  void write(BinaryWriter writer, AppThemeState obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.isdarkMode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppThemeStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
