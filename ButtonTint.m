//
//  ButtonTint.m
//
//  Created by Jonathon Hibbard on 9/7/13.
//  Copyright (c) 2013 Integrated Events. All rights reserved.
//

#import "ButtonTint.h"
#import "UIImage+RenderingMode.h"

@implementation ButtonTint

-(void)awakeFromNib {
    [super awakeFromNib];
    [self applyTint];
}

-(void)applyTint {
    if(self.imageView && self.imageView.image) {
        UIImage *highlightedImage = self.imageView.image;
        [self setImage:highlightedImage forState:UIControlStateHighlighted];
        [self setImage:highlightedImage forState:UIControlStateSelected];

        UIImage *btnImage = [UIImage imageWithRenderingModeFromImage:self.imageView.image];
        [self setImage:btnImage forState:UIControlStateNormal];
    }
}

@end
