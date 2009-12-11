//
//  OverlayViewTesterAppDelegate.h
//  OverlayViewTester
//
//  Created by Jason Job on 09-12-10.
//  Copyright Jason Job 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OverlayViewController;

@interface OverlayViewTesterAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	OverlayViewController *overlayViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet OverlayViewController *overlayViewController;


@end

