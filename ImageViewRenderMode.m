//
//  ImageViewRenderMode.m
//
//  Created by Jonathon Hibbard on 9/7/13.
//  Copyright (c) 2013 Integrated Events. All rights reserved.
//

#import "ImageViewRenderMode.h"
#import "UIImage+RenderingMode.h"

@implementation ImageViewRenderMode

-(void)awakeFromNib {
    [super awakeFromNib];
    if(self.image) {
        self.layer.rasterizationScale = [[UIScreen mainScreen] scale];
        self.image = [UIImage imageWithRenderingModeFromImage:self.image];
    }
}

@end
