import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qoutes_app/list/quotes_list.dart';
import 'package:google_fonts/google_fonts.dart';

Expanded quotesGridView() {
  return Expanded(
    flex: 14,
    child: Scrollbar(
      radius: const Radius.circular(20),
      interactive: true,
      thickness: 6,
      trackVisibility: true,
      thumbVisibility: true,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 0,
          mainAxisExtent: 200.h,
        ),
        itemCount: myQuotesCategory.length,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          var quote = myQuotes[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.primaries[index % 18][300],
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                  quotesCategoryImageList[index],
                ),
                fit: BoxFit.cover,
              ),
            ),
            margin: EdgeInsets.all(3.5),
            padding: EdgeInsets.all(9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  myQuotesCategory[index],
                  style: GoogleFonts.dmSerifDisplay(
                    textStyle: TextStyle(
                      fontSize: 23.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                // Text(
                //   quote.quotes,
                //   style: TextStyle(
                //     fontSize: 13.sp,
                //     color: Colors.white,
                //     // overflow: TextOverflow.ellipsis,
                //     fontWeight: FontWeight.w500,
                //   ),
                // ),
                // Text(
                //   "~${quote.author}",
                //   style: TextStyle(
                //     fontSize: 15.sp,
                //     color: Colors.white,
                //     // overflow: TextOverflow.ellipsis,
                //     fontWeight: FontWeight.w900,
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
