// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class UserData extends DataClass implements Insertable<UserData> {
  final int userId;
  final String? userName;
  final String? userEmail;
  final String? password;
  final String? mobileNumber1;
  final String? mobileNumber2;
  final String? mobileNumber3;
  final int? age;
  final GenderType? genderId;
  final int? sugarTypeId;
  final double? weight;
  UserData(
      {required this.userId,
      this.userName,
      this.userEmail,
      this.password,
      this.mobileNumber1,
      this.mobileNumber2,
      this.mobileNumber3,
      this.age,
      this.genderId,
      this.sugarTypeId,
      this.weight});
  factory UserData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserData(
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id'])!,
      userName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_name']),
      userEmail: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_email']),
      password: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}password']),
      mobileNumber1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile_number1']),
      mobileNumber2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile_number2']),
      mobileNumber3: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile_number3']),
      age: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}age']),
      genderId: $UserTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gender_id'])),
      sugarTypeId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sugar_type_id']),
      weight: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}weight']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<int>(userId);
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String?>(userName);
    }
    if (!nullToAbsent || userEmail != null) {
      map['user_email'] = Variable<String?>(userEmail);
    }
    if (!nullToAbsent || password != null) {
      map['password'] = Variable<String?>(password);
    }
    if (!nullToAbsent || mobileNumber1 != null) {
      map['mobile_number1'] = Variable<String?>(mobileNumber1);
    }
    if (!nullToAbsent || mobileNumber2 != null) {
      map['mobile_number2'] = Variable<String?>(mobileNumber2);
    }
    if (!nullToAbsent || mobileNumber3 != null) {
      map['mobile_number3'] = Variable<String?>(mobileNumber3);
    }
    if (!nullToAbsent || age != null) {
      map['age'] = Variable<int?>(age);
    }
    if (!nullToAbsent || genderId != null) {
      final converter = $UserTable.$converter0;
      map['gender_id'] = Variable<int?>(converter.mapToSql(genderId));
    }
    if (!nullToAbsent || sugarTypeId != null) {
      map['sugar_type_id'] = Variable<int?>(sugarTypeId);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<double?>(weight);
    }
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      userId: Value(userId),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
      userEmail: userEmail == null && nullToAbsent
          ? const Value.absent()
          : Value(userEmail),
      password: password == null && nullToAbsent
          ? const Value.absent()
          : Value(password),
      mobileNumber1: mobileNumber1 == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNumber1),
      mobileNumber2: mobileNumber2 == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNumber2),
      mobileNumber3: mobileNumber3 == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNumber3),
      age: age == null && nullToAbsent ? const Value.absent() : Value(age),
      genderId: genderId == null && nullToAbsent
          ? const Value.absent()
          : Value(genderId),
      sugarTypeId: sugarTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(sugarTypeId),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
    );
  }

  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      userId: serializer.fromJson<int>(json['userId']),
      userName: serializer.fromJson<String?>(json['userName']),
      userEmail: serializer.fromJson<String?>(json['userEmail']),
      password: serializer.fromJson<String?>(json['password']),
      mobileNumber1: serializer.fromJson<String?>(json['mobileNumber1']),
      mobileNumber2: serializer.fromJson<String?>(json['mobileNumber2']),
      mobileNumber3: serializer.fromJson<String?>(json['mobileNumber3']),
      age: serializer.fromJson<int?>(json['age']),
      genderId: serializer.fromJson<GenderType?>(json['genderId']),
      sugarTypeId: serializer.fromJson<int?>(json['sugarTypeId']),
      weight: serializer.fromJson<double?>(json['weight']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
      'userName': serializer.toJson<String?>(userName),
      'userEmail': serializer.toJson<String?>(userEmail),
      'password': serializer.toJson<String?>(password),
      'mobileNumber1': serializer.toJson<String?>(mobileNumber1),
      'mobileNumber2': serializer.toJson<String?>(mobileNumber2),
      'mobileNumber3': serializer.toJson<String?>(mobileNumber3),
      'age': serializer.toJson<int?>(age),
      'genderId': serializer.toJson<GenderType?>(genderId),
      'sugarTypeId': serializer.toJson<int?>(sugarTypeId),
      'weight': serializer.toJson<double?>(weight),
    };
  }

  UserData copyWith(
          {int? userId,
          String? userName,
          String? userEmail,
          String? password,
          String? mobileNumber1,
          String? mobileNumber2,
          String? mobileNumber3,
          int? age,
          GenderType? genderId,
          int? sugarTypeId,
          double? weight}) =>
      UserData(
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        userEmail: userEmail ?? this.userEmail,
        password: password ?? this.password,
        mobileNumber1: mobileNumber1 ?? this.mobileNumber1,
        mobileNumber2: mobileNumber2 ?? this.mobileNumber2,
        mobileNumber3: mobileNumber3 ?? this.mobileNumber3,
        age: age ?? this.age,
        genderId: genderId ?? this.genderId,
        sugarTypeId: sugarTypeId ?? this.sugarTypeId,
        weight: weight ?? this.weight,
      );
  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('userEmail: $userEmail, ')
          ..write('password: $password, ')
          ..write('mobileNumber1: $mobileNumber1, ')
          ..write('mobileNumber2: $mobileNumber2, ')
          ..write('mobileNumber3: $mobileNumber3, ')
          ..write('age: $age, ')
          ..write('genderId: $genderId, ')
          ..write('sugarTypeId: $sugarTypeId, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      userId,
      userName,
      userEmail,
      password,
      mobileNumber1,
      mobileNumber2,
      mobileNumber3,
      age,
      genderId,
      sugarTypeId,
      weight);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.userId == this.userId &&
          other.userName == this.userName &&
          other.userEmail == this.userEmail &&
          other.password == this.password &&
          other.mobileNumber1 == this.mobileNumber1 &&
          other.mobileNumber2 == this.mobileNumber2 &&
          other.mobileNumber3 == this.mobileNumber3 &&
          other.age == this.age &&
          other.genderId == this.genderId &&
          other.sugarTypeId == this.sugarTypeId &&
          other.weight == this.weight);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<int> userId;
  final Value<String?> userName;
  final Value<String?> userEmail;
  final Value<String?> password;
  final Value<String?> mobileNumber1;
  final Value<String?> mobileNumber2;
  final Value<String?> mobileNumber3;
  final Value<int?> age;
  final Value<GenderType?> genderId;
  final Value<int?> sugarTypeId;
  final Value<double?> weight;
  const UserCompanion({
    this.userId = const Value.absent(),
    this.userName = const Value.absent(),
    this.userEmail = const Value.absent(),
    this.password = const Value.absent(),
    this.mobileNumber1 = const Value.absent(),
    this.mobileNumber2 = const Value.absent(),
    this.mobileNumber3 = const Value.absent(),
    this.age = const Value.absent(),
    this.genderId = const Value.absent(),
    this.sugarTypeId = const Value.absent(),
    this.weight = const Value.absent(),
  });
  UserCompanion.insert({
    this.userId = const Value.absent(),
    this.userName = const Value.absent(),
    this.userEmail = const Value.absent(),
    this.password = const Value.absent(),
    this.mobileNumber1 = const Value.absent(),
    this.mobileNumber2 = const Value.absent(),
    this.mobileNumber3 = const Value.absent(),
    this.age = const Value.absent(),
    this.genderId = const Value.absent(),
    this.sugarTypeId = const Value.absent(),
    this.weight = const Value.absent(),
  });
  static Insertable<UserData> custom({
    Expression<int>? userId,
    Expression<String?>? userName,
    Expression<String?>? userEmail,
    Expression<String?>? password,
    Expression<String?>? mobileNumber1,
    Expression<String?>? mobileNumber2,
    Expression<String?>? mobileNumber3,
    Expression<int?>? age,
    Expression<GenderType?>? genderId,
    Expression<int?>? sugarTypeId,
    Expression<double?>? weight,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (userName != null) 'user_name': userName,
      if (userEmail != null) 'user_email': userEmail,
      if (password != null) 'password': password,
      if (mobileNumber1 != null) 'mobile_number1': mobileNumber1,
      if (mobileNumber2 != null) 'mobile_number2': mobileNumber2,
      if (mobileNumber3 != null) 'mobile_number3': mobileNumber3,
      if (age != null) 'age': age,
      if (genderId != null) 'gender_id': genderId,
      if (sugarTypeId != null) 'sugar_type_id': sugarTypeId,
      if (weight != null) 'weight': weight,
    });
  }

  UserCompanion copyWith(
      {Value<int>? userId,
      Value<String?>? userName,
      Value<String?>? userEmail,
      Value<String?>? password,
      Value<String?>? mobileNumber1,
      Value<String?>? mobileNumber2,
      Value<String?>? mobileNumber3,
      Value<int?>? age,
      Value<GenderType?>? genderId,
      Value<int?>? sugarTypeId,
      Value<double?>? weight}) {
    return UserCompanion(
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      userEmail: userEmail ?? this.userEmail,
      password: password ?? this.password,
      mobileNumber1: mobileNumber1 ?? this.mobileNumber1,
      mobileNumber2: mobileNumber2 ?? this.mobileNumber2,
      mobileNumber3: mobileNumber3 ?? this.mobileNumber3,
      age: age ?? this.age,
      genderId: genderId ?? this.genderId,
      sugarTypeId: sugarTypeId ?? this.sugarTypeId,
      weight: weight ?? this.weight,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String?>(userName.value);
    }
    if (userEmail.present) {
      map['user_email'] = Variable<String?>(userEmail.value);
    }
    if (password.present) {
      map['password'] = Variable<String?>(password.value);
    }
    if (mobileNumber1.present) {
      map['mobile_number1'] = Variable<String?>(mobileNumber1.value);
    }
    if (mobileNumber2.present) {
      map['mobile_number2'] = Variable<String?>(mobileNumber2.value);
    }
    if (mobileNumber3.present) {
      map['mobile_number3'] = Variable<String?>(mobileNumber3.value);
    }
    if (age.present) {
      map['age'] = Variable<int?>(age.value);
    }
    if (genderId.present) {
      final converter = $UserTable.$converter0;
      map['gender_id'] = Variable<int?>(converter.mapToSql(genderId.value));
    }
    if (sugarTypeId.present) {
      map['sugar_type_id'] = Variable<int?>(sugarTypeId.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double?>(weight.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('userId: $userId, ')
          ..write('userName: $userName, ')
          ..write('userEmail: $userEmail, ')
          ..write('password: $password, ')
          ..write('mobileNumber1: $mobileNumber1, ')
          ..write('mobileNumber2: $mobileNumber2, ')
          ..write('mobileNumber3: $mobileNumber3, ')
          ..write('age: $age, ')
          ..write('genderId: $genderId, ')
          ..write('sugarTypeId: $sugarTypeId, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }
}

class $UserTable extends User with TableInfo<$UserTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'user_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _userNameMeta = const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String?> userName = GeneratedColumn<String?>(
      'user_name', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  final VerificationMeta _userEmailMeta = const VerificationMeta('userEmail');
  @override
  late final GeneratedColumn<String?> userEmail = GeneratedColumn<String?>(
      'user_email', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  @override
  late final GeneratedColumn<String?> password = GeneratedColumn<String?>(
      'password', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  final VerificationMeta _mobileNumber1Meta =
      const VerificationMeta('mobileNumber1');
  @override
  late final GeneratedColumn<String?> mobileNumber1 = GeneratedColumn<String?>(
      'mobile_number1', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  final VerificationMeta _mobileNumber2Meta =
      const VerificationMeta('mobileNumber2');
  @override
  late final GeneratedColumn<String?> mobileNumber2 = GeneratedColumn<String?>(
      'mobile_number2', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  final VerificationMeta _mobileNumber3Meta =
      const VerificationMeta('mobileNumber3');
  @override
  late final GeneratedColumn<String?> mobileNumber3 = GeneratedColumn<String?>(
      'mobile_number3', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  final VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int?> age = GeneratedColumn<int?>(
      'age', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _genderIdMeta = const VerificationMeta('genderId');
  @override
  late final GeneratedColumnWithTypeConverter<GenderType?, int?> genderId =
      GeneratedColumn<int?>('gender_id', aliasedName, true,
              type: const IntType(),
              requiredDuringInsert: false,
              defaultValue: Constant(GenderType.male.index))
          .withConverter<GenderType?>($UserTable.$converter0);
  final VerificationMeta _sugarTypeIdMeta =
      const VerificationMeta('sugarTypeId');
  @override
  late final GeneratedColumn<int?> sugarTypeId = GeneratedColumn<int?>(
      'sugar_type_id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(-1));
  final VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double?> weight = GeneratedColumn<double?>(
      'weight', aliasedName, true,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  @override
  List<GeneratedColumn> get $columns => [
        userId,
        userName,
        userEmail,
        password,
        mobileNumber1,
        mobileNumber2,
        mobileNumber3,
        age,
        genderId,
        sugarTypeId,
        weight
      ];
  @override
  String get aliasedName => _alias ?? 'user';
  @override
  String get actualTableName => 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    }
    if (data.containsKey('user_email')) {
      context.handle(_userEmailMeta,
          userEmail.isAcceptableOrUnknown(data['user_email']!, _userEmailMeta));
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    }
    if (data.containsKey('mobile_number1')) {
      context.handle(
          _mobileNumber1Meta,
          mobileNumber1.isAcceptableOrUnknown(
              data['mobile_number1']!, _mobileNumber1Meta));
    }
    if (data.containsKey('mobile_number2')) {
      context.handle(
          _mobileNumber2Meta,
          mobileNumber2.isAcceptableOrUnknown(
              data['mobile_number2']!, _mobileNumber2Meta));
    }
    if (data.containsKey('mobile_number3')) {
      context.handle(
          _mobileNumber3Meta,
          mobileNumber3.isAcceptableOrUnknown(
              data['mobile_number3']!, _mobileNumber3Meta));
    }
    if (data.containsKey('age')) {
      context.handle(
          _ageMeta, age.isAcceptableOrUnknown(data['age']!, _ageMeta));
    }
    context.handle(_genderIdMeta, const VerificationResult.success());
    if (data.containsKey('sugar_type_id')) {
      context.handle(
          _sugarTypeIdMeta,
          sugarTypeId.isAcceptableOrUnknown(
              data['sugar_type_id']!, _sugarTypeIdMeta));
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }

  static TypeConverter<GenderType?, int> $converter0 =
      const EnumIndexConverter<GenderType>(GenderType.values);
}

class AlarmData extends DataClass implements Insertable<AlarmData> {
  final int alarmId;
  final int? userId;
  final String? alarmTime;
  final int? hour;
  final int? minutes;
  final String? period;
  final int? periodId;
  final bool? alarmStatus;
  final String? repeatedDays;
  AlarmData(
      {required this.alarmId,
      this.userId,
      this.alarmTime,
      this.hour,
      this.minutes,
      this.period,
      this.periodId,
      this.alarmStatus,
      this.repeatedDays});
  factory AlarmData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AlarmData(
      alarmId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}alarm_id'])!,
      userId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      alarmTime: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}alarm_time']),
      hour: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}hour']),
      minutes: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}minutes']),
      period: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}period']),
      periodId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}period_id']),
      alarmStatus: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}alarm_status']),
      repeatedDays: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}repeated_days']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['alarm_id'] = Variable<int>(alarmId);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int?>(userId);
    }
    if (!nullToAbsent || alarmTime != null) {
      map['alarm_time'] = Variable<String?>(alarmTime);
    }
    if (!nullToAbsent || hour != null) {
      map['hour'] = Variable<int?>(hour);
    }
    if (!nullToAbsent || minutes != null) {
      map['minutes'] = Variable<int?>(minutes);
    }
    if (!nullToAbsent || period != null) {
      map['period'] = Variable<String?>(period);
    }
    if (!nullToAbsent || periodId != null) {
      map['period_id'] = Variable<int?>(periodId);
    }
    if (!nullToAbsent || alarmStatus != null) {
      map['alarm_status'] = Variable<bool?>(alarmStatus);
    }
    if (!nullToAbsent || repeatedDays != null) {
      map['repeated_days'] = Variable<String?>(repeatedDays);
    }
    return map;
  }

  AlarmCompanion toCompanion(bool nullToAbsent) {
    return AlarmCompanion(
      alarmId: Value(alarmId),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      alarmTime: alarmTime == null && nullToAbsent
          ? const Value.absent()
          : Value(alarmTime),
      hour: hour == null && nullToAbsent ? const Value.absent() : Value(hour),
      minutes: minutes == null && nullToAbsent
          ? const Value.absent()
          : Value(minutes),
      period:
          period == null && nullToAbsent ? const Value.absent() : Value(period),
      periodId: periodId == null && nullToAbsent
          ? const Value.absent()
          : Value(periodId),
      alarmStatus: alarmStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(alarmStatus),
      repeatedDays: repeatedDays == null && nullToAbsent
          ? const Value.absent()
          : Value(repeatedDays),
    );
  }

  factory AlarmData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AlarmData(
      alarmId: serializer.fromJson<int>(json['alarmId']),
      userId: serializer.fromJson<int?>(json['userId']),
      alarmTime: serializer.fromJson<String?>(json['alarmTime']),
      hour: serializer.fromJson<int?>(json['hour']),
      minutes: serializer.fromJson<int?>(json['minutes']),
      period: serializer.fromJson<String?>(json['period']),
      periodId: serializer.fromJson<int?>(json['periodId']),
      alarmStatus: serializer.fromJson<bool?>(json['alarmStatus']),
      repeatedDays: serializer.fromJson<String?>(json['repeatedDays']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'alarmId': serializer.toJson<int>(alarmId),
      'userId': serializer.toJson<int?>(userId),
      'alarmTime': serializer.toJson<String?>(alarmTime),
      'hour': serializer.toJson<int?>(hour),
      'minutes': serializer.toJson<int?>(minutes),
      'period': serializer.toJson<String?>(period),
      'periodId': serializer.toJson<int?>(periodId),
      'alarmStatus': serializer.toJson<bool?>(alarmStatus),
      'repeatedDays': serializer.toJson<String?>(repeatedDays),
    };
  }

  AlarmData copyWith(
          {int? alarmId,
          int? userId,
          String? alarmTime,
          int? hour,
          int? minutes,
          String? period,
          int? periodId,
          bool? alarmStatus,
          String? repeatedDays}) =>
      AlarmData(
        alarmId: alarmId ?? this.alarmId,
        userId: userId ?? this.userId,
        alarmTime: alarmTime ?? this.alarmTime,
        hour: hour ?? this.hour,
        minutes: minutes ?? this.minutes,
        period: period ?? this.period,
        periodId: periodId ?? this.periodId,
        alarmStatus: alarmStatus ?? this.alarmStatus,
        repeatedDays: repeatedDays ?? this.repeatedDays,
      );
  @override
  String toString() {
    return (StringBuffer('AlarmData(')
          ..write('alarmId: $alarmId, ')
          ..write('userId: $userId, ')
          ..write('alarmTime: $alarmTime, ')
          ..write('hour: $hour, ')
          ..write('minutes: $minutes, ')
          ..write('period: $period, ')
          ..write('periodId: $periodId, ')
          ..write('alarmStatus: $alarmStatus, ')
          ..write('repeatedDays: $repeatedDays')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(alarmId, userId, alarmTime, hour, minutes,
      period, periodId, alarmStatus, repeatedDays);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AlarmData &&
          other.alarmId == this.alarmId &&
          other.userId == this.userId &&
          other.alarmTime == this.alarmTime &&
          other.hour == this.hour &&
          other.minutes == this.minutes &&
          other.period == this.period &&
          other.periodId == this.periodId &&
          other.alarmStatus == this.alarmStatus &&
          other.repeatedDays == this.repeatedDays);
}

class AlarmCompanion extends UpdateCompanion<AlarmData> {
  final Value<int> alarmId;
  final Value<int?> userId;
  final Value<String?> alarmTime;
  final Value<int?> hour;
  final Value<int?> minutes;
  final Value<String?> period;
  final Value<int?> periodId;
  final Value<bool?> alarmStatus;
  final Value<String?> repeatedDays;
  const AlarmCompanion({
    this.alarmId = const Value.absent(),
    this.userId = const Value.absent(),
    this.alarmTime = const Value.absent(),
    this.hour = const Value.absent(),
    this.minutes = const Value.absent(),
    this.period = const Value.absent(),
    this.periodId = const Value.absent(),
    this.alarmStatus = const Value.absent(),
    this.repeatedDays = const Value.absent(),
  });
  AlarmCompanion.insert({
    this.alarmId = const Value.absent(),
    this.userId = const Value.absent(),
    this.alarmTime = const Value.absent(),
    this.hour = const Value.absent(),
    this.minutes = const Value.absent(),
    this.period = const Value.absent(),
    this.periodId = const Value.absent(),
    this.alarmStatus = const Value.absent(),
    this.repeatedDays = const Value.absent(),
  });
  static Insertable<AlarmData> custom({
    Expression<int>? alarmId,
    Expression<int?>? userId,
    Expression<String?>? alarmTime,
    Expression<int?>? hour,
    Expression<int?>? minutes,
    Expression<String?>? period,
    Expression<int?>? periodId,
    Expression<bool?>? alarmStatus,
    Expression<String?>? repeatedDays,
  }) {
    return RawValuesInsertable({
      if (alarmId != null) 'alarm_id': alarmId,
      if (userId != null) 'user_id': userId,
      if (alarmTime != null) 'alarm_time': alarmTime,
      if (hour != null) 'hour': hour,
      if (minutes != null) 'minutes': minutes,
      if (period != null) 'period': period,
      if (periodId != null) 'period_id': periodId,
      if (alarmStatus != null) 'alarm_status': alarmStatus,
      if (repeatedDays != null) 'repeated_days': repeatedDays,
    });
  }

  AlarmCompanion copyWith(
      {Value<int>? alarmId,
      Value<int?>? userId,
      Value<String?>? alarmTime,
      Value<int?>? hour,
      Value<int?>? minutes,
      Value<String?>? period,
      Value<int?>? periodId,
      Value<bool?>? alarmStatus,
      Value<String?>? repeatedDays}) {
    return AlarmCompanion(
      alarmId: alarmId ?? this.alarmId,
      userId: userId ?? this.userId,
      alarmTime: alarmTime ?? this.alarmTime,
      hour: hour ?? this.hour,
      minutes: minutes ?? this.minutes,
      period: period ?? this.period,
      periodId: periodId ?? this.periodId,
      alarmStatus: alarmStatus ?? this.alarmStatus,
      repeatedDays: repeatedDays ?? this.repeatedDays,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (alarmId.present) {
      map['alarm_id'] = Variable<int>(alarmId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int?>(userId.value);
    }
    if (alarmTime.present) {
      map['alarm_time'] = Variable<String?>(alarmTime.value);
    }
    if (hour.present) {
      map['hour'] = Variable<int?>(hour.value);
    }
    if (minutes.present) {
      map['minutes'] = Variable<int?>(minutes.value);
    }
    if (period.present) {
      map['period'] = Variable<String?>(period.value);
    }
    if (periodId.present) {
      map['period_id'] = Variable<int?>(periodId.value);
    }
    if (alarmStatus.present) {
      map['alarm_status'] = Variable<bool?>(alarmStatus.value);
    }
    if (repeatedDays.present) {
      map['repeated_days'] = Variable<String?>(repeatedDays.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AlarmCompanion(')
          ..write('alarmId: $alarmId, ')
          ..write('userId: $userId, ')
          ..write('alarmTime: $alarmTime, ')
          ..write('hour: $hour, ')
          ..write('minutes: $minutes, ')
          ..write('period: $period, ')
          ..write('periodId: $periodId, ')
          ..write('alarmStatus: $alarmStatus, ')
          ..write('repeatedDays: $repeatedDays')
          ..write(')'))
        .toString();
  }
}

class $AlarmTable extends Alarm with TableInfo<$AlarmTable, AlarmData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AlarmTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _alarmIdMeta = const VerificationMeta('alarmId');
  @override
  late final GeneratedColumn<int?> alarmId = GeneratedColumn<int?>(
      'alarm_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int?> userId = GeneratedColumn<int?>(
      'user_id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _alarmTimeMeta = const VerificationMeta('alarmTime');
  @override
  late final GeneratedColumn<String?> alarmTime = GeneratedColumn<String?>(
      'alarm_time', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  final VerificationMeta _hourMeta = const VerificationMeta('hour');
  @override
  late final GeneratedColumn<int?> hour = GeneratedColumn<int?>(
      'hour', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _minutesMeta = const VerificationMeta('minutes');
  @override
  late final GeneratedColumn<int?> minutes = GeneratedColumn<int?>(
      'minutes', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _periodMeta = const VerificationMeta('period');
  @override
  late final GeneratedColumn<String?> period = GeneratedColumn<String?>(
      'period', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant("am"));
  final VerificationMeta _periodIdMeta = const VerificationMeta('periodId');
  @override
  late final GeneratedColumn<int?> periodId = GeneratedColumn<int?>(
      'period_id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  final VerificationMeta _alarmStatusMeta =
      const VerificationMeta('alarmStatus');
  @override
  late final GeneratedColumn<bool?> alarmStatus = GeneratedColumn<bool?>(
      'alarm_status', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (alarm_status IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _repeatedDaysMeta =
      const VerificationMeta('repeatedDays');
  @override
  late final GeneratedColumn<String?> repeatedDays = GeneratedColumn<String?>(
      'repeated_days', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(""));
  @override
  List<GeneratedColumn> get $columns => [
        alarmId,
        userId,
        alarmTime,
        hour,
        minutes,
        period,
        periodId,
        alarmStatus,
        repeatedDays
      ];
  @override
  String get aliasedName => _alias ?? 'alarm';
  @override
  String get actualTableName => 'alarm';
  @override
  VerificationContext validateIntegrity(Insertable<AlarmData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('alarm_id')) {
      context.handle(_alarmIdMeta,
          alarmId.isAcceptableOrUnknown(data['alarm_id']!, _alarmIdMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('alarm_time')) {
      context.handle(_alarmTimeMeta,
          alarmTime.isAcceptableOrUnknown(data['alarm_time']!, _alarmTimeMeta));
    }
    if (data.containsKey('hour')) {
      context.handle(
          _hourMeta, hour.isAcceptableOrUnknown(data['hour']!, _hourMeta));
    }
    if (data.containsKey('minutes')) {
      context.handle(_minutesMeta,
          minutes.isAcceptableOrUnknown(data['minutes']!, _minutesMeta));
    }
    if (data.containsKey('period')) {
      context.handle(_periodMeta,
          period.isAcceptableOrUnknown(data['period']!, _periodMeta));
    }
    if (data.containsKey('period_id')) {
      context.handle(_periodIdMeta,
          periodId.isAcceptableOrUnknown(data['period_id']!, _periodIdMeta));
    }
    if (data.containsKey('alarm_status')) {
      context.handle(
          _alarmStatusMeta,
          alarmStatus.isAcceptableOrUnknown(
              data['alarm_status']!, _alarmStatusMeta));
    }
    if (data.containsKey('repeated_days')) {
      context.handle(
          _repeatedDaysMeta,
          repeatedDays.isAcceptableOrUnknown(
              data['repeated_days']!, _repeatedDaysMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {alarmId};
  @override
  AlarmData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AlarmData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AlarmTable createAlias(String alias) {
    return $AlarmTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UserTable user = $UserTable(this);
  late final $AlarmTable alarm = $AlarmTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [user, alarm];
}
