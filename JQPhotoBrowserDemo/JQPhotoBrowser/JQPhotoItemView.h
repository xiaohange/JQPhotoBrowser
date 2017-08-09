//
//  JQPhotoItemView.h
//  JQPhotoBrowser
//
//  Created by 韩俊强 on 2017/8/7.
//  Copyright © 2017年 HaRi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JQPhotoItem.h"
#import <UIImageView+WebCache.h>

#define SlowAnimateTime  0.3
#define FastAnimateTime  0.3

@protocol JQPhotoItemViewDelegate <NSObject>

/**
 *  放大结束
 */
- (void)zoomEnd;

/**
 *  缩小结束
 */
- (void)narrowEnd;

@end


@interface JQPhotoItemView : UIScrollView<UIScrollViewDelegate>
@property (nonatomic, strong) UIView *imageContainerView;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, assign) NSInteger page;

@property (nonatomic, assign) BOOL showProgress;
@property (nonatomic, assign) CGFloat progress;
@property (nonatomic, strong) CAShapeLayer *progressLayer;

@property (nonatomic, strong) JQPhotoItem *item;
@property (nonatomic, readonly) BOOL itemDidLoad;

@property (strong,nonatomic) UIView *fromView;


@property (weak,nonatomic) id <JQPhotoItemViewDelegate> zoomDelegate;


- (void)resizeSubviewSize;
- (void)scrollToTopAnimated:(BOOL)animated;


/**
 *  放大
 *
 *  @param photoItem <#photoItem description#>
 */
- (void)zoomSelfWithItem:(JQPhotoItem *)photoItem;

/**
 *  缩小
 *
 *  @param photoItem <#photoItem description#>
 */
- (void)narrowSelfWithItem:(JQPhotoItem *)photoItem animated:(BOOL)animated;
@end
