// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$YoutubeState {
  List<VideoEntity> get liveVideos;
  List<VideoEntity> get normalVideos;
  List<VideoEntity> get shortsVideos;
  bool get isLoading;
  String? get error;

  /// Create a copy of YoutubeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $YoutubeStateCopyWith<YoutubeState> get copyWith =>
      _$YoutubeStateCopyWithImpl<YoutubeState>(
          this as YoutubeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is YoutubeState &&
            const DeepCollectionEquality()
                .equals(other.liveVideos, liveVideos) &&
            const DeepCollectionEquality()
                .equals(other.normalVideos, normalVideos) &&
            const DeepCollectionEquality()
                .equals(other.shortsVideos, shortsVideos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(liveVideos),
      const DeepCollectionEquality().hash(normalVideos),
      const DeepCollectionEquality().hash(shortsVideos),
      isLoading,
      error);

  @override
  String toString() {
    return 'YoutubeState(liveVideos: $liveVideos, normalVideos: $normalVideos, shortsVideos: $shortsVideos, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class $YoutubeStateCopyWith<$Res> {
  factory $YoutubeStateCopyWith(
          YoutubeState value, $Res Function(YoutubeState) _then) =
      _$YoutubeStateCopyWithImpl;
  @useResult
  $Res call(
      {List<VideoEntity> liveVideos,
      List<VideoEntity> normalVideos,
      List<VideoEntity> shortsVideos,
      bool isLoading,
      String? error});
}

/// @nodoc
class _$YoutubeStateCopyWithImpl<$Res> implements $YoutubeStateCopyWith<$Res> {
  _$YoutubeStateCopyWithImpl(this._self, this._then);

  final YoutubeState _self;
  final $Res Function(YoutubeState) _then;

  /// Create a copy of YoutubeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveVideos = null,
    Object? normalVideos = null,
    Object? shortsVideos = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      liveVideos: null == liveVideos
          ? _self.liveVideos
          : liveVideos // ignore: cast_nullable_to_non_nullable
              as List<VideoEntity>,
      normalVideos: null == normalVideos
          ? _self.normalVideos
          : normalVideos // ignore: cast_nullable_to_non_nullable
              as List<VideoEntity>,
      shortsVideos: null == shortsVideos
          ? _self.shortsVideos
          : shortsVideos // ignore: cast_nullable_to_non_nullable
              as List<VideoEntity>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [YoutubeState].
extension YoutubeStatePatterns on YoutubeState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_YoutubeState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _YoutubeState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_YoutubeState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YoutubeState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_YoutubeState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YoutubeState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<VideoEntity> liveVideos,
            List<VideoEntity> normalVideos,
            List<VideoEntity> shortsVideos,
            bool isLoading,
            String? error)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _YoutubeState() when $default != null:
        return $default(_that.liveVideos, _that.normalVideos,
            _that.shortsVideos, _that.isLoading, _that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<VideoEntity> liveVideos,
            List<VideoEntity> normalVideos,
            List<VideoEntity> shortsVideos,
            bool isLoading,
            String? error)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YoutubeState():
        return $default(_that.liveVideos, _that.normalVideos,
            _that.shortsVideos, _that.isLoading, _that.error);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<VideoEntity> liveVideos,
            List<VideoEntity> normalVideos,
            List<VideoEntity> shortsVideos,
            bool isLoading,
            String? error)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _YoutubeState() when $default != null:
        return $default(_that.liveVideos, _that.normalVideos,
            _that.shortsVideos, _that.isLoading, _that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _YoutubeState implements YoutubeState {
  const _YoutubeState(
      {final List<VideoEntity> liveVideos = const [],
      final List<VideoEntity> normalVideos = const [],
      final List<VideoEntity> shortsVideos = const [],
      this.isLoading = false,
      this.error = null})
      : _liveVideos = liveVideos,
        _normalVideos = normalVideos,
        _shortsVideos = shortsVideos;

  final List<VideoEntity> _liveVideos;
  @override
  @JsonKey()
  List<VideoEntity> get liveVideos {
    if (_liveVideos is EqualUnmodifiableListView) return _liveVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_liveVideos);
  }

  final List<VideoEntity> _normalVideos;
  @override
  @JsonKey()
  List<VideoEntity> get normalVideos {
    if (_normalVideos is EqualUnmodifiableListView) return _normalVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_normalVideos);
  }

  final List<VideoEntity> _shortsVideos;
  @override
  @JsonKey()
  List<VideoEntity> get shortsVideos {
    if (_shortsVideos is EqualUnmodifiableListView) return _shortsVideos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shortsVideos);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? error;

  /// Create a copy of YoutubeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$YoutubeStateCopyWith<_YoutubeState> get copyWith =>
      __$YoutubeStateCopyWithImpl<_YoutubeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _YoutubeState &&
            const DeepCollectionEquality()
                .equals(other._liveVideos, _liveVideos) &&
            const DeepCollectionEquality()
                .equals(other._normalVideos, _normalVideos) &&
            const DeepCollectionEquality()
                .equals(other._shortsVideos, _shortsVideos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_liveVideos),
      const DeepCollectionEquality().hash(_normalVideos),
      const DeepCollectionEquality().hash(_shortsVideos),
      isLoading,
      error);

  @override
  String toString() {
    return 'YoutubeState(liveVideos: $liveVideos, normalVideos: $normalVideos, shortsVideos: $shortsVideos, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$YoutubeStateCopyWith<$Res>
    implements $YoutubeStateCopyWith<$Res> {
  factory _$YoutubeStateCopyWith(
          _YoutubeState value, $Res Function(_YoutubeState) _then) =
      __$YoutubeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<VideoEntity> liveVideos,
      List<VideoEntity> normalVideos,
      List<VideoEntity> shortsVideos,
      bool isLoading,
      String? error});
}

/// @nodoc
class __$YoutubeStateCopyWithImpl<$Res>
    implements _$YoutubeStateCopyWith<$Res> {
  __$YoutubeStateCopyWithImpl(this._self, this._then);

  final _YoutubeState _self;
  final $Res Function(_YoutubeState) _then;

  /// Create a copy of YoutubeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? liveVideos = null,
    Object? normalVideos = null,
    Object? shortsVideos = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_YoutubeState(
      liveVideos: null == liveVideos
          ? _self._liveVideos
          : liveVideos // ignore: cast_nullable_to_non_nullable
              as List<VideoEntity>,
      normalVideos: null == normalVideos
          ? _self._normalVideos
          : normalVideos // ignore: cast_nullable_to_non_nullable
              as List<VideoEntity>,
      shortsVideos: null == shortsVideos
          ? _self._shortsVideos
          : shortsVideos // ignore: cast_nullable_to_non_nullable
              as List<VideoEntity>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
