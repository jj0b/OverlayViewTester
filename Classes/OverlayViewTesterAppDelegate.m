//
//  OverlayViewTesterAppDelegate.m
//  OverlayViewTester
//
//  Created by Jason Job on 09-12-10.
//  Copyright Jason Job 2009. All rights reserved.
//

#import "OverlayViewTesterAppDelegate.h"
#import "OverlayViewController.h"

@implementation OverlayViewTesterAppDelegate

@synthesize window;
@synthesize overlayViewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
	[window addSubview:overlayViewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[overlayViewController release];
    [window release];
    [super dealloc];
}


@end
