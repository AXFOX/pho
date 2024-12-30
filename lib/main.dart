import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/* 
  MyApp 类是应用程序的入口点。
  它是一个无状态的小部件，定义了应用程序的整体主题和导航。
*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pho demo', // 应用的标题
      theme: ThemeData(
        /* 
          主题设置：
          - 使用 Material 3 风格
          - 通过种子颜色生成 ColorScheme
        */
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pho demo home page'), // 设置主页
    );
  }
}

/* 
  MyHomePage 类是主页面的状态小部件。
  它使用 StatefulWidget 来管理页面的动态状态。
*/
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // 页面标题
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/* 
  _MyHomePageState 是 MyHomePage 的状态类。
  - 管理计数器状态 (_counter)
  - 处理按钮点击事件 (_incrementCounter)
  - 构建用户界面 (build 方法)
*/
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // 当前计数值

  // 增加计数值的方法
  void _incrementCounter() {
    setState(() {
      _counter++; // 每次调用时递增计数器
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /* 
          AppBar 定义：
          - 设置背景颜色为 ColorScheme 的反色
          - 显示页面标题
        */
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        /* 
          页面主体：
          - 使用 Column 进行垂直布局
          - 居中显示文本和计数器
        */
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter', // 显示当前计数值
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // 绑定点击事件
        tooltip: 'Increment', // 提示信息
        child: const Icon(Icons.add), // 显示加号图标
      ),
    );
  }
}
