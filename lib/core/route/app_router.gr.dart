// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ProductDashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductDashboardPage(),
      );
    },
    ProductDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductDetailsPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    ProductFilterRoute.name: (routeData) {
      final args = routeData.argsAs<ProductFilterRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductFilterPage(
          key: args.key,
          filter: args.filter,
        ),
      );
    },
  };
}

/// generated route for
/// [ProductDashboardPage]
class ProductDashboardRoute extends PageRouteInfo<void> {
  const ProductDashboardRoute({List<PageRouteInfo>? children})
      : super(
          ProductDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductDashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductDetailsPage]
class ProductDetailsRoute extends PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    Key? key,
    required Product product,
    List<PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static const PageInfo<ProductDetailsRouteArgs> page =
      PageInfo<ProductDetailsRouteArgs>(name);
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.product,
  });

  final Key? key;

  final Product product;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [ProductFilterPage]
class ProductFilterRoute extends PageRouteInfo<ProductFilterRouteArgs> {
  ProductFilterRoute({
    Key? key,
    required ProductFilter? filter,
    List<PageRouteInfo>? children,
  }) : super(
          ProductFilterRoute.name,
          args: ProductFilterRouteArgs(
            key: key,
            filter: filter,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductFilterRoute';

  static const PageInfo<ProductFilterRouteArgs> page =
      PageInfo<ProductFilterRouteArgs>(name);
}

class ProductFilterRouteArgs {
  const ProductFilterRouteArgs({
    this.key,
    required this.filter,
  });

  final Key? key;

  final ProductFilter? filter;

  @override
  String toString() {
    return 'ProductFilterRouteArgs{key: $key, filter: $filter}';
  }
}
