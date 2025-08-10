import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Steam Watcher',
      theme: ThemeData.dark(), // Tema escuro global
      themeMode:
          ThemeMode
              .dark, // Força o tema escuro, independentemente das configurações do sistema
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isFirstTime = true;

  @override
  void initState() {
    super.initState();
    _checkFirstTime();
  }

  // Função para verificar se o usuário já viu o tutorial
  _checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isFirstTime = prefs.getBool('isFirstTime');
    if (isFirstTime == null || isFirstTime) {
      prefs.setBool('isFirstTime', false);
      _isFirstTime = true;
    } else {
      _isFirstTime = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _isFirstTime
              ? OnboardingScreen()
              : LoginScreen(), // Condição para mostrar o tutorial ou a tela de login
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // Função para navegar entre as páginas
  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  // Função para avançar para a tela de login
  void _onSkip() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(
            context,
          ).scaffoldBackgroundColor, // Garante que o fundo siga o tema
      appBar: AppBar(
        title: Text("Tutorial"),
        backgroundColor:
            Theme.of(context)
                .appBarTheme
                .backgroundColor, // Aplica o fundo do appBar com o tema
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: [
                _buildPage(
                  'Bem-vindo ao Steam Watcher',
                  'Um aplicativo móvel que ajuda jogadores a ficarem informados sobre as últimas atualizações de seus jogos Steam favoritos.',
                ),
                _buildPage('Página 2', 'Como usar a funcionalidade A'),
                _buildPage('Página 3', 'Como usar a funcionalidade B'),
                _buildPage('Página 4', 'Vamos começar a usar o app!'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _currentPage == 3
                    ? TextButton(
                      onPressed: _onSkip,
                      child: Text('Ir para Login'),
                    )
                    : SizedBox(),
                Row(
                  children: List.generate(4, (index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      height: 10.0,
                      width: _currentPage == index ? 20.0 : 10.0,
                      decoration: BoxDecoration(
                        color:
                            _currentPage == index ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    );
                  }),
                ),
                _currentPage == 3
                    ? TextButton(
                      onPressed: _onSkip,
                      child: Text('Ir para Login'),
                    )
                    : IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        if (_currentPage < 3) {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          _onSkip();
                        }
                      },
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Função para criar as páginas do tutorial
  Widget _buildPage(String title, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            title,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(description, textAlign: TextAlign.justify),
        ),
      ],
    );
  }
}