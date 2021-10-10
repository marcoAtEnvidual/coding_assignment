import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// A helper class to create cubits at a page level. This makes them much
// easier to test because all you have to do is supply a mock cubit in the params
// instead of using the Page.route() method.
class BlocProviderBuilder<C extends Cubit<S>, S> extends StatelessWidget {
  final C Function(BuildContext) create;
  final Widget Function(BuildContext, C, S) builder;

  const BlocProviderBuilder({
    Key? key,
    required this.create,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: create,
        child: BlocBuilder<C, S>(
          builder: (context, state) {
            final cubit = context.read<C>();
            return builder(context, cubit, state);
          },
        ),
      );
}

class NvBlocBuilder<C extends Cubit<S>, S> extends StatelessWidget {
  final Widget Function(BuildContext, S, C) builder;

  const NvBlocBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<C, S>(
        builder: (context, state) {
          final cubit = context.read<C>();
          return builder(context, state, cubit);
        },
      );
}
