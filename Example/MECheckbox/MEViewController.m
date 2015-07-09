//
//  MEViewController.m
//  MECheckbox
//
//  Created by SoundBlaster on 07/09/2015.
//  Copyright (c) 2015 SoundBlaster. All rights reserved.
//

#import "MEViewController.h"

@interface MEViewController ()

@end

@implementation MEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// -----------------------------------------------------------------------
#pragma mark - <MECheckboxDelegate>
// -----------------------------------------------------------------------
-(void)checkbox:(MECheckbox *)checkbox didChangeValue:(BOOL)checked
{
    NSLog(@"Checked: %@", checked ? @"YES" : @"NO");
}

- (IBAction)toggleChecbox:(id)sender
{
    self.checkbox.checked = !self.checkbox.checked;
}

@end
