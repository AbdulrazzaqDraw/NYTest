import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nytimestest/features/new_york_times/presentation/bloc/news_bloc.dart';
import 'package:nytimestest/features/new_york_times/presentation/bloc/news_state.dart';
import 'package:nytimestest/features/new_york_times/presentation/widget/news_list_card.dart';
import '../../../injection.dart';
import 'widget/news_grid_card.dart';
import 'widget/shimmer_widget.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  NewsBloc bloc = sl<NewsBloc>();
  List<String> sections = ["arts", "home", "us"];
  String selectedPeriod = "home";

  @override
  void initState() {
    bloc.onGetNews(selectedPeriod);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsBloc, NewsState>(
      bloc: bloc,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: state.isSearch
                ? TextField(
                    textInputAction: TextInputAction.search,
                    onChanged: (value) {
                      bloc.onSearchNewsEvent(value);
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 0),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10.r)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10.r)),
                    ),
                  )
                : Text("NY Times", style: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.bold)),
            centerTitle: true,
            actions: !state.isSearch
                ? [
                    InkWell(
                        onTap: () {
                          bloc.onChangeIsSearch();
                          bloc.onSearchNewsEvent("");
                        },
                        child: Icon(state.isSearch ? Icons.close : Icons.search)),
                    PopupMenuButton(
                      icon: Icon(Icons.filter_alt_sharp),
                      itemBuilder: (context) {
                        return sections
                            .map((value) => PopupMenuItem(
                                enabled: value.contains("Choose") ? false : true,
                                onTap: () {
                                  selectedPeriod = value;
                                  bloc.onGetNews(selectedPeriod);
                                },
                                child: Text(
                                  value,
                                  style: TextStyle(color: value == selectedPeriod ? Theme.of(context).colorScheme.primary : Colors.black),
                                )))
                            .toList();
                      },
                    ),
                    SizedBox(width: 10.w),
                    InkWell(
                        onTap: () {
                          bloc.onChangeIsListView();
                        },
                        child: Icon(Icons.list)),
                    SizedBox(width: 10.w),
                    InkWell(
                        onTap: () {
                          bloc.onChangeIsListView();
                        },
                        child: Icon(Icons.grid_view_rounded)),
                    SizedBox(width: 10.w),
                  ]
                : [
                    InkWell(
                        onTap: () {
                          bloc.onChangeIsSearch();
                          bloc.onSearchNewsEvent("");
                        },
                        child: Icon(state.isSearch ? Icons.close : Icons.search)),
                    SizedBox(width: 10.w),
                  ],
          ),
          body: state.isLoading
              ? getSkeleton(state.isListView)
              : state.isListView
                  ? ListView.builder(
                      itemCount: state.newsResult.results!.length,
                      itemBuilder: (context, index) {
                        return NewsListCard(newsData: state.newsResult.results![index]);
                      },
                    )
                  : GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.h,
                        mainAxisSpacing: 5.w,
                      ),
                      itemCount: state.newsResult.results!.length,
                      itemBuilder: (context, index) {
                        return NewsGridCard(newsData: state.newsResult.results![index]);
                      },
                    ),
        );
      },
    );
  }
}
