class AppException implements Exception {
  final String? message;
  final String? prefix;

  AppException({this.message, this.prefix});
}

class FetchDataException extends AppException {
  FetchDataException({String? message})
      : super(message: message, prefix: 'Error During Communication');
}
