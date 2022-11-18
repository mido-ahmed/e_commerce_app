part of 'category_cubit.dart';

@immutable
abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class CategoryNotFound extends CategoryState {}

class CategorySuccess extends CategoryState {}

class NotInternetConnection extends CategoryState {}

class ErrorInCategory extends CategoryState {}
