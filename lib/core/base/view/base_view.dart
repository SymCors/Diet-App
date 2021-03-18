import 'package:flutter/material.dart';

class BaseView<T> extends StatefulWidget {
  final Widget Function(BuildContext context, T value) onPageBuilder;
  final T viewModel;
  final Function(T model) onModelReady;
  final VoidCallback onDispose;
  final backgroundColor;
  final AppBar appBar;

  const BaseView(
      {Key key,
      @required this.viewModel,
      @required this.onPageBuilder,
      this.onModelReady,
      this.onDispose,
      this.backgroundColor,
      this.appBar})
      : super(key: key);

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    if (widget.onModelReady != null) widget.onModelReady(widget.viewModel);
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onDispose != null) widget.onDispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar ,
      backgroundColor: widget.backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: widget.onPageBuilder(context, widget.viewModel),
      ),
    );
  }
}
