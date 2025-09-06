import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class ProgrammingLanguage {
  final String name;
  final String description;
  final String imageUrl;
  final int year;
  final String creator;

  ProgrammingLanguage({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.year,
    required this.creator,
  });
}

final List<ProgrammingLanguage> languages = [
  ProgrammingLanguage(
    name: 'Dart',
    description: 'Lenguaje de programación optimizado para aplicaciones multiplataforma. Desarrollado por Google y usado en Flutter.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-dart-3521596-2945048.png',
    year: 2011,
    creator: 'Google',
  ),
  ProgrammingLanguage(
    name: 'JavaScript',
    description: 'Lenguaje de programación interpretado, dialecto del estándar ECMAScript.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-javascript-3630127-3031259.png',
    year: 1995,
    creator: 'Brendan Eich',
  ),
  ProgrammingLanguage(
    name: 'Python',
    description: 'Lenguaje de programación interpretado cuya filosofía hace hincapié en la legibilidad de su código.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-python-3521655-2945099.png',
    year: 1991,
    creator: 'Guido van Rossum',
  ),
  ProgrammingLanguage(
    name: 'Java',
    description: 'Lenguaje de programación de propósito general, orientado a objetos y concurrente.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-java-60-1174953.png',
    year: 1995,
    creator: 'James Gosling',
  ),
  ProgrammingLanguage(
    name: 'C++',
    description: 'Lenguaje de programación diseñado en 1979 por Bjarne Stroustrup.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-c-4-226082.png',
    year: 1983,
    creator: 'Bjarne Stroustrup',
  ),
  ProgrammingLanguage(
    name: 'C#',
    description: 'Lenguaje de programación multiparadigma desarrollado por Microsoft.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-c-sharp-1-1175241.png',
    year: 2000,
    creator: 'Microsoft',
  ),
  ProgrammingLanguage(
    name: 'Swift',
    description: 'Lenguaje de programación creado por Apple para desarrollar apps iOS y macOS.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-swift-15-458365.png',
    year: 2014,
    creator: 'Apple',
  ),
  ProgrammingLanguage(
    name: 'Kotlin',
    description: 'Lenguaje de programación moderno que compila a Java Bytecode y JavaScript.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-kotlin-1-283005.png',
    year: 2011,
    creator: 'JetBrains',
  ),
  ProgrammingLanguage(
    name: 'Go',
    description: 'Lenguaje de programación concurrente y compilado inspirado en la sintaxis de C.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-golang-1-283007.png',
    year: 2009,
    creator: 'Google',
  ),
  ProgrammingLanguage(
    name: 'Rust',
    description: 'Lenguaje de programación multiparadigma que se enfoca en seguridad y rendimiento.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-rust-2752108-2285005.png',
    year: 2010,
    creator: 'Mozilla',
  ),
  ProgrammingLanguage(
    name: 'TypeScript',
    description: 'Superset de JavaScript que añade tipos estáticos y objetos basados en clases.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-typescript-1-1175078.png',
    year: 2012,
    creator: 'Microsoft',
  ),
  ProgrammingLanguage(
    name: 'PHP',
    description: 'Lenguaje de programación de propósito general especialmente adecuado para desarrollo web.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-php-1-1175277.png',
    year: 1995,
    creator: 'Rasmus Lerdorf',
  ),
];

class LanguageList extends StatelessWidget {
  final List<ProgrammingLanguage> languages;

  const LanguageList({super.key, required this.languages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: languages.length,
      itemBuilder: (context, index) {
        final language = languages[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(language.imageUrl),
            backgroundColor: Colors.grey[200],
          ),
          title: Text(
            language.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            'Creado por ${language.creator} en ${language.year}',
            style: TextStyle(color: Colors.grey[600]),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Seleccionaste: ${language.name}'),
                duration: const Duration(seconds: 1),
              ),
            );
          },
        );
      },
    );
  }
}

class LanguageCards extends StatelessWidget {
  final List<ProgrammingLanguage> languages;

  const LanguageCards({super.key, required this.languages});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.8,
        ),
        itemCount: languages.length,
        itemBuilder: (context, index) {
          final language = languages[index];
          return _buildLanguageCard(language, context);
        },
      ),
    );
  }

  Widget _buildLanguageCard(ProgrammingLanguage language, BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Card de ${language.name} presionado'),
              duration: const Duration(seconds: 1),
            ),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(language.imageUrl),
                  radius: 40,
                  backgroundColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 12),
              Text(
                language.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                '${language.year} • ${language.creator}',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Text(
                  language.description,
                  style: const TextStyle(fontSize: 12),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedView = 0; // 0: Lista, 1: Cards
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Lenguajes de Programación'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => _showSnackBar('Búsqueda presionada'),
            tooltip: 'Buscar',
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () => _showSnackBar('Favorito presionado'),
            tooltip: 'Favoritos',
          ),
        ],
      ),
      drawer: _buildDrawer(),
      body: _selectedView == 0
          ? LanguageList(languages: languages)
          : LanguageCards(languages: languages),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menú de Navegación',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Ver Lista'),
            onTap: () {
              setState(() => _selectedView = 0);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_module),
            title: const Text('Ver CardView'),
            onTap: () {
              setState(() => _selectedView = 1);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lenguajes de Programación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}