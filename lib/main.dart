import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_theme/cocodayo_theme_mode.dart';
import 'package:flutter_theme/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ref.watch(themeProvider).themeMode.themeData,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(title: widget.title),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Card(
              child: ListTile(
                  title: const Text('押してみな'),
                  onTap: () => _Page2.push(context),
                  trailing: const Icon(Icons.arrow_forward_ios)),
            ),
            ElevatedButton(onPressed: () => {}, child: const Text('ブトン')),
            const Card(
              child: ListTile(
                title: Text('ここは押せないよ'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _Page2 extends ConsumerWidget {
  const _Page2();

  static push(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const _Page2()));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: _appBar(title: 'テーマ選択'),
        body: Column(
          children: [
            _setTheme(context, ref, CocodayoThemeMode.normal),
            _setTheme(context, ref, CocodayoThemeMode.emergency),
            _openLicense(context),
          ],
        ));
  }

  Widget _setTheme(BuildContext context, WidgetRef ref, CocodayoThemeMode themeMode) {
    return Card(
        child: ListTile(
            leading: themeMode.icon,
            title: Text('${themeMode.displayName}にする'),
            subtitle: Text(themeMode.description),
        onTap: () => ref.read(themeProvider.notifier).change(themeMode)));
  }

  Widget _openLicense(BuildContext context) {
    return Card(
        child: ListTile(
            leading: const Icon(Icons.feed),
            title: const Text('ライセンス'),
            subtitle: const Text('ライセンスを表示します'),
            onTap: () => showLicensePage(context: context)));
  }
}

AppBar _appBar({required String title}) {
  return AppBar(title: Text(title));
}
