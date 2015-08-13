//
//  LeftMenuController.m
//  ITRAirSideMenu
//
//  Created by kirthi on 12/08/15.
//  Copyright (c) 2015 kirthi. All rights reserved.
//

#import "ITRLeftMenuController.h"
#import "ITRFirstViewController.h"
#import "ITRSecondViewController.h"
#import "AppDelegate.h"
#import "ITRAirSideMenu.h"

@interface ITRLeftMenuController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ITRLeftMenuController


+ (instancetype) controller{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([ITRLeftMenuController class])];
}

#pragma view lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark -
#pragma mark UITableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    ITRAirSideMenu *itrSideMenu = ((AppDelegate *)[UIApplication sharedApplication].delegate).itrAirSideMenu;
    
    //update content view controller with setContentViewController
    switch (indexPath.row % 2) {
        case 0:
            [itrSideMenu setContentViewController:[[UINavigationController alloc] initWithRootViewController:[ITRFirstViewController controller]] animated:YES];

            [itrSideMenu hideMenuViewController];
            break;
        case 1:
            [itrSideMenu setContentViewController:[[UINavigationController alloc] initWithRootViewController:[ITRSecondViewController controller]]
                                                         animated:YES];
            [itrSideMenu hideMenuViewController];
            break;
        default:
            break;
    }
}

#pragma mark -
#pragma mark UITableView Datasource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 54;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)sectionIndex
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:21];
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.textLabel.highlightedTextColor = [UIColor lightGrayColor];
        cell.selectedBackgroundView = [[UIView alloc] init];
    }
    
    NSArray *titles = @[@"Menu1", @"Menu2", @"Menu3", @"Menu4", @"Menu5"];
    cell.textLabel.text = titles[indexPath.row];
    
    return cell;
}


@end
