// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/brand/data/repository/brand_repository.dart' as _i6;
import '../../features/brand/data/repository/i_brand_repository.dart' as _i5;
import '../../features/brand/presentation/bloc/brand_bloc.dart' as _i10;
import '../../features/product/data/repository/i_product_repository.dart'
    as _i7;
import '../../features/product/data/repository/product_repository.dart' as _i8;
import '../../features/product/presentation/bloc/product_bloc.dart' as _i9;
import 'module_injection.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final localModule = _$LocalModule();
    gh.singleton<_i3.FirebaseFirestore>(() => localModule.firestore());
    gh.singleton<_i4.FirebaseAuth>(() => localModule.firebaseAuth());
    gh.factory<_i5.IBrandRepository>(
        () => _i6.BrandRepository(db: gh<_i3.FirebaseFirestore>()));
    gh.factory<_i7.IProductRepository>(
        () => _i8.ProductRepository(db: gh<_i3.FirebaseFirestore>()));
    gh.factory<_i9.ProductBloc>(
        () => _i9.ProductBloc(gh<_i7.IProductRepository>()));
    gh.factory<_i10.BrandBloc>(
        () => _i10.BrandBloc(gh<_i5.IBrandRepository>()));
    return this;
  }
}

class _$LocalModule extends _i11.LocalModule {}
