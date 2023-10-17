import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/entities/news_data.dart';
import '../news_details_page.dart';

class NewsListCard extends StatelessWidget {
  final NewsDataEntity newsData;

  const NewsListCard({
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
          padding:   EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: newsData.multimedia != null && newsData.multimedia!.isNotEmpty
                    ? CircleAvatar(
                        radius: 60.r,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                          newsData.multimedia!.where((element) => element.type == "image").first.url!,
                        ),
                      )
                    : CircleAvatar(
                        radius: 60.r,
                        backgroundColor: Colors.grey,
                      ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                flex: 3,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    newsData.title ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          newsData.byline ?? "",
                          maxLines: 2,
                          style: const TextStyle(
                            color: Colors.grey,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black54,
                  size: 20.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
