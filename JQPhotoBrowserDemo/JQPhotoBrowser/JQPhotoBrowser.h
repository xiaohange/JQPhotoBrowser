//
//  JQPhotoBrowser.h
//  JQPhotoBrowser
//
//  Created by 韩俊强 on 2017/8/7.
//  Copyright © 2017年 HaRi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JQPhotoItem.h"
#import <UIImageView+WebCache.h>


typedef enum : NSUInteger {
    bottomPageCtrType,
    topLabelType,
} pageControlType;

@interface JQPhotoBrowser : UIViewController


@property (nonatomic, readonly) NSArray *groupItems; ///< Array<YYPhotoGroupItem>
@property (nonatomic, readonly) NSInteger currentPage;
/**
 *  是否显示 页数提示
 */
@property (assign,nonatomic) BOOL  shouldShowPageControl;

@property (assign,nonatomic) pageControlType pageType;


- (instancetype)initWithPhotoItems:(NSArray *)PhotoItems;


- (void)showFromImageView:(UIView *)fromView andCurrentIndex:(NSInteger)currentIndex completion:(void (^)(void))completion;

@end
