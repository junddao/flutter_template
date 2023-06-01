// ignore_for_file: constant_identifier_names, use_key_in_widget_constructors, non_constant_identifier_names

import 'dart:math';

import 'package:shimmer/shimmer.dart';
import 'package:smatii/index.dart';

enum LoadingType {
  circularProgressIndicator,
  twoLine,
  simple,
  profile,
  card,
}

class TSLoadingView extends StatefulWidget {
  TSLoadingView() {
    loadingType = LoadingType.circularProgressIndicator;
  }

  TSLoadingView.profile() {
    loadingType = LoadingType.profile;
  }
  TSLoadingView.twoLine() {
    loadingType = LoadingType.twoLine;
  }

  TSLoadingView.rectangle() {
    loadingType = LoadingType.simple;
  }
  TSLoadingView.card_feed() {
    loadingType = LoadingType.card;
  }

  /// 로딩뷰 로딩타입
  late final LoadingType loadingType;

  @override
  TSLoadingViewState createState() => TSLoadingViewState();
}

class TSLoadingViewState extends State<TSLoadingView> {
  @override
  Widget build(BuildContext context) {
    switch (widget.loadingType) {
      case LoadingType.circularProgressIndicator:
        return const Center(child: CircularProgressIndicator(strokeWidth: 3, color: TSColors.flyBlue700));
      case LoadingType.profile:
        return _shimmerProfile(40);
      case LoadingType.twoLine:
        return _shimmerTwoLine();
      case LoadingType.simple:
        return _shimmerSimple();
      case LoadingType.card:
        return _shimmerCard();
    }
  }

  Widget _shimmerSimple() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[200]!,
      highlightColor: Colors.grey[50]!,
      child: Container(
        width: double.infinity,
        // height: SizeConfig.screenHeight / 4,
        height: 50,
        color: Colors.white,
      ),
    );
  }

  Widget _shimmerProfile(double profileSize) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: _list(profileSize),
    );
  }

  Widget _shimmerTwoLine() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[50]!,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultVertical),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: TSSizeConfig.screenWidth * (Random().nextDouble() * 0.2 + 0.4),
              height: 10,
              color: Colors.white,
            ),
            const SizedBox(height: 16),
            Container(
              width: TSSizeConfig.screenWidth * (Random().nextDouble() * 0.3 + 0.5),
              height: 10,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _shimmerCard() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[50]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _profile(40),
          const SizedBox(height: 16),
          _feedContents(),
        ],
      ),
    );
  }

  Widget _profile(double profileSize) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultHorizontal),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: profileSize / 2,
            backgroundColor: Colors.white,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: constraints.maxWidth,
                      height: (profileSize - 4) / 2,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 4),
                    Container(
                      width: (constraints.maxWidth) / 2,
                      height: (profileSize - 4) / 2,
                      color: Colors.white,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _feedContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: TSSizeConfig.screenWidth * (Random().nextDouble() * 0.2 + 0.4),
          height: 10,
          color: Colors.white,
        ),
        const SizedBox(height: 16),
        Container(
          width: TSSizeConfig.screenWidth * (Random().nextDouble() * 0.3 + 0.5),
          height: 10,
          color: Colors.white,
        ),
        const SizedBox(height: 4),
        Container(
          width: TSSizeConfig.screenWidth * (Random().nextDouble() * 0.3 + 0.4),
          height: 10,
          color: Colors.white,
        ),
        const SizedBox(height: 4),
      ],
    );
  }

  Widget _list(double profileSize) {
    return Shimmer.fromColors(
      baseColor: TSColors.etcCBCBCB,
      highlightColor: TSColors.etcCBCBCB.withOpacity(0.5),
      child: _profile(profileSize),
    );
  }
}
