//
//  PebblesAppDelegate.h
//  Pebbles
//
//  Created by Tony Hillerson on 7/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PebblesViewController;

@interface PebblesAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet PebblesViewController *viewController;

@end
