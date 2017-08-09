//
//  JQPhotoItem.m
//  JQPhotoBrowser
//
//  Created by 韩俊强 on 2017/8/7.
//  Copyright © 2017年 HaRi. All rights reserved.
//

#import "JQPhotoItem.h"

@interface JQPhotoItem()

- (BOOL)shouldClipToTop:(CGSize)imageSize forView:(UIView *)view;

@end

@implementation JQPhotoItem


- (UIImage *)thumbImage
{
    if ([_thumbView respondsToSelector:@selector(image)]) {
        return ((UIImageView *)_thumbView).image;
    }
    return nil;
}

- (BOOL)thumbClippedToTop
{
    if (_thumbView) {
        if (_thumbView.layer.contentsRect.size.height < 1) {
            return YES;
        }
    }
    return NO;
}

- (BOOL)shouldClipToTop:(CGSize)imageSize forView:(UIView *)view {
    if (imageSize.width < 1 || imageSize.height < 1) return NO;
    if (view.frame.size.width < 1 || view.frame.size.height < 1) return NO;
    return imageSize.height / imageSize.width > view.frame.size.width / view.frame.size.height;
}

@end
