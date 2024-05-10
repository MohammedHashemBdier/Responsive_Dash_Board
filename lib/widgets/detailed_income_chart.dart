import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? 'Design Service' : '40%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 0 ? const Color(0xFF208BC7) : Colors.white),
          radius: activeIndex == 0 ? 60 : 50,
          value: 40,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 1 ? const Color(0xFF4DB7F2) : Colors.white),
          title: activeIndex == 1 ? 'Design Product' : '25%',
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 2 ? const Color(0xFF064060) : Colors.white),
          title: activeIndex == 2 ? 'Product Royalti' : '20%',
          value: 20,
          radius: activeIndex == 2 ? 60 : 50,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 3 ? const Color(0xFFE2DECD) : Colors.white),
          title: activeIndex == 3 ? 'Other' : '22%',
          value: 22,
          radius: activeIndex == 3 ? 60 : 50,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
