//
//  PebblesViewController.h
//  Pebbles
//
//  Created by Tony Hillerson on 7/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CloudViewController;

@interface PebblesViewController : UIViewController {

}

@property(nonatomic,retain) IBOutlet UIView *gameboardView;
@property(nonatomic,retain) CloudViewController *cloudViewController;


@end
