import 'package:flutter/material.dart';

import '../../../core/app_controller.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/theme/app_text.dart';
import '../../../domain/entitites/home_info_entity.dart';
import '../../widgets/bootom_navigation_widget.dart';
import '../../widgets/loading_screen_widget.dart';
import '../../widgets/tab_title_widget.dart';
import 'home_controller.dart';
import 'widgets/author_section_widget.dart';
import 'widgets/favorite_section_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends AppController<HomePage, HomeController> {
  @override
  HomeController createController() => HomeController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<HomeInfoEntity?>(
      valueListenable: controller.homeInfoListListenable,
      builder: (context, info, _) {
        return info == null
            ? const LoadingScreenWidget()
            : DefaultTabController(
                length: 2,
                child: Scaffold(
                  key: controller.scaffoldKey,
                  appBar: AppBar(
                    title: const TabTitleWidget(),
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(35),
                      ),
                    ),
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(kToolbarHeight),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TabBar(
                          isScrollable: true,
                          indicator: const UnderlineTabIndicator(
                            borderSide: BorderSide(
                              width: 4,
                              color: AppColors.primary,
                            ),
                          ),
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          tabs: [
                            Tab(child: AppText.tab('Meus Livros')),
                            Tab(child: AppText.tab('Emprestados')),
                          ],
                        ),
                      ),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: const Border.fromBorderSide(
                                  BorderSide(
                                    color: AppColors.primary,
                                    width: 0.6,
                                  ),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(info.userPicture),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                  bottomNavigationBar: const BottomNavigationWidget(),
                  body: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: FavoriteSectionWidget(
                                bookList: controller.favoriteBooks,
                              ),
                            ),
                            const SizedBox(height: 30),
                            AuthorsSectionWidget(
                              authorList: controller.favoriteAuthors,
                              bookList: controller.allBooks,
                            ),
                          ],
                        ),
                      ),
                      Container(),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
