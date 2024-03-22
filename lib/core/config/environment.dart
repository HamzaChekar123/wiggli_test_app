import 'package:flutter/foundation.dart';

import 'env/env.dart';

String get baseUrl => kReleaseMode ? ProdEnv.baseUrl : DevEnv.baseUrl;

/// The name of the app
const appName = 'App Name';
