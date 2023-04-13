import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'imsi_record.g.dart';

abstract class ImsiRecord implements Built<ImsiRecord, ImsiRecordBuilder> {
  static Serializer<ImsiRecord> get serializer => _$imsiRecordSerializer;

  String? get imsi;

  String? get ulkesi;

  String? get konumu;

  @BuiltValueField(wireName: 'yakalanma_tarihi')
  DateTime? get yakalanmaTarihi;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ImsiRecordBuilder builder) => builder
    ..imsi = ''
    ..ulkesi = ''
    ..konumu = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('imsi');

  static Stream<ImsiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImsiRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImsiRecord._();
  factory ImsiRecord([void Function(ImsiRecordBuilder) updates]) = _$ImsiRecord;

  static ImsiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImsiRecordData({
  String? imsi,
  String? ulkesi,
  String? konumu,
  DateTime? yakalanmaTarihi,
}) {
  final firestoreData = serializers.toFirestore(
    ImsiRecord.serializer,
    ImsiRecord(
      (i) => i
        ..imsi = imsi
        ..ulkesi = ulkesi
        ..konumu = konumu
        ..yakalanmaTarihi = yakalanmaTarihi,
    ),
  );

  return firestoreData;
}
