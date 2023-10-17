import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/entities/news_data.dart';
import '../news_details_page.dart';

class NewsGridCard extends StatelessWidget {
  final NewsDataEntity newsData;

  const NewsGridCard({
    Key? key,
    required this.newsData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return NewsDetailsPage(newsDataEntity: newsData);
          },
        ));
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8.r),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            newsData.multimedia!.where((element) => element.type == "image").first.url!,
                          )),
                    ),
                  )),
              SizedBox(height: 8.h),
              Expanded(
                flex: 3,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    newsData.title ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5.h),
                  Expanded(
                    child: Text(
                      newsData.byline ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
