# ITRAirSideMenu

Air sidemenu drawer navigation 

<img src="https://github.com/ITechRoof/ITRAirSideMenu/blob/master/Demo.png" width = "320" height="568" "alt="">

## Requirements
* Xcode 6 or higher
* Apple LLVM compiler
* iOS 7.0 or higher
* ARC

## Demo

Build and run the `Example` project in Xcode to see `ITRAirSideMenu` in action.

## Installation

### CocoaPods

The recommended approach for installating `ITRAirSideMenu` is via the [CocoaPods](http://cocoapods.org/) package manager, as it provides flexible dependency management and dead simple installation.
For best results, it is recommended that you install via CocoaPods >= **0.28.0** using Git >= **1.8.0** installed via Homebrew.

Install CocoaPods if not already available:

``` bash
$ [sudo] gem install cocoapods
$ pod setup
```

Change to the directory of your Xcode project:

``` bash
$ cd /path/to/MyProject
$ touch Podfile
$ edit Podfile
```

Edit your Podfile and add ITRAirSideMenu:

``` bash
platform :ios, '6.0'
pod 'ITRAirSideMenu', '~> 1.0.0'
```

Install into your Xcode project:

``` bash
$ pod install
```

Open your project in Xcode from the .xcworkspace file (not the usual project file)

``` bash
$ open MyProject.xcworkspace
```

Please note that if your installation fails, it may be because you are installing with a version of Git lower than CocoaPods is expecting. Please ensure that you are running Git >= **1.8.0** by executing `git --version`. You can get a full picture of the installation details by executing `pod install --verbose`.

### Manual Install

All you need to do is drop `ITRAirSideMenu` files into your project, and add `#include "ITRAirSideMenu.h"` to the top of classes that will use it.

## Example Usage

In your AppDelegate's `- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions` create the view controller and assign content and menu view controllers.

``` objective-c
// Create content and menu controllers
//
UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:[ITRFirstViewController controller]];
ITRLeftMenuController *leftMenuViewController = [ITRLeftMenuController controller];

// Create side menu controller
//
ITRAirSideMenu *itrAirSideMenu = [[ITRAirSideMenu alloc] initWithContentViewController:navigationController leftMenuViewController:leftMenuViewController];

itrAirSideMenu.backgroundImage = [UIImage imageNamed:@"menu_bg"];

// Make it a root controller
//
self.window.rootViewController = itrAirSideMenu;
```

You can present it manually:

```objective-c
[self.itrAirSideMenu presentLeftMenuViewController];
```

or using a pan gesture recognizer

Switch content view controllers:

```objective-c
#import "ITRAirSideMenu.h"

....

[self.itrAirSideMenu setContentViewController:viewController animated:YES];
[self.itrAirSideMenu hideMenuViewController];
```

## Customization

You can customize the following properties of `ITRAirSideMenu`:

``` objective-c
@property (assign, readwrite, nonatomic) NSTimeInterval animationDuration;
@property (strong, readwrite, nonatomic) UIImage *backgroundImage;
@property (assign, readwrite, nonatomic) BOOL panGestureEnabled;
@property (assign, readwrite, nonatomic) BOOL panFromEdge;
@property (assign, readwrite, nonatomic) NSUInteger panMinimumOpenThreshold;
@property (assign, readwrite, nonatomic) BOOL interactivePopGestureRecognizerEnabled;
@property (assign, readwrite, nonatomic) BOOL contentViewShadowEnabled;
@property (strong, readwrite, nonatomic) UIColor *contentViewShadowColor;
@property (assign, readwrite, nonatomic) CGSize contentViewShadowOffset;
@property (assign, readwrite, nonatomic) CGFloat contentViewShadowOpacity;
@property (assign, readwrite, nonatomic) CGFloat contentViewShadowRadius;
@property (assign, readwrite, nonatomic) CGFloat contentViewFadeOutAlpha;
@property (assign, readwrite, nonatomic) CGFloat contentViewScaleValue;
@property (assign, readwrite, nonatomic) CGFloat contentViewRotatingAngle;
@property (assign, readwrite, nonatomic) CGFloat contentViewTranslateX;
@property (assign, readwrite, nonatomic) CGFloat menuViewRotatingAngle;
@property (assign, readwrite, nonatomic) CGFloat menuViewTranslateX;

```

If you set a backgroundImage, don't forget to set the Menu View Controller's background color to clear color.

You can implement `ITRAirSideMenuDelegate` protocol to receive the following messages:

```objective-c
- (void)sideMenu:(ITRAirSideMenu *)sideMenu didRecognizePanGesture:(UIPanGestureRecognizer *)recognizer;
- (void)sideMenu:(ITRAirSideMenu *)sideMenu willShowMenuViewController:(UIViewController *)menuViewController;
- (void)sideMenu:(ITRAirSideMenu *)sideMenu didShowMenuViewController:(UIViewController *)menuViewController;
- (void)sideMenu:(ITRAirSideMenu *)sideMenu willHideMenuViewController:(UIViewController *)menuViewController;
- (void)sideMenu:(ITRAirSideMenu *)sideMenu didHideMenuViewController:(UIViewController *)menuViewController;
```

## Contact

Kiruthika

- https://itechroof.wordpress.com/2015/09/08/itrairsidemenu-air-side-menu-navigation/
- https://github.com/ITechRoof
- kirthi.shalom@gmail.com

## License

ITRAirSideMenu is available under the MIT license.

Copyright (c) 2015 ITechRoof.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


