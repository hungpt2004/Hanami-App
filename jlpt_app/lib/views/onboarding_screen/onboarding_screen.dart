import 'package:flutter/material.dart';
import 'package:jlpt_app/main.dart';
import 'package:jlpt_app/views/authentication_screen/login_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Page View for onboarding slides
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 3;
              });
            },
            children: [
              _buildOnboardingPage(
                title: 'Học Hiragana và Katakana',
                description:
                    'Bước đầu tiên trên hành trình chinh phục tiếng Nhật. Học và luyện tập bảng chữ cái Hiragana và Katakana với các bài tập tương tác.',
                lottiePath:
                    'https://assets1.lottiefiles.com/packages/lf20_ydo1amjm.json',
                backgroundColor: const Color(0xFFFFF3E0),
              ),
              _buildOnboardingPage(
                title: 'Từ Vựng JLPT',
                description:
                    'Học từ vựng theo cấp độ JLPT từ N5 đến N1. Flashcard thông minh giúp bạn nhớ từ nhanh và lâu hơn.',
                lottiePath:
                    'https://assets2.lottiefiles.com/packages/lf20_ha4yx4rx.json',
                backgroundColor: const Color(0xFFE0F7FA),
              ),
              _buildOnboardingPage(
                title: 'Ngữ Pháp và Đọc Hiểu',
                description:
                    'Nắm vững cấu trúc ngữ pháp và luyện đọc hiểu với các bài tập mẫu trong đề thi JLPT mọi cấp độ.',
                lottiePath:
                    'https://assets1.lottiefiles.com/private_files/lf30_fw6h59eu.json',
                backgroundColor: const Color(0xFFF3E5F5),
              ),
              _buildOnboardingPage(
                title: 'Sẵn Sàng Chinh Phục JLPT',
                description:
                    'Luyện đề thi thử với định dạng như thật và theo dõi tiến độ học tập với biểu đồ trực quan.',
                lottiePath:
                    'https://assets8.lottiefiles.com/packages/lf20_touohxv0.json',
                backgroundColor: const Color(0xFFE8F5E9),
              ),
            ],
          ),

          // Bottom buttons and indicator
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Skip button
                    TextButton(
                      onPressed: () {
                        _pageController.jumpToPage(3);
                      },
                      child: Text(
                        'Bỏ qua',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    // Page indicator
                    Center(
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        count: 4,
                        effect: WormEffect(
                          dotWidth: 12,
                          dotHeight: 12,
                          activeDotColor: Colors.red[700]!,
                          dotColor: Colors.grey[300]!,
                        ),
                      ),
                    ),

                    // Next button
                    TextButton(
                      onPressed: () {
                        if (isLastPage) {
                          // Navigate to login screen
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        } else {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: Text(
                        isLastPage ? 'Bắt đầu' : 'Tiếp',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Get started button (only on last page)
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: isLastPage ? 100 : 0,
                width: double.infinity,
                color: Colors.transparent,
                child:
                    isLastPage
                        ? Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigate to login screen
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[700],
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              elevation: 5,
                            ),
                            child: const Text(
                              'BẮT ĐẦU NGAY',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                        : const SizedBox(),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingPage({
    required String title,
    required String description,
    required String lottiePath,
    required Color backgroundColor,
  }) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            lottiePath,
            width: 300,
            height: 300,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 40),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[800],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
