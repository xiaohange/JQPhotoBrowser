//
//  JQPhotoItem.h
//  JQPhotoBrowser
//
//  Created by 韩俊强 on 2017/8/7.
//  Copyright © 2017年 HaRi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface JQPhotoItem : NSObject

@property (strong,nonatomic) UIView *thumbView;

@property (strong,nonatomic) NSURL *originImageUrl;

@property (nonatomic, readonly) UIImage *thumbImage;
@property (nonatomic, readonly) BOOL thumbClippedToTop;

@end
