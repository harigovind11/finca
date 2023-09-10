// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saving_plans_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SavingPlansModelAdapter extends TypeAdapter<SavingPlansModel> {
  @override
  final int typeId = 3;

  @override
  SavingPlansModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SavingPlansModel(
      planName: fields[0] as String,
      goalAmount: fields[1] as double,
    )..id = fields[2] as String?;
  }

  @override
  void write(BinaryWriter writer, SavingPlansModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.planName)
      ..writeByte(1)
      ..write(obj.goalAmount)
      ..writeByte(2)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SavingPlansModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
