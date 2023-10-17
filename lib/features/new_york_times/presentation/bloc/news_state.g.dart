// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsState extends NewsState {
  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final bool isSearch;
  @override
  final bool isListView;
  @override
  final bool isChanged;
  @override
  final String errorMessage;
  @override
  final NewsEntity newsEntity;
  @override
  final NewsEntity newsResult;

  factory _$NewsState([void Function(NewsStateBuilder)? updates]) =>
      (new NewsStateBuilder()..update(updates))._build();

  _$NewsState._(
      {required this.isLoading,
      required this.isSuccess,
      required this.isSearch,
      required this.isListView,
      required this.isChanged,
      required this.errorMessage,
      required this.newsEntity,
      required this.newsResult})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, r'NewsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(isSuccess, r'NewsState', 'isSuccess');
    BuiltValueNullFieldError.checkNotNull(isSearch, r'NewsState', 'isSearch');
    BuiltValueNullFieldError.checkNotNull(
        isListView, r'NewsState', 'isListView');
    BuiltValueNullFieldError.checkNotNull(isChanged, r'NewsState', 'isChanged');
    BuiltValueNullFieldError.checkNotNull(
        errorMessage, r'NewsState', 'errorMessage');
    BuiltValueNullFieldError.checkNotNull(
        newsEntity, r'NewsState', 'newsEntity');
    BuiltValueNullFieldError.checkNotNull(
        newsResult, r'NewsState', 'newsResult');
  }

  @override
  NewsState rebuild(void Function(NewsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsStateBuilder toBuilder() => new NewsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsState &&
        isLoading == other.isLoading &&
        isSuccess == other.isSuccess &&
        isSearch == other.isSearch &&
        isListView == other.isListView &&
        isChanged == other.isChanged &&
        errorMessage == other.errorMessage &&
        newsEntity == other.newsEntity &&
        newsResult == other.newsResult;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, isSuccess.hashCode);
    _$hash = $jc(_$hash, isSearch.hashCode);
    _$hash = $jc(_$hash, isListView.hashCode);
    _$hash = $jc(_$hash, isChanged.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, newsEntity.hashCode);
    _$hash = $jc(_$hash, newsResult.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsState')
          ..add('isLoading', isLoading)
          ..add('isSuccess', isSuccess)
          ..add('isSearch', isSearch)
          ..add('isListView', isListView)
          ..add('isChanged', isChanged)
          ..add('errorMessage', errorMessage)
          ..add('newsEntity', newsEntity)
          ..add('newsResult', newsResult))
        .toString();
  }
}

class NewsStateBuilder implements Builder<NewsState, NewsStateBuilder> {
  _$NewsState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _isSuccess;
  bool? get isSuccess => _$this._isSuccess;
  set isSuccess(bool? isSuccess) => _$this._isSuccess = isSuccess;

  bool? _isSearch;
  bool? get isSearch => _$this._isSearch;
  set isSearch(bool? isSearch) => _$this._isSearch = isSearch;

  bool? _isListView;
  bool? get isListView => _$this._isListView;
  set isListView(bool? isListView) => _$this._isListView = isListView;

  bool? _isChanged;
  bool? get isChanged => _$this._isChanged;
  set isChanged(bool? isChanged) => _$this._isChanged = isChanged;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  NewsEntity? _newsEntity;
  NewsEntity? get newsEntity => _$this._newsEntity;
  set newsEntity(NewsEntity? newsEntity) => _$this._newsEntity = newsEntity;

  NewsEntity? _newsResult;
  NewsEntity? get newsResult => _$this._newsResult;
  set newsResult(NewsEntity? newsResult) => _$this._newsResult = newsResult;

  NewsStateBuilder();

  NewsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _isSuccess = $v.isSuccess;
      _isSearch = $v.isSearch;
      _isListView = $v.isListView;
      _isChanged = $v.isChanged;
      _errorMessage = $v.errorMessage;
      _newsEntity = $v.newsEntity;
      _newsResult = $v.newsResult;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsState;
  }

  @override
  void update(void Function(NewsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsState build() => _build();

  _$NewsState _build() {
    final _$result = _$v ??
        new _$NewsState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'NewsState', 'isLoading'),
            isSuccess: BuiltValueNullFieldError.checkNotNull(
                isSuccess, r'NewsState', 'isSuccess'),
            isSearch: BuiltValueNullFieldError.checkNotNull(
                isSearch, r'NewsState', 'isSearch'),
            isListView: BuiltValueNullFieldError.checkNotNull(
                isListView, r'NewsState', 'isListView'),
            isChanged: BuiltValueNullFieldError.checkNotNull(
                isChanged, r'NewsState', 'isChanged'),
            errorMessage: BuiltValueNullFieldError.checkNotNull(
                errorMessage, r'NewsState', 'errorMessage'),
            newsEntity: BuiltValueNullFieldError.checkNotNull(
                newsEntity, r'NewsState', 'newsEntity'),
            newsResult: BuiltValueNullFieldError.checkNotNull(
                newsResult, r'NewsState', 'newsResult'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
