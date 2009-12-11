//
//  OverlayViewController.m
//  OverlayViewTester
//
//  Created by Jason Job on 09-12-10.
//  Copyright 2009 Jason Job. All rights reserved.
//

#import "OverlayViewController.h"
#import "OverlayView.h"


@implementation OverlayViewController


- (void) viewDidAppear:(BOOL)animated {
	OverlayView *overlay = [[OverlayView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGTH)];
	
	// Create a new image picker instance:
	UIImagePickerController *picker = [[UIImagePickerController alloc] init];
	
	// Set the image picker source:
	picker.sourceType = UIImagePickerControllerSourceTypeCamera;
	
	// Hide the controls:
	picker.showsCameraControls = NO;
	picker.navigationBarHidden = YES;
	
	// Make camera view full screen:
	picker.wantsFullScreenLayout = YES;
	picker.cameraViewTransform = CGAffineTransformScale(picker.cameraViewTransform, CAMERA_TRANSFORM_X, CAMERA_TRANSFORM_Y);
	
	// Insert the overlay:
	picker.cameraOverlayView = overlay;
	
	// Show the picker:
	[self presentModalViewController:picker animated:YES];	
	[picker release];
	
    [super viewDidAppear:YES];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
