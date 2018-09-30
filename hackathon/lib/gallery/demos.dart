// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../demo/all.dart';
import 'icons.dart';

class GalleryDemoCategory {
  const GalleryDemoCategory._({ this.name, this.icon });
  @required final String name;
  @required final IconData icon;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other))
      return true;
    if (runtimeType != other.runtimeType)
      return false;
    final GalleryDemoCategory typedOther = other;
    return typedOther.name == name && typedOther.icon == icon;
  }

  @override
  int get hashCode => hashValues(name, icon);

  @override
  String toString() {
    return '$runtimeType($name)';
  }
}

GalleryDemoCategory _kDemos = GalleryDemoCategory._(
  name: 'Users',
  icon: GalleryIcons.account_box,
);

GalleryDemoCategory _kStyle = GalleryDemoCategory._(
  name: 'Activity',
  icon: GalleryIcons.cupertino_progress,
);

GalleryDemoCategory _kMaterialComponents = GalleryDemoCategory._(
  name: 'Schedule',
  icon: GalleryIcons.event,
);

GalleryDemoCategory _kCupertinoComponents = GalleryDemoCategory._(
  name: 'Messenger',
  icon: GalleryIcons.phone_iphone,
);

GalleryDemoCategory _kMedia = GalleryDemoCategory._(
  name: 'Workout Videos',
  icon: GalleryIcons.drive_video,
);

class GalleryDemo {
  const GalleryDemo({
    @required this.title,
    @required this.icon,
    this.subtitle,
    @required this.category,
    @required this.routeName,
    @required this.buildRoute,
  }) : assert(title != null),
       assert(category != null),
       assert(routeName != null),
       assert(buildRoute != null);

  final String title;
  final IconData icon;
  final String subtitle;
  final GalleryDemoCategory category;
  final String routeName;
  final WidgetBuilder buildRoute;

  @override
  String toString() {
    return '$runtimeType($title $routeName)';
  }
}

