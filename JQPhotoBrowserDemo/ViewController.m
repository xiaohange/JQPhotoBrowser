//
//  ViewController.m
//  JQPhotoBrowserDemo
//
//  Created by 韩俊强 on 2017/8/9.
//  Copyright © 2017年 HaRi. All rights reserved.
//

#import "ViewController.h"
#import "JQPhotoBrowser.h"

#define  SCREENWIDTH  [UIScreen mainScreen].bounds.size.width

@interface ViewController ()
{
    NSArray *urlArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    urlArray = @[@"http://cc.cocimg.com/api/uploads/170807/49eadc6d968c4f12b940773e75fed9bc.png",@"http://cc.cocimg.com/api/uploads/170809/0aba88dbca1f1e74c35897a35137c18d.png",@"http://cc.cocimg.com/api/uploads/170808/0698a822a848cdda0a24b9c2e75533d8.png",@"http://cc.cocimg.com/api/uploads/170804/59650af26689fe74bcc83bf211c9355f.png",@"http://cc.cocimg.com/api/uploads/170808/2c572f7ffc3a1935bbfe89439ede5940.png",@"http://cc.cocimg.com/api/uploads/20170809/1502261337401648.png",@"http://img4.07net01.com/upload/images/2017/03/25/55209250235451.gif",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1502279410063&di=29202ef74ed4f488552a018c3455fba6&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01db52582566a5a84a0d304fa0ecc7.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1502279258970&di=0414b6665f00c42ed92a4f19d3424e0f&imgtype=0&src=http%3A%2F%2Fimg.361games.com%2Ffile%2Ftu%2Fmeinv%2Fqbkrf43nnig.jpg"];
    
    for (int i = 0; i<urlArray.count; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(i%3 * 100 + (i%3 + 1)*(SCREENWIDTH-300)/4.0,100 + i/3 * 100 + (i/3 + 1)*(SCREENWIDTH-300)/4.0, 100, 100)];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        imageView.layer.masksToBounds = YES;
        [imageView sd_setImageWithURL:[NSURL URLWithString:urlArray[i]] placeholderImage:[UIImage imageNamed:@"test.jpg"]];
        
        [imageView sd_setImageWithURL:[NSURL URLWithString:urlArray[i]] placeholderImage:[UIImage imageNamed:@"test.jpg"]];
        
        [imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageViewTapped:)]];
        imageView.tag = 100+i;
        imageView.userInteractionEnabled = YES;
        [self.view addSubview:imageView];
    }
}

- (void)imageViewTapped:(UITapGestureRecognizer *)gesture
{
    UIImageView *imageView = (UIImageView *)gesture.view;
    
    NSMutableArray *items = [[NSMutableArray alloc] init];
    for (int i = 0; i<urlArray.count; i++) {
        JQPhotoItem *photoItem = [[JQPhotoItem alloc] init];
        
        photoItem.thumbView = [self.view viewWithTag:i+100];
        
        photoItem.originImageUrl = [NSURL URLWithString:urlArray[i]];
        
        [items addObject:photoItem];
    }
    JQPhotoBrowser *photoBrowser = [[JQPhotoBrowser alloc] initWithPhotoItems:items];
    photoBrowser.shouldShowPageControl = YES;
    photoBrowser.pageType = 1;
    [photoBrowser showFromImageView:imageView andCurrentIndex:imageView.tag-100 completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
