import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class StorageCardInfo extends StatelessWidget {
  const StorageCardInfo({
    Key key,
    @required this.title,
    @required this.svgSrc,
    @required this.amountOfFiles,
    @required this.numOfFiles,
  }) : super(key: key);
  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: primaryColor.withOpacity(0.15),
          ),
          borderRadius: BorderRadius.circular(defaultPadding),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 15,
              width: 15,
              child: SvgPicture.asset(svgSrc),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "$numOfFiles Files",
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Text("$amountOfFiles"),
          ],
        ),
      ),
    );
  }
}
