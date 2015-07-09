//
//  MEViewController.h
//  MECheckbox
//
//  Created by SoundBlaster on 07/09/2015.
//  Copyright (c) 2015 SoundBlaster. All rights reserved.
//

@import UIKit;

#import <MECheckbox/MECheckbox.h>
@interface MEViewController : UIViewController <MECheckboxDelegate>
- (IBAction)toggleChecbox:(id)sender;
@property (weak, nonatomic) IBOutlet MECheckbox *checkbox;

@end
