import 'package:admin/screens/dashboard/components/chart.dart';
import 'package:admin/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Storage details",
              style: GoogleFonts.adamina(
                  fontSize: 21, fontWeight: FontWeight.w500),
            ),
          ),
          Chart(),
          StorageCardInfo(
            svgSrc: "assets/icons/Documents.svg",
            title: "Documents Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageCardInfo(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            amountOfFiles: "16GB",
            numOfFiles: 1828,
          ),
          StorageCardInfo(
            svgSrc: "assets/icons/folder.svg",
            title: "Other Files",
            amountOfFiles: "16GB",
            numOfFiles: 19828,
          ),
          StorageCardInfo(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknow Files",
            amountOfFiles: "58GB",
            numOfFiles: 11228,
          ),
        ],
      ),
    );
  }
}
