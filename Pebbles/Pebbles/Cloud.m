//
//  Cloud.m
//  Pebbles
//
//  Created by Tony Hillerson on 7/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Cloud.h"


@implementation Cloud
@synthesize speed;

- (id)initWithImage:(UIImage *)image {
    self = [super initWithImage:image];
    if (self) {
        self.speed = arc4random() % 5 + 1;
		NSLog(@"speed: %f", self.speed);
    }
    return self;
}

- (void) updatePosition {
	CGPoint c = self.center;
	c.x = c.x + self.speed;
	if (c.x - self.frame.size.width/2 > 320) {
		c.x = 0 - self.frame.size.width;
	}
	self.center = c;
}

- (void)dealloc {
    [super dealloc];
}

@end
