import 'package:flutter/material.dart';

class VxInformationParser extends RouteInformationParser<Uri> {
  @override
  Future<Uri> parseRouteInformation(RouteInformation routeInformation) async {
    return routeInformation.uri;
  }

  @override
  RouteInformation? restoreRouteInformation(Uri configuration) {
    return RouteInformation(
      uri: Uri.parse(Uri.decodeComponent(configuration.toString())),
    );
  }
}
