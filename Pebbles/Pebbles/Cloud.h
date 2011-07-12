//
//  Cloud.h
//  Pebbles
//
//  Created by Tony Hillerson on 7/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Cloud : UIImageView {
    
}

@property(nonatomic,assign) float speed;

- (void) updatePosition;

@end
