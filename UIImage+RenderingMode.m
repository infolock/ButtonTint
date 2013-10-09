//
//  UIImage+RenderingMode.m
//
//  Created by Jonathon Hibbard on 9/6/13.
//  Copyright (c) 2013 Integrated Events. All rights reserved.
//

#import "UIImage+RenderingMode.h"

@implementation UIImage (RenderingMode)

+(UIImage *)imageWithRenderingMode:(NSString *)imageName {
    return [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
}

+(UIImage *)imageWithRenderingModeFromImage:(UIImage *)image {
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    return image;
}

@end
