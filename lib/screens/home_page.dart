import 'package:fluttertask/index.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Utils utils = Utils();
    int _currentIndex = 0;

    void _onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(32.h),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0xffeef3fd),
          leading: const Text(''),
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'lib/asset/image/meenu.png',
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.question_answer_outlined,
                            size: 25, color: Colors.grey[600]),
                        const SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.notifications_outlined,
                            size: 25, color: Colors.grey[600]),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Hello, Priya!',
                  style: TextStyle(
                      color: Color(0xff08090A),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Lora'),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'What do you wanna learn today?',
                  style: TextStyle(
                      color: Color(0xff6D747A),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Inter'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: CustomButton(
                        image: 'lib/asset/image/bookmark.png',
                        title: 'Programs',
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Expanded(
                      child: CustomButton2(
                        icon: Icons.help,
                        title: 'Get Help',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: CustomButton2(
                        icon: Icons.menu_book_rounded,
                        title: 'Learn',
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Expanded(
                      child: CustomButton(
                        image: 'lib/asset/image/trelloo.png',
                        title: 'DD Tracker',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Programs for you',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Lora'),
                        ),
                        Row(
                          children: const [
                            Text(
                              'View all',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff6D747A),
                                  fontFamily: 'Inter'),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.arrow_forward_outlined,
                              color: Color(0xff6D747A),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: 40.h, // Fixed height for the inner ListView
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final currentThumb = utils.images001[index];
                    final currentTitle = utils.title001[index];
                    final currentDescription = utils.description001[index];
                    final currentLesson = utils.lessons001[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 60.w,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  currentThumb,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currentTitle,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                      color: Color(0xff598BED),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    currentDescription,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    currentLesson,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Events and experiences',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Lora'),
                        ),
                        Row(
                          children: const [
                            Text(
                              'View all',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff6D747A),
                                  fontFamily: 'Inter'),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.arrow_forward_outlined,
                              color: Color(0xff6D747A),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: 40.h,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final currentThumb = utils.images002[index];
                    final currentTitle = utils.title002[index];
                    final currentDescription = utils.description002[index];
                    final currentLesson = utils.lessons002[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 60.w,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  currentThumb,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currentTitle,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                      color: Color(0xff598BED),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    currentDescription,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Text(
                                        currentLesson,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade500,
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Expanded(
                                        child: Container(
                                          height: 4.h,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0xff598BED)),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: const Center(
                                            child: Text(
                                              'Book',
                                              style: TextStyle(
                                                color: Color(0xff598BED),
                                                fontFamily: 'Inter',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Lessons for you',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Lora',
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              'View all',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6D747A),
                                fontFamily: 'Inter',
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Icon(
                              Icons.arrow_forward_outlined,
                              color: Color(0xff6D747A),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: 40.h,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final currentThumb = utils.images002[index];
                    final currentTitle = utils.title002[index];
                    final currentDescription = utils.description002[index];
                    final currentLesson = utils.lessons003[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 60.w,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  currentThumb,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currentTitle,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                      color: Color(0xff598BED),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    currentDescription,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        currentLesson,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade500,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.lock,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomBottomBar(
                  isSelected: _currentIndex == 0,
                  title: 'Home',
                  icon: Icons.home,
                  onTap: () => _onTabTapped(0),
                ),
                CustomBottomBar(
                  isSelected: _currentIndex == 1,
                  title: 'Learn',
                  icon: Icons.menu_book_rounded,
                  onTap: () => _onTabTapped(1),
                ),
                CustomBottomBar(
                  isSelected: _currentIndex == 2,
                  title: 'Hub',
                  icon: Icons.apps_rounded,
                  onTap: () => _onTabTapped(2),
                ),
                CustomBottomBar(
                  isSelected: _currentIndex == 3,
                  title: 'Chat',
                  icon: Icons.chat_bubble_outline_rounded,
                  onTap: () => _onTabTapped(3),
                ),
                CustomBottomBar(
                  isSelected: _currentIndex == 3,
                  title: 'Profile',
                  icon: Icons.chat_bubble_outline_rounded,
                  onTap: () => _onTabTapped(3),
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 100.00 * _currentIndex,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color(0xff598BED),
                ),
                width: 100,
                height: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
