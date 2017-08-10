# JQPhotoBrowser
JQPhotoBrowser: 高仿微信图片浏览器!

## 更新记录
- 1.0.1
更新cocoapods

- 1.0.0
基础版本发布

## Installation

#### From CocoaPods

```
pod  "JQPhotoBrowser"
```

#### Manually 
- Drag all source files under floder `JQPhotoBrowser ` to your project.

## Usage
```
 urlArray = @[照片地址数组];
    
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
```

```
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
    photoBrowser.pageType = 1; // 提供两种类型
    [photoBrowser showFromImageView:imageView andCurrentIndex:imageView.tag-100 completion:nil];
}
```

## Star

[CSDN博客](http://blog.csdn.net/qq_31810357)    

iOS开发者交流群：①群:446310206 ②群:426087546 喜欢就❤️❤️❤️star一下吧！ 

Love is every every every star! Your support is my renewed motivation!


## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).