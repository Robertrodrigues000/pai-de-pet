import 'package:flutter/material.dart';
import 'package:rickandmorty/domain/entitites/home_info_entity.dart';
import 'package:rickandmorty/presenter/pages/home/widgets/author_section_widget.dart';
import 'package:rickandmorty/presenter/pages/home/widgets/favorite_section_widget.dart';

import '../../../core/app_controller.dart';
import '../../../core/theme/app_color.dart';
import '../../../core/theme/app_text.dart';
import '../../widgets/tab_title_widget.dart';
import 'home_controller.dart';

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
              ? Scaffold(
                  body: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        TabTitleWidget(),
                        SizedBox(height: 20),
                        CircularProgressIndicator(
                          backgroundColor: Colors.white,
                          color: AppColors.secondary,
                        ),
                      ],
                    ),
                  ),
                )
              : DefaultTabController(
                  length: 2,
                  child: Scaffold(
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
                                color: AppColors.secondary,
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
                                      color: AppColors.secondary,
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
                    bottomNavigationBar: BottomNavigationBar(
                      type: BottomNavigationBarType.fixed,
                      backgroundColor: Colors.white,
                      selectedItemColor: AppColors.secondary,
                      unselectedItemColor: Colors.grey,
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: "Inicio",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.add_circle),
                          label: "Adicionar",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.search),
                          label: "Buscar",
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.favorite),
                          label: "Favoritos",
                        ),
                      ],
                    ),
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
        });
  }
}
