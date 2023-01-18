# How to use?

    class HomePage extends StatefulWidget {
      const HomePage({Key? key}) : super(key: key);

      @override
      State<HomePage> createState() => _HomePageState();
    }

    class _HomePageState extends State<HomePage> {
      final Stater<int> _count = Stater(value: 0);

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: const Text('Application')),
          body: Center(
            child: StateBuilder(
              _count,
              builder: (stater) => Text(stater.value),
            ),
          ),
        );
      }
    }
