import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nytimestest/features/new_york_times/domain/entities/news_data.dart';
import 'package:nytimestest/features/new_york_times/presentation/widget/news_detail_widget.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NewsDetailsPage extends StatelessWidget {
  final NewsDataEntity newsDataEntity;

  const NewsDetailsPage({Key? key, required this.newsDataEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          newsDataEntity.title ?? "",
          style: const TextStyle(fontWeight: FontWeight.normal),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (newsDataEntity.multimedia != null &&
                newsDataEntity.multimedia!.isNotEmpty)
              SizedBox(
                width: 1.sw,
                height: 220.h,
                child: Image.network(
                  newsDataEntity.multimedia!.where((element) => element.type == "image").first.url!,
                fit: BoxFit.cover,
                  ),
              ),
            SizedBox(
              height: 20.h,
            ),
            if (newsDataEntity.multimedia != null &&
                newsDataEntity.multimedia!.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewsDetailWidget(
                    title: "Title",
                    textStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                    value: newsDataEntity.title?? "",
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                    thickness: 1,
                  ),
                ],
              ),
            if (newsDataEntity.abstract != null &&
                newsDataEntity.abstract!.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewsDetailWidget(
                    title: "Description",
                    textStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp),
                    value: newsDataEntity.abstract ?? "",
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                    thickness: 1,
                  ),
                ],
              ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.r),
              child: Text(
                "Details",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (newsDataEntity.byline != null &&
                    newsDataEntity.byline!.isNotEmpty)
                  Expanded(
                    child: NewsDetailWidget(
                      title: "By:",
                      value: newsDataEntity.byline ?? "",
                    ),
                  ),

              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (newsDataEntity.publishedDate != null &&
                    newsDataEntity.publishedDate!.isNotEmpty)
                  Expanded(
                    child: NewsDetailWidget(
                      title: "Published at:",
                      value: newsDataEntity.publishedDate ?? "",
                    ),
                  ),
                if (newsDataEntity.updatedDate != null &&
                    newsDataEntity.updatedDate!.isNotEmpty)
                  Expanded(
                    child: NewsDetailWidget(
                      title: "updated at:",
                      value: newsDataEntity.updatedDate ?? "",
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (newsDataEntity.section != null &&
                    newsDataEntity.section!.isNotEmpty)
                  Expanded(
                    child: NewsDetailWidget(
                      title: "Section:",
                      value: newsDataEntity.section ?? "",
                    ),
                  ),

              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            if (newsDataEntity.desFacet != null &&
                newsDataEntity.desFacet!.isNotEmpty)
              NewsDetailWidget(
                title: "Tags:",
                value: newsDataEntity.desFacet.toString().substring(
                    1, newsDataEntity.desFacet.toString().length - 1),
              ),
            Divider(
              color: Theme.of(context).colorScheme.secondary,
              thickness: 1,
            ),
            if (newsDataEntity.url != null && newsDataEntity.url!.isNotEmpty)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.r),
                child: RichText(
                  maxLines: 4,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Link to full article ",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp),
                    ),

                    WidgetSpan(
                      child: InkWell(
                          onTap: () {
                            if (newsDataEntity.url != null &&
                                newsDataEntity.url!.isNotEmpty) {
                              launchUrlString(newsDataEntity.url!);
                            }
                          },
                          child: Padding(
                            padding:   EdgeInsets.symmetric(vertical: 8.h),
                            child: Text(
                              newsDataEntity.url ?? "",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.sp,
                                  color: Colors.blue),
                            ),
                          )),
                    ),
                  ]),
                ),
              )
          ],
        ),
      ),
    );
  }
}
