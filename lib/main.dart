import 'package:advanced_test/core/Routing/app_router.dart';
import 'package:advanced_test/doc_app.dart';
import 'package:flutter/material.dart';

import 'core/DI/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
