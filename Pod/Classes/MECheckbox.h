//
//  OTCheckbox.h
//  Egor Merkushev
//
//  Created by Sound Blaster on 08.07.15.
//  Copyright (c) 2015 Egor Merkushev. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MECheckbox;
@protocol MECheckboxDelegate <NSObject>
@required
-(void)checkbox:(MECheckbox*)checkbox didChangeValue:(BOOL)checked;
@end

IB_DESIGNABLE
@interface MECheckbox : UIView
@property (nonatomic, weak) IBOutlet id<MECheckboxDelegate> delegate;
@property (nonatomic, assign, getter=isChecked) IBInspectable BOOL checked;
@property (nonatomic, assign, getter=isCrisp) IBInspectable BOOL crisp;
@property (nonatomic, strong) IBInspectable UIImage *checkedImage;
@property (nonatomic, strong) IBInspectable UIImage *uncheckedImage;
@property (nonatomic, assign) IBInspectable BOOL centered;
@end
