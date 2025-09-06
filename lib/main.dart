import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Modelo de datos para los lenguajes de programación
class ProgrammingLanguage {
  final String name;
  final String description;
  final String imageUrl;
  final int year;
  final String creator;
  final String website;
  final List<String> features;

  ProgrammingLanguage({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.year,
    required this.creator,
    required this.website,
    required this.features,
  });
}

// Lista de lenguajes de programación
final List<ProgrammingLanguage> languages = [
  ProgrammingLanguage(
    name: 'Dart',
    description: 'Lenguaje de programación optimizado para aplicaciones multiplataforma. Desarrollado por Google y usado en Flutter para crear aplicaciones nativas compiladas.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-dart-3521596-2945048.png',
    year: 2011,
    creator: 'Google',
    website: 'https://dart.dev',
    features: ['Orientado a objetos', 'Compilado a JavaScript', 'Null safety', 'Async/await'],
  ),
  ProgrammingLanguage(
    name: 'JavaScript',
    description: 'Lenguaje de programación interpretado, dialecto del estándar ECMAScript. Es el lenguaje de programación más usado para desarrollo web.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-javascript-3630127-3031259.png',
    year: 1995,
    creator: 'Brendan Eich',
    website: 'https://developer.mozilla.org/es/docs/Web/JavaScript',
    features: ['Interpretado', 'Orientado a objetos', 'Funciones de primera clase', 'Dynamic typing'],
  ),
  ProgrammingLanguage(
    name: 'Python',
    description: 'Lenguaje de programación interpretado cuya filosofía hace hincapié en la legibilidad de su código. Es multiparadigma y multiplataforma.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-python-3521655-2945099.png',
    year: 1991,
    creator: 'Guido van Rossum',
    website: 'https://www.python.org',
    features: ['Sintaxis clara', 'Multiparadigma', 'Extensa biblioteca estándar', 'Community grande'],
  ),
  ProgrammingLanguage(
    name: 'Java',
    description: 'Lenguaje de programación de propósito general, orientado a objetos y concurrente. Es uno de los lenguajes más populares y demandados.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-java-60-1174953.png',
    year: 1995,
    creator: 'James Gosling',
    website: 'https://www.java.com',
    features: ['Write once, run anywhere', 'Orientado a objetos', 'Garbage collection', 'Multiplataforma'],
  ),
  ProgrammingLanguage(
    name: 'C++',
    description: 'Lenguaje de programación diseñado en 1979 por Bjarne Stroustrup. Extiende el lenguaje C con características de programación orientada a objetos.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-c-4-226082.png',
    year: 1983,
    creator: 'Bjarne Stroustrup',
    website: 'https://isocpp.org',
    features: ['Alto rendimiento', 'Programación de sistemas', 'Orientado a objetos', 'Templates'],
  ),
  ProgrammingLanguage(
    name: 'C#',
    description: 'Lenguaje de programación multiparadigma desarrollado por Microsoft. Es parte de la plataforma .NET y muy usado en desarrollo de videojuegos con Unity.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-c-sharp-1-1175241.png',
    year: 2000,
    creator: 'Microsoft',
    website: 'https://dotnet.microsoft.com/languages/csharp',
    features: ['Orientado a objetos', 'Type-safe', 'Garbage collection', 'LINQ'],
  ),
  ProgrammingLanguage(
    name: 'Swift',
    description: 'Lenguaje de programación creado por Apple para desarrollar apps iOS, macOS, watchOS y tvOS. Es moderno, seguro y rápido.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-swift-15-458365.png',
    year: 2014,
    creator: 'Apple',
    website: 'https://swift.org',
    features: ['Seguro por diseño', 'Rápido', 'Moderno', 'Interoperable con Objective-C'],
  ),
  ProgrammingLanguage(
    name: 'Kotlin',
    description: 'Lenguaje de programación moderno que compila a Java Bytecode y JavaScript. Es el lenguaje preferido para desarrollo Android.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-kotlin-1-283005.png',
    year: 2011,
    creator: 'JetBrains',
    website: 'https://kotlinlang.org',
    features: ['Interoperable con Java', 'Null safety', 'Coroutines', 'Multiplataforma'],
  ),
  ProgrammingLanguage(
    name: 'Go',
    description: 'Lenguaje de programación concurrente y compilado inspirado en la sintaxis de C. Desarrollado por Google para sistemas escalables.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-golang-1-283007.png',
    year: 2009,
    creator: 'Google',
    website: 'https://golang.org',
    features: ['Concurrencia fácil', 'Compilación rápida', 'Garbage collection', 'Sintaxis simple'],
  ),
  ProgrammingLanguage(
    name: 'Rust',
    description: 'Lenguaje de programación multiparadigma que se enfoca en seguridad y rendimiento. Previene errores de memoria en tiempo de compilación.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-rust-2752108-2285005.png',
    year: 2010,
    creator: 'Mozilla',
    website: 'https://www.rust-lang.org',
    features: ['Memory safety', 'Zero-cost abstractions', 'Concurrencia segura', 'Performance'],
  ),
  ProgrammingLanguage(
    name: 'TypeScript',
    description: 'Superset de JavaScript que añade tipos estáticos y objetos basados en clases. Desarrollado por Microsoft y muy usado en proyectos grandes.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-256/free-typescript-1-1175078.png',
    year: 2012,
    creator: 'Microsoft',
    website: 'https://www.typescriptlang.org',
    features: ['Tipado estático', 'Superset de JavaScript', 'Mejor tooling', 'Escalabilidad'],
  ),
  ProgrammingLanguage(
    name: 'PHP',
    description: 'Lenguaje de programación de propósito general especialmente adecuado para desarrollo web. Es el lenguaje detrás de WordPress y Facebook.',
    imageUrl: 'https://cdn.iconscout.com/icon/free/png-512/free-php-2038871-1720084.png?f=webp&w=512',
    year: 1995,
    creator: 'Rasmus Lerdorf',
    website: 'https://www.php.net',
    features: ['Server-side scripting', 'Fácil de aprender', 'Amplia adopción', 'Grandes frameworks'],
  ),
];

