// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_details_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MoneyDetailsModelAdapter extends TypeAdapter<MoneyDetailsModel> {
  @override
  final int typeId = 1;

  @override
  MoneyDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MoneyDetailsModel(
      totalBalance: fields[0] as double,
      totalIncome: fields[1] as double,
      totalExpense: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, MoneyDetailsModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.totalBalance)
      ..writeByte(1)
      ..write(obj.totalIncome)
      ..writeByte(2)
      ..write(obj.totalExpense);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoneyDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
