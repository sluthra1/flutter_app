// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Raw data for the animation demo.

import 'package:flutter/material.dart';

const Color _mariner = Color(0xFF3B5F8F);
const Color _mediumPurple = Color(0xFF8266D4);
const Color _tomato = Color(0xFFF95B57);
const Color _mySin = Color(0xFFF3A646);

const String _kGalleryAssetsPackage = 'flutter_gallery_assets';

class SectionDetail {
  const SectionDetail({
    this.title,
    this.subtitle,
    this.imageAsset,
    this.imageAssetPackage,
  });
  final String title;
  final String subtitle;
  final String imageAsset;
  final String imageAssetPackage;
}

class Section {
  const Section({
    this.title,
    this.backgroundAsset,
    this.backgroundAssetPackage,
    this.leftColor,
    this.rightColor,
    this.details,
  });
  final String title;
  final String backgroundAsset;
  final String backgroundAssetPackage;
  final Color leftColor;
  final Color rightColor;
  final List<SectionDetail> details;

  @override
  bool operator==(Object other) {
    if (other is! Section)
      return false;
    final Section otherSection = other;
    return title == otherSection.title;
  }

  @override
  int get hashCode => title.hashCode;
}

// TODO(hansmuller): replace the SectionDetail images and text. Get rid of
// the const vars like _eyeglassesDetail and insert a variety of titles and
// image SectionDetails in the allSections list.

const SectionDetail _eyeglassesDetail = SectionDetail(
  imageAsset: 'people/square/stella.png',
  imageAssetPackage: _kGalleryAssetsPackage,
  title: 'Stella is awesome be like stella',
  subtitle: '3K views - 5 days',
);

const SectionDetail _eyeglassesImageDetail = SectionDetail(
  imageAsset: 'people/square/stella.png',
  imageAssetPackage: _kGalleryAssetsPackage,
);

const SectionDetail _seatingDetail = SectionDetail(
  imageAsset: 'places/india_chennai_highway.png',
  imageAssetPackage: _kGalleryAssetsPackage,
  title: 'Look ma no hands!',
  subtitle: '3K views - 5 days',
);

const SectionDetail _seatingImageDetail = SectionDetail(
  imageAsset: 'places/india_chennai_highway.png',
  imageAssetPackage: _kGalleryAssetsPackage,
);

const SectionDetail _decorationDetail = SectionDetail(
  imageAsset: 'places/india_tanjore_market_technology.png',
  imageAssetPackage: _kGalleryAssetsPackage,
  title: 'Moving photos, woah!',
  subtitle: '3K views - 5 days',
);

const SectionDetail _decorationImageDetail = SectionDetail(
  imageAsset: 'places/india_tanjore_market_technology.png',
  imageAssetPackage: _kGalleryAssetsPackage,
);

const SectionDetail _protectionDetail = SectionDetail(
  imageAsset: 'food/icons/healthy.png',
  imageAssetPackage: _kGalleryAssetsPackage,
  title: 'Fish are friends not food',
  subtitle: '3K views - 5 days',
);

const SectionDetail _protectionImageDetail = SectionDetail(
  imageAsset: 'food/icons/healthy.png',
  imageAssetPackage: _kGalleryAssetsPackage,
);

const SectionDetail _protectionDetail2 = SectionDetail(
  imageAsset: 'food/spinach_onion_salad.png',
  imageAssetPackage: _kGalleryAssetsPackage,
  title: 'An apple a day keeps the doctor away',
  subtitle: '3K views - 5 days',
);

const SectionDetail _protectionImageDetail2 = SectionDetail(
  imageAsset: 'food/spinach_onion_salad.png',
  imageAssetPackage: _kGalleryAssetsPackage,
);

final List<Section> allSections = <Section>[
  const Section(
    title: 'Profile',
    leftColor: _mediumPurple,
    rightColor: _mariner,
    backgroundAsset: 'people/square/stella.png',
    backgroundAssetPackage: _kGalleryAssetsPackage,
    details: <SectionDetail>[
      _eyeglassesDetail,
      _eyeglassesImageDetail,
      _eyeglassesDetail,
      _eyeglassesDetail,
      _eyeglassesDetail,
      _eyeglassesDetail,
    ],
  ),
  const Section(
    title: 'Photos',
    leftColor: _tomato,
    rightColor: _mediumPurple,
    backgroundAsset: 'places/india_chennai_highway.png',
    backgroundAssetPackage: _kGalleryAssetsPackage,
    details: <SectionDetail>[
      _seatingDetail,
      _seatingImageDetail,
      _seatingDetail,
      _seatingDetail,
      _seatingDetail,
      _seatingDetail,
    ],
  ),
  const Section(
    title: 'Videos',
    leftColor: _mySin,
    rightColor: _tomato,
    backgroundAsset: 'places/india_tanjore_market_technology.png',
    backgroundAssetPackage: _kGalleryAssetsPackage,
    details: <SectionDetail>[
      _decorationDetail,
      _decorationImageDetail,
      _decorationDetail,
      _decorationDetail,
      _decorationDetail,
      _decorationDetail,
    ],
  ),
  const Section(
    title: 'Dietary',
    leftColor: _mediumPurple,
    rightColor: _tomato,
    backgroundAsset: 'food/icons/healthy.png',
    backgroundAssetPackage: _kGalleryAssetsPackage,
    details: <SectionDetail>[
      _protectionDetail,
      _protectionImageDetail,
      _protectionDetail,
      _protectionDetail,
      _protectionDetail,
      _protectionDetail,
    ],
  ),
  const Section(
    title: 'Weekly Menu',
    leftColor: _mySin,
    rightColor: _mediumPurple,
    backgroundAsset: 'food/spinach_onion_salad.png',
    backgroundAssetPackage: _kGalleryAssetsPackage,
    details: <SectionDetail>[
      _protectionDetail2,
      _protectionImageDetail2,
      _protectionDetail2,
      _protectionDetail2,
      _protectionDetail2,
      _protectionDetail2,
    ],
  ),
];