// Widget para mostrar la lista de lenguajes con animaciones
class LanguageList extends StatelessWidget {
  final List<ProgrammingLanguage> languages;
  final Function(ProgrammingLanguage) onLanguageTap;

  const LanguageList({
    super.key,
    required this.languages,
    required this.onLanguageTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: languages.length,
      itemBuilder: (context, index) {
        final language = languages[index];
        return AnimatedContainer(
          duration: Duration(milliseconds: 300 + (index * 100)),
          curve: Curves.easeInOut,
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ListTile(
            leading: Hero(
              tag: 'image-${language.name}',
              child: CircleAvatar(
                backgroundImage: NetworkImage(language.imageUrl),
                backgroundColor: Colors.grey[200],
                radius: 25,
              ),
            ),
            title: Text(
              language.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.blue,
              ),
            ),
            subtitle: Text(
              'Creado por ${language.creator} • ${language.year}',
              style: TextStyle(color: Colors.grey[600]),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.blue[300],
            ),
            onTap: () => onLanguageTap(language),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
        );
      },
    );
  }
}

// Widget para mostrar las tarjetas de lenguajes con animaciones
class LanguageCards extends StatelessWidget {
  final List<ProgrammingLanguage> languages;
  final Function(ProgrammingLanguage) onLanguageTap;

  const LanguageCards({
    super.key,
    required this.languages,
    required this.onLanguageTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.75,
        ),
        itemCount: languages.length,
        itemBuilder: (context, index) {
          final language = languages[index];
          return AnimatedContainer(
            duration: Duration(milliseconds: 400 + (index * 150)),
            curve: Curves.easeInOutBack,
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                onTap: () => onLanguageTap(language),
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Hero(
                        tag: 'image-${language.name}',
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
                          color: Colors.blue,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${language.year}',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: Text(
                          language.description,
                          style: const TextStyle(fontSize: 10),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 8),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          'Ver más',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Pantalla de detalle del lenguaje
class LanguageDetailScreen extends StatelessWidget {
  final ProgrammingLanguage language;

  const LanguageDetailScreen({super.key, required this.language});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: 'title-${language.name}',
          child: Material(
            color: Colors.transparent,
            child: Text(
              language.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'image-${language.name}',
              child: CircleAvatar(
                backgroundImage: NetworkImage(language.imageUrl),
                radius: 80,
                backgroundColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              language.name,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Creado por ${language.creator} en ${language.year}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Descripción',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    language.description,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green[50],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Características Principales',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: language.features.map((feature) => ListTile(
                      leading: const Icon(Icons.star, color: Colors.green, size: 16),
                      title: Text(feature),
                      contentPadding: EdgeInsets.zero,
                      visualDensity: const VisualDensity(vertical: -4),
                    )).toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sitio Web Oficial',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      // Aquí iría la lógica para abrir el navegador
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Abriendo ${language.website}'),
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Text(
                      language.website,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla principal de la aplicación
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedView = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  void _openLanguageDetail(ProgrammingLanguage language) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => LanguageDetailScreen(language: language),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          
          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
        transitionDuration: const Duration(milliseconds: 500),
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
            onPressed: () => _showSnackBar('🔍 Búsqueda presionada'),
            tooltip: 'Buscar',
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () => _showSnackBar('❤️ Favorito presionado'),
            tooltip: 'Favoritos',
          ),
        ],
        elevation: 4,
        shadowColor: Colors.blue.withOpacity(0.3),
      ),
      drawer: _buildDrawer(),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 600),
        child: _selectedView == 0
            ? LanguageList(
                key: const ValueKey(0),
                languages: languages,
                onLanguageTap: _openLanguageDetail,
              )
            : LanguageCards(
                key: const ValueKey(1),
                languages: languages,
                onLanguageTap: _openLanguageDetail,
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _selectedView = _selectedView == 0 ? 1 : 0;
          });
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: Icon(
            _selectedView == 0 ? Icons.view_module : Icons.list,
            key: ValueKey(_selectedView),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade700, Colors.blue.shade400],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue.shade800, Colors.blue.shade600],
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.code, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    'Dev Languages',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Explora lenguajes de programación',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(
              icon: Icons.list,
              title: 'Ver Lista',
              isSelected: _selectedView == 0,
              onTap: () {
                setState(() => _selectedView = 0);
                Navigator.pop(context);
              },
            ),
            _buildDrawerItem(
              icon: Icons.view_module,
              title: 'Ver CardView',
              isSelected: _selectedView == 1,
              onTap: () {
                setState(() => _selectedView = 1);
                Navigator.pop(context);
            },
            ),
            const Divider(color: Colors.white30, height: 20),
            _buildDrawerItem(
              icon: Icons.info,
              title: 'Acerca de',
              onTap: () {
                Navigator.pop(context);
                _showSnackBar('📱 App desarrollada con Flutter');
              },
            ),
            _buildDrawerItem(
              icon: Icons.settings,
              title: 'Configuración',
              onTap: () {
                Navigator.pop(context);
                _showSnackBar('⚙️ Configuración presionada');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isSelected = false,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white.withOpacity(0.2) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}

// Widget principal de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lenguajes de Programación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 4,
          centerTitle: true,
        ),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}