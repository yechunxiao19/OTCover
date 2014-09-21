//
//  OTCover.h
//  OTMediumCover
//
//  Created by yechunxiao on 14-9-21.
//  Copyright (c) 2014年 yechunxiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#define OTCoverViewHeight 200

@interface OTCover : UIView<UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView* scrollView;
@property (nonatomic, strong) UIImageView* headerImageView;
@property (nonatomic, strong) UIView* scrollContentView;

- (OTCover*)initWithHeaderImage:(UIImage*)headerImage withContentHeight:(CGFloat)contentHeight;
- (void)setHeaderImage:(UIImage *)headerImage;

@end

@interface UIImage (Blur)
-(UIImage *)boxblurImageWithBlur:(CGFloat)blur;
@end
