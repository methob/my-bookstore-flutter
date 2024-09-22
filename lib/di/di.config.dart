import 'dart:async';

import 'package:bookstore_thais/ui/screen/login/login_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
FutureOr<void> configureDependencies() => getIt.init();

@module
class RegisterModule {
  @singleton
  Dio get dio => Dio();
}

class GlobalBlocProviders extends StatelessWidget {

  final Widget child;

  const GlobalBlocProviders({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return child;
    // return MultiBlocProvider(
    //   providers: const [
    //
    //   ],
    //   child: child,
    // );
  }
}

extension InjectedGetItExtension on GetIt {

  Future<GetIt> init({
    String? environment,
    EnvironmentFilter? environmentFilter,
  }) async {
    final injectedHelper = GetItHelper(this, environment, environmentFilter);
    final dioModule = RegisterModule();
    injectedHelper.singleton<Dio>(() => dioModule.dio);
    injectedHelper.singleton<LoginController>(() => LoginController());
    return this;
  }
}