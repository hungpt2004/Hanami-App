import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:jlpt_app/theme/app_theme.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _rememberMe = false;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            // image: NetworkImage(
            //   'https://i.pinimg.com/originals/42/ce/8c/42ce8c8be9f9b8219f62e2652af24e10.jpg'
            // ),
            image: AssetImage('assets/logo/logo_app_2.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black26,
              BlendMode.darken,
            ),
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInDown(
                      duration: const Duration(milliseconds: 600),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                           // ignore: deprecated_member_use
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        // child: Lottie.network(
                        //   'https://assets1.lottiefiles.com/packages/lf20_rbtawnwz.json',
                        //   width: 150,
                        //   height: 120,
                        // ),
                        child: Image.asset('assets/logo/logo_app_2.jpg',width: 120,height: 120,),
                      ),
                    ),
                    const SizedBox(height: 24),
                    FadeInDown(
                      delay: const Duration(milliseconds: 200),
                      duration: const Duration(milliseconds: 600),
                      child: Text(
                        '花見 JLPT Learn',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                          shadows: [
                            Shadow(
                               // ignore: deprecated_member_use
                              color: Colors.black.withOpacity(0.3),
                              offset: const Offset(2, 2),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    FadeInDown(
                      delay: const Duration(milliseconds: 400),
                      duration: const Duration(milliseconds: 600),
                      child: Text(
                        'Chào mừng đến với ứng dụng học tiếng Nhật',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.secondary,
                          shadows: [
                            Shadow(
                               // ignore: deprecated_member_use
                              color: Colors.black.withOpacity(0.3),
                              offset: const Offset(1, 1),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 48),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 600),
                      child: _buildLoginForm(Theme.of(context)),
                    ),
                    const SizedBox(height: 16),
                    FadeInUp(
                      delay: const Duration(milliseconds: 800),
                      duration: const Duration(milliseconds: 600),
                      child: _buildSocialLogin(Theme.of(context)),
                    ),
                    const SizedBox(height: 32),
                    FadeInUp(
                      delay: const Duration(milliseconds: 1000),
                      duration: const Duration(milliseconds: 600),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Chưa có tài khoản? ',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSecondary,
                              shadows: [
                                Shadow(
                                  // ignore: deprecated_member_use
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(1, 1),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Đăng ký ngay',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                     // ignore: deprecated_member_use
                                    color: Colors.black.withOpacity(0.3),
                                    offset: const Offset(1, 1),
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Đăng nhập',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Nhập email của bạn',
              prefixIcon: const Icon(Icons.email_outlined, color: Colors.red),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.red, width: 2),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            obscureText: !_isPasswordVisible,
            decoration: InputDecoration(
              labelText: 'Mật khẩu',
              hintText: 'Nhập mật khẩu của bạn',
              prefixIcon: const Icon(Icons.lock_outline, color: Colors.red),
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.red, width: 2),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: Checkbox(
                      value: _rememberMe,
                      activeColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Nhớ tài khoản',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Quên mật khẩu?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
              ),
              child: const Text(
                'ĐĂNG NHẬP',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialLogin(ThemeData Theme) {
    return Column(
      children: [
        Text(
          'Hoặc đăng nhập với',
          style: TextStyle(
            color: Theme.colorScheme.onSecondary,
            fontSize: 14,
            shadows: [
              Shadow(
                color: Colors.black45,
                offset: Offset(1, 1),
                blurRadius: 2,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialButton(
              onTap: () {},
              icon: Icons.g_mobiledata,
              color: Colors.white,
              backgroundColor: Colors.red,
            ),
            const SizedBox(width: 16),
            _buildSocialButton(
              onTap: () {},
              icon: Icons.facebook,
              color: Colors.white,
              backgroundColor: Colors.blue[800]!,
            ),
            const SizedBox(width: 16),
            _buildSocialButton(
              onTap: () {},
              icon: Icons.apple,
              color: Colors.white,
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialButton({
    required VoidCallback onTap,
    required IconData icon,
    required Color color,
    required Color backgroundColor,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(40),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Icon(
          icon,
          color: color,
          size: 32,
        ),
      ),
    );
  }
}