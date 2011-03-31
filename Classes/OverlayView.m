//
//  OverlayView.m
//  OverlayViewTester
//
//  Created by Jason Job on 09-12-10.
//  Copyright 2009 Jason Job. All rights reserved.
//

#import "OverlayView.h"
#import "ScanButton.h"


@implementation OverlayView


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
		// Clear the background of the overlay:
		self.opaque = NO;
		self.backgroundColor = [UIColor clearColor];
		
		// Load the image to show in the overlay:
		UIImage *overlayGraphic = [UIImage imageNamed:@"overlaygraphic.png"];
		UIImageView *overlayGraphicView = [[UIImageView alloc] initWithImage:overlayGraphic];
		overlayGraphicView.frame = CGRectMake(30, 100, 260, 200);
		[self addSubview:overlayGraphicView];
		[overlayGraphicView release];
		
		ScanButton *scanButton = [[ScanButton alloc] initWithFrame:CGRectMake(130, 320, 60, 30)];
		
		// Add a target action for the button:
		[scanButton addTarget:self action:@selector(scanButtonTouchUpInside) forControlEvents:UIControlEventTouchUpInside];
		[self addSubview:scanButton];
    }
    return self;
}

- (void) scanButtonTouchUpInside {
	UILabel *scanningLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 50, 120, 30)];
	scanningLabel.backgroundColor = [UIColor clearColor];
	scanningLabel.font = [UIFont fontWithName:@"Courier" size: 18.0];
	scanningLabel.textColor = [UIColor redColor]; 
	scanningLabel.text = @"Scanning...";
	
	[self addSubview:scanningLabel];
	
	[self performSelector:@selector(clearLabel:) withObject:scanningLabel afterDelay:2];
	
	[scanningLabel release];
}

- (void)clearLabel:(UILabel *)label {
	label.text = @"";
}


- (void)drawRect:(CGRect)rect {
    // Drawing code
}


- (void)dealloc {
    [super dealloc];
}


@end
