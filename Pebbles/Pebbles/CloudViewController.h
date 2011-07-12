//
//  CloudViewController.h
//  Pebbles
//
//  Created by Tony Hillerson on 7/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface CloudViewController : UIViewController {
    CADisplayLink *displayLink;
	NSMutableSet *clouds;
}

@property(nonatomic,retain) UIView *gameboardView;

- (id) initWithGameboardView:(UIView *)gameboardView;
- (void) createClouds;

@end
