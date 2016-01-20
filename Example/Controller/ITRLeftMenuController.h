//
//  LeftMenuController.h
//  ITRAirSideMenu
//
//  Created by kirthi on 12/08/15.
//  Copyright (c) 2015 kirthi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ITRAirSideMenu.h"

@interface ITRLeftMenuController : UIViewController<UITableViewDataSource, UITableViewDelegate, ITRAirSideMenuDelegate>

+ (instancetype) controller;

@end