List<GalleryDemo> _buildGalleryDemos() {
  final List<GalleryDemo> galleryDemos = <GalleryDemo>[
    // Demos
    new GalleryDemo(
      title: 'Kanye West',
      subtitle: 'Self help guru',
      icon: GalleryIcons.account_box,
      category: _kDemos,
      routeName: AnimationDemo.routeName,
      buildRoute: (BuildContext context) => new AnimationDemo(),
    ),
    new GalleryDemo(
      title: 'Ashley Jackson',
      subtitle: 'Power Lifter',
      icon: GalleryIcons.account_box,
      category: _kDemos,
      routeName: AnimationDemo.routeName,
      buildRoute: (BuildContext context) => new AnimationDemo(),
    ),
    new GalleryDemo(
      title: 'Katarina Blackwell',
      subtitle: 'Tai Chi enthuisast',
      icon: GalleryIcons.account_box,
      category: _kDemos,
      routeName: AnimationDemo.routeName,
      buildRoute: (BuildContext context) => const AnimationDemo(),
    ),
    new GalleryDemo(
      title: 'Ashley Parker Angel',
      subtitle: 'Meditation',
      icon: GalleryIcons.account_box,
      category: _kDemos,
      routeName: AnimationDemo.routeName,
      buildRoute: (BuildContext context) => new AnimationDemo(),
    ),
    new GalleryDemo(
      title: 'Lorraine Twohill',
      subtitle: 'Competitive Swimmer',
      icon: GalleryIcons.account_box,
      category: _kDemos,
      routeName: AnimationDemo.routeName,
      buildRoute: (BuildContext context) => const AnimationDemo(),
    ),
    new GalleryDemo(
      title: 'Joe',
      subtitle: 'Average guy',
      icon: GalleryIcons.account_box,
      category: _kDemos,
      routeName: AnimationDemo.routeName,
      buildRoute: (BuildContext context) => const AnimationDemo(),
    ),
    new GalleryDemo(
      title: 'Jane',
      subtitle: 'Average girl',
      icon: GalleryIcons.account_box,
      category: _kDemos,
      routeName: AnimationDemo.routeName,
      buildRoute: (BuildContext context) => const AnimationDemo(),
    ),
    new GalleryDemo(
      title: 'John Jacob',
      subtitle: 'Beginner',
      icon: GalleryIcons.account_box,
      category: _kDemos,
      routeName: AnimationDemo.routeName,
      buildRoute: (BuildContext context) => const AnimationDemo(),
    ),
    new GalleryDemo(
      title: 'Jinglehiemer Schmidt',
      subtitle: 'Intermediate Weight lifter',
      icon: GalleryIcons.account_box,
      category: _kDemos,
      routeName: AnimationDemo.routeName,
      buildRoute: (BuildContext context) => const AnimationDemo(),
    ),
    // Style
    new GalleryDemo(
      title: 'Crunches',
      subtitle: '',
      icon: GalleryIcons.colors,
      category: _kStyle,
      routeName: ColorsDemo.routeName,
      buildRoute: (BuildContext context) => new ColorsDemo(),
    ),
    new GalleryDemo(
      title: 'Crying',
      subtitle: '',
      icon: GalleryIcons.custom_typography,
      category: _kStyle,
      routeName: TypographyDemo.routeName,
      buildRoute: (BuildContext context) => new TypographyDemo(),
    ),
    new GalleryDemo(
      title: 'Deadlift',
      subtitle: '',
      icon: GalleryIcons.colors,
      category: _kStyle,
      routeName: ColorsDemo.routeName,
      buildRoute: (BuildContext context) => new ColorsDemo(),
    ),
    new GalleryDemo(
      title: 'Squat',
      subtitle: '',
      icon: GalleryIcons.colors,
      category: _kStyle,
      routeName: ColorsDemo.routeName,
      buildRoute: (BuildContext context) => new ColorsDemo(),
    ),
    new GalleryDemo(
      title: 'Push ups',
      subtitle: '',
      icon: GalleryIcons.colors,
      category: _kStyle,
      routeName: ColorsDemo.routeName,
      buildRoute: (BuildContext context) => new ColorsDemo(),
    ),
    new GalleryDemo(
      title: 'Run',
      subtitle: '',
      icon: GalleryIcons.colors,
      category: _kStyle,
      routeName: ColorsDemo.routeName,
      buildRoute: (BuildContext context) => new ColorsDemo(),
    ),
    new GalleryDemo(
      title: 'Yoga',
      subtitle: '',
      icon: GalleryIcons.colors,
      category: _kStyle,
      routeName: ColorsDemo.routeName,
      buildRoute: (BuildContext context) => new ColorsDemo(),
    ),
    // Material Components

    
  Widget widget() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16.0),
    child: CalendarCarousel(
      current: DateTime.now(),
      onDayPressed: (DateTime date) {
        this.setState(() => _currentDate = date);
      },
      thisMonthDayBorderColor: Colors.grey,
      height: 420.0,
      selectedDateTime: _currentDate,
      daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
//          weekendStyle: TextStyle(
//            color: Colors.red,
//          ),
//          weekDays: null, /// for pass null when you do not want to render weekDays
//          headerText: Container( /// Example for rendering custom header
//            child: Text('Custom Header'),
//          ),
    ),
  );
}
    new GalleryDemo(
      title: 'Monday',
      subtitle: '',
      icon: GalleryIcons.backdrop,
      category: _kMaterialComponents,
      routeName: BackdropDemo.routeName,
      buildRoute: (BuildContext context) => new BackdropDemo(),
    ),
    new GalleryDemo(
      title: 'Meditation',
      subtitle: '',
      icon: GalleryIcons.colors,
      category: _kStyle,
      routeName: ColorsDemo.routeName,
      buildRoute: (BuildContext context) => new ColorsDemo(),
    ),
    new GalleryDemo(
      title: 'Swimming',
      subtitle: '',
      icon: GalleryIcons.colors,
      category: _kStyle,
      routeName: ColorsDemo.routeName,
      buildRoute: (BuildContext context) => new ColorsDemo(),
    ),
    new GalleryDemo(
      title: 'Angry coding',
      subtitle: '',
      icon: GalleryIcons.colors,
      category: _kStyle,
      routeName: ColorsDemo.routeName,
      buildRoute: (BuildContext context) => new ColorsDemo(),
    ),
    new GalleryDemo(
      title: 'Tuesday',
      subtitle: '',
      icon: GalleryIcons.backdrop,
      category: _kMaterialComponents,
      routeName: BottomAppBarDemo.routeName,
      buildRoute: (BuildContext context) => new BottomAppBarDemo(),
    ),
    new GalleryDemo(
      title: 'Wednesday',
      subtitle: '',
      icon: GalleryIcons.backdrop,
      category: _kMaterialComponents,
      routeName: BottomNavigationDemo.routeName,
      buildRoute: (BuildContext context) => new BottomNavigationDemo(),
    ),
    new GalleryDemo(
      title: 'Thursday',
      subtitle: '',
      icon: GalleryIcons.backdrop,
      category: _kMaterialComponents,
      routeName: ModalBottomSheetDemo.routeName,
      buildRoute: (BuildContext context) => new ModalBottomSheetDemo(),
    ),
    new GalleryDemo(
      title: 'Friday',
      subtitle: '',
      icon: GalleryIcons.backdrop,
      category: _kMaterialComponents,
      routeName: PersistentBottomSheetDemo.routeName,
      buildRoute: (BuildContext context) => new PersistentBottomSheetDemo(),
    ),
    new GalleryDemo(
      title: 'Saturday',
      subtitle: '',
      icon: GalleryIcons.backdrop,
      category: _kMaterialComponents,
      routeName: PersistentBottomSheetDemo.routeName,
      buildRoute: (BuildContext context) => new PersistentBottomSheetDemo(),
    ),
    new GalleryDemo(
      title: 'Sunday',
      subtitle: '',
      icon: GalleryIcons.backdrop,
      category: _kMaterialComponents,
      routeName: PersistentBottomSheetDemo.routeName,
      buildRoute: (BuildContext context) => new PersistentBottomSheetDemo(),
    ),

    // Cupertino Components
    new GalleryDemo(
      title: 'John',
      icon: GalleryIcons.cupertino_progress,
      category: _kCupertinoComponents,
      routeName: CupertinoProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoProgressIndicatorDemo(),
    ),
    new GalleryDemo(
      title: 'Jacob',
      icon: GalleryIcons.cupertino_progress,
      category: _kCupertinoComponents,
      routeName: CupertinoProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoProgressIndicatorDemo(),
    ),
    new GalleryDemo(
      title: 'Jingle',
      icon: GalleryIcons.cupertino_progress,
      category: _kCupertinoComponents,
      routeName: CupertinoProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoProgressIndicatorDemo(),
    ),
    new GalleryDemo(
      title: 'Heimer',
      icon: GalleryIcons.cupertino_progress,
      category: _kCupertinoComponents,
      routeName: CupertinoProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoProgressIndicatorDemo(),
    ),
    new GalleryDemo(
      title: 'Schmidt',
      icon: GalleryIcons.cupertino_progress,
      category: _kCupertinoComponents,
      routeName: CupertinoProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoProgressIndicatorDemo(),
    ),
    new GalleryDemo(
      title: 'His',
      icon: GalleryIcons.cupertino_progress,
      category: _kCupertinoComponents,
      routeName: CupertinoProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoProgressIndicatorDemo(),
    ),
    new GalleryDemo(
      title: 'is',
      icon: GalleryIcons.cupertino_progress,
      category: _kCupertinoComponents,
      routeName: CupertinoProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoProgressIndicatorDemo(),
    ),
    new GalleryDemo(
      title: 'my',
      icon: GalleryIcons.cupertino_progress,
      category: _kCupertinoComponents,
      routeName: CupertinoProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoProgressIndicatorDemo(),
    ),
    new GalleryDemo(
      title: 'name',
      icon: GalleryIcons.cupertino_progress,
      category: _kCupertinoComponents,
      routeName: CupertinoProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoProgressIndicatorDemo(),
    ),
    new GalleryDemo(
      title: 'too',
      icon: GalleryIcons.cupertino_progress,
      category: _kCupertinoComponents,
      routeName: CupertinoProgressIndicatorDemo.routeName,
      buildRoute: (BuildContext context) => new CupertinoProgressIndicatorDemo(),
    ),
    // Media
    new GalleryDemo(
      title: 'Deadlift',
      subtitle: 'proper form',
      icon: GalleryIcons.animation,
      category: _kMedia,
      routeName: ImagesDemo.routeName,
      buildRoute: (BuildContext context) => new ImagesDemo(),
    ),
    new GalleryDemo(
      title: 'Crying aggressively',
      subtitle: 'Bad form',
      icon: GalleryIcons.drive_video,
      category: _kMedia,
      routeName: VideoDemo.routeName,
      buildRoute: (BuildContext context) => const VideoDemo(),
    ),
    new GalleryDemo(
      title: 'Squatting',
      subtitle: 'this is not proper form',
      icon: GalleryIcons.animation,
      category: _kMedia,
      routeName: ImagesDemo.routeName,
      buildRoute: (BuildContext context) => new ImagesDemo(),
    ),
    new GalleryDemo(
      title: 'Running',
      subtitle: 'Proper form',
      icon: GalleryIcons.drive_video,
      category: _kMedia,
      routeName: VideoDemo.routeName,
      buildRoute: (BuildContext context) => const VideoDemo(),
    ),
    new GalleryDemo(
      title: 'Running',
      subtitle: 'not proper form',
      icon: GalleryIcons.animation,
      category: _kMedia,
      routeName: ImagesDemo.routeName,
      buildRoute: (BuildContext context) => new ImagesDemo(),
    ),
    new GalleryDemo(
      title: 'Crying aggressively',
      subtitle: 'Proper form',
      icon: GalleryIcons.drive_video,
      category: _kMedia,
      routeName: VideoDemo.routeName,
      buildRoute: (BuildContext context) => const VideoDemo(),
    ),
  ];

  // Keep Pesto around for its regression test value. It is not included
  // in (release builds) the performance tests.
  assert(() {
    galleryDemos.insert(0,
      new GalleryDemo(
        title: 'Mike Jones',
        subtitle: 'Yoga expert',
        icon: Icons.account_box,
        category: _kDemos,
        routeName: AnimationDemo.routeName,
        buildRoute: (BuildContext context) => const AnimationDemo(),
      ),
    );
    return true;
  }());

  return galleryDemos;
}

final List<GalleryDemo> kAllGalleryDemos = _buildGalleryDemos();

final Set<GalleryDemoCategory> kAllGalleryDemoCategories =
  kAllGalleryDemos.map<GalleryDemoCategory>((GalleryDemo demo) => demo.category).toSet();

final Map<GalleryDemoCategory, List<GalleryDemo>> kGalleryCategoryToDemos =
  new Map<GalleryDemoCategory, List<GalleryDemo>>.fromIterable(
    kAllGalleryDemoCategories,
    value: (dynamic category) {
      return kAllGalleryDemos.where((GalleryDemo demo) => demo.category == category).toList();
    },
  );
