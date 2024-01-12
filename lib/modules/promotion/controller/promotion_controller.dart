
import 'package:flutter/material.dart';
import 'package:gojek_app/core.dart';
import '../view/promotion_view.dart';

class PromotionController extends State<PromotionView> {
    static late PromotionController instance;
    late PromotionView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    