import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/ui/weather.dart';

void main() {
  Widget directAncestor(Widget child) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Center(
          child: child,
        ));
  }

  testWidgets('Weather widget test', (WidgetTester tester) async {
    await tester.pumpWidget(directAncestor(Weather()));
    expect(find.byType(RichText), findsWidgets);
    expect(find.byType(Row), findsWidgets);
    expect(find.byType(Column), findsWidgets);
    expect(find.text('Cloudy'), findsOneWidget);
  });
}
