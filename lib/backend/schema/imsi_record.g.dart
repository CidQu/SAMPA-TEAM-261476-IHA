// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imsi_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImsiRecord> _$imsiRecordSerializer = new _$ImsiRecordSerializer();

class _$ImsiRecordSerializer implements StructuredSerializer<ImsiRecord> {
  @override
  final Iterable<Type> types = const [ImsiRecord, _$ImsiRecord];
  @override
  final String wireName = 'ImsiRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImsiRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imsi;
    if (value != null) {
      result
        ..add('imsi')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ulkesi;
    if (value != null) {
      result
        ..add('ulkesi')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.konumu;
    if (value != null) {
      result
        ..add('konumu')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.yakalanmaTarihi;
    if (value != null) {
      result
        ..add('yakalanma_tarihi')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ImsiRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImsiRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'imsi':
          result.imsi = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ulkesi':
          result.ulkesi = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'konumu':
          result.konumu = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'yakalanma_tarihi':
          result.yakalanmaTarihi = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ImsiRecord extends ImsiRecord {
  @override
  final String? imsi;
  @override
  final String? ulkesi;
  @override
  final String? konumu;
  @override
  final DateTime? yakalanmaTarihi;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImsiRecord([void Function(ImsiRecordBuilder)? updates]) =>
      (new ImsiRecordBuilder()..update(updates))._build();

  _$ImsiRecord._(
      {this.imsi, this.ulkesi, this.konumu, this.yakalanmaTarihi, this.ffRef})
      : super._();

  @override
  ImsiRecord rebuild(void Function(ImsiRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImsiRecordBuilder toBuilder() => new ImsiRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImsiRecord &&
        imsi == other.imsi &&
        ulkesi == other.ulkesi &&
        konumu == other.konumu &&
        yakalanmaTarihi == other.yakalanmaTarihi &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imsi.hashCode);
    _$hash = $jc(_$hash, ulkesi.hashCode);
    _$hash = $jc(_$hash, konumu.hashCode);
    _$hash = $jc(_$hash, yakalanmaTarihi.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImsiRecord')
          ..add('imsi', imsi)
          ..add('ulkesi', ulkesi)
          ..add('konumu', konumu)
          ..add('yakalanmaTarihi', yakalanmaTarihi)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImsiRecordBuilder implements Builder<ImsiRecord, ImsiRecordBuilder> {
  _$ImsiRecord? _$v;

  String? _imsi;
  String? get imsi => _$this._imsi;
  set imsi(String? imsi) => _$this._imsi = imsi;

  String? _ulkesi;
  String? get ulkesi => _$this._ulkesi;
  set ulkesi(String? ulkesi) => _$this._ulkesi = ulkesi;

  String? _konumu;
  String? get konumu => _$this._konumu;
  set konumu(String? konumu) => _$this._konumu = konumu;

  DateTime? _yakalanmaTarihi;
  DateTime? get yakalanmaTarihi => _$this._yakalanmaTarihi;
  set yakalanmaTarihi(DateTime? yakalanmaTarihi) =>
      _$this._yakalanmaTarihi = yakalanmaTarihi;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImsiRecordBuilder() {
    ImsiRecord._initializeBuilder(this);
  }

  ImsiRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imsi = $v.imsi;
      _ulkesi = $v.ulkesi;
      _konumu = $v.konumu;
      _yakalanmaTarihi = $v.yakalanmaTarihi;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImsiRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImsiRecord;
  }

  @override
  void update(void Function(ImsiRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImsiRecord build() => _build();

  _$ImsiRecord _build() {
    final _$result = _$v ??
        new _$ImsiRecord._(
            imsi: imsi,
            ulkesi: ulkesi,
            konumu: konumu,
            yakalanmaTarihi: yakalanmaTarihi,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
