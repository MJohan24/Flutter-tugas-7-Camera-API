import 'package:flutter_test/flutter_test.dart';

import 'package:tugas_7_camera_api/main.dart';

void main() {
  testWidgets('Menampilkan pesan saat kamera tidak tersedia', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp(cameras: []));

    expect(find.text('Flutter Camera API'), findsOneWidget);
    expect(
      find.text('Kamera tidak ditemukan pada perangkat ini.'),
      findsOneWidget,
    );
  });
}
