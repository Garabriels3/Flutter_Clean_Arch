class Response {
  int status = 400;
  String message = "";
  dynamic data;

  Response({this.status, this.message, this.data});
}
