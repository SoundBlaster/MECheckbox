//
//  OTCheckbox.m
//  Egor Merkushev
//
//  Created by Sound Blaster on 08.07.15.
//  Copyright (c) 2015 Egor Merkushev. All rights reserved.
//

#import "MECheckbox.h"

@interface MECheckbox ()

@end

@implementation MECheckbox

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (!self) {
        return nil;
    }
    [self initialization];
    [self inspectableDefaults];
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (!self) {
        return nil;
    }
    [self initialization];
    [self inspectableDefaults];
    
    return self;
}

-(void)initialization
{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    [self addGestureRecognizer:tap];
}

- (void)inspectableDefaults
{
    _checked = NO;
}

-(void)prepareForInterfaceBuilder
{
    [self setNeedsDisplay];
}

// -----------------------------------------------------------------------
#pragma mark - Actions
// -----------------------------------------------------------------------
-(void)tapped:(id)sender
{
    self.checked = !self.checked;
}

// -----------------------------------------------------------------------
#pragma mark - Setters
// -----------------------------------------------------------------------
-(void)setCheckedImage:(UIImage *)checkedImage
{
    _checkedImage = checkedImage;
    [self setNeedsDisplay];
}

-(void)setUncheckedImage:(UIImage *)uncheckedImage
{
    _uncheckedImage = uncheckedImage;
    [self setNeedsDisplay];
}

-(void)setChecked:(BOOL)checked
{
    _checked = checked;
    if (self.delegate && [self.delegate conformsToProtocol:@protocol(MECheckboxDelegate)]) {
        [self.delegate checkbox:self didChangeValue:_checked];
    }
    [self setNeedsDisplay];
}

// -----------------------------------------------------------------------
#pragma mark - Drawing
// -----------------------------------------------------------------------
-(void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    CGRect imageRect;
    UIImage *image;
    if (self.checkedImage && self.checked) {
        image = self.checkedImage;
    }
    if (self.uncheckedImage && !self.checked) {
        image = self.uncheckedImage;
    }
    // pattern image
    if (self.centered) {
        imageRect = CGRectMake(0.5*(rect.size.width-image.size.width),
                               0.5*(rect.size.height-image.size.height),
                               image.size.width,image.size.height);
    } else {
        imageRect = CGRectMake(0,0,image.size.width,image.size.height);
    }
    if (image) {
        [image drawInRect:imageRect];
    }
}

@end
