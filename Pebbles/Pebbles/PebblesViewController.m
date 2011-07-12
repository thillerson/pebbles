//
//  PebblesViewController.m
//  Pebbles
//
//  Created by Tony Hillerson on 7/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PebblesViewController.h"
#import "CloudViewController.h"

@implementation PebblesViewController
@synthesize cloudViewController, gameboardView;

- (void)dealloc {
    [super dealloc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	self.cloudViewController = [[CloudViewController alloc] initWithGameboardView:self.gameboardView];
	[self.cloudViewController createClouds];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
