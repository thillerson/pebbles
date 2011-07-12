//
//  CloudViewController.m
//  Pebbles
//
//  Created by Tony Hillerson on 7/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CloudViewController.h"
#import "Cloud.h"

@implementation CloudViewController
@synthesize gameboardView;

- (id) initWithGameboardView:(UIView *)gbv {
	self = [super init];
	if (self) {
		self.gameboardView = gbv;
		clouds = [[NSMutableSet setWithCapacity:5] retain];
		displayLink = [[CADisplayLink displayLinkWithTarget:self
												   selector:@selector(updateScene)] retain];
		[displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
	}
	return self;
}

- (void)dealloc {
	self.gameboardView = nil;
	[clouds release]; clouds = nil;
	[displayLink release]; displayLink = nil;
    [super dealloc];
}

- (void) updateScene {
	for (Cloud *cloud in clouds) {
		[cloud updatePosition];
	}
}

- (void) createClouds {
	Cloud *cloudView = [[[Cloud alloc] initWithImage:[UIImage imageNamed:@"cloud"]] autorelease];
	cloudView.frame = CGRectMake(10, 10, cloudView.frame.size.width, cloudView.frame.size.height);
	[clouds addObject:cloudView];
	[self.gameboardView addSubview:cloudView];
	
	cloudView = [[[Cloud alloc] initWithImage:[UIImage imageNamed:@"cloud"]] autorelease];
	cloudView.frame = CGRectMake(100, 40, cloudView.frame.size.width, cloudView.frame.size.height);
	[clouds addObject:cloudView];
	[self.gameboardView addSubview:cloudView];

	cloudView = [[[Cloud alloc] initWithImage:[UIImage imageNamed:@"cloud"]] autorelease];
	cloudView.frame = CGRectMake(210, 50, cloudView.frame.size.width, cloudView.frame.size.height);
	[clouds addObject:cloudView];
	[self.gameboardView addSubview:cloudView];

	cloudView = [[[Cloud alloc] initWithImage:[UIImage imageNamed:@"cloud"]] autorelease];
	cloudView.frame = CGRectMake(10, 100, cloudView.frame.size.width, cloudView.frame.size.height);
	[clouds addObject:cloudView];
	[self.gameboardView addSubview:cloudView];
	
	cloudView = [[[Cloud alloc] initWithImage:[UIImage imageNamed:@"cloud"]] autorelease];
	cloudView.frame = CGRectMake(230, 78, cloudView.frame.size.width, cloudView.frame.size.height);
	[clouds addObject:cloudView];
	[self.gameboardView addSubview:cloudView];
}

@end
