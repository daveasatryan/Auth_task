import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:task_auth_app/core/data/utilities/injection/injection.config.dart';

/// Configures getIt dependencies
@InjectableInit()
Future<void> configureDependencies() async => GetIt.instance.init();