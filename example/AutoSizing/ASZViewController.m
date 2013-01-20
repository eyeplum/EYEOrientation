//
//  ASZViewController.m
//  AutoSizing
//
//  Created by zeiss on 01/20/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <CoreGraphics/CoreGraphics.h>
#import "ASZViewController.h"
#import "ResizableView.h"
#import "UIApplication+AppDimensions.h"

@interface ASZViewController ()
@property (nonatomic, strong) ResizableView *resizableView;
@end

@implementation ASZViewController

- (void)loadView {
    [super loadView];

    self.resizableView = [[ResizableView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.resizableView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    [self.resizableView reLayoutToOrientation:[UIApplication currentOrientation]];
}

- (void)dealloc {
    [super dealloc];

    [self.resizableView release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [self.resizableView reLayoutToOrientation:toInterfaceOrientation];
}

@end