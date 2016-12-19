//
//  ShoeModelFrame.h
//  VideoDemoToSun
//
//  Created by 涂婉丽 on 16/12/15.
//  Copyright © 2016年 涂婉丽. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class ShowMainModel;
@interface ShoeModelFrame : NSObject
@property (nonatomic)ShowMainModel *model;
@property (nonatomic, assign, readonly) CGRect  iconF;
@property (nonatomic, assign, readonly) CGRect  nameF;
@property (nonatomic, assign, readonly) CGRect  timeF;
@property (nonatomic, assign, readonly) CGRect  contentF;
@property (nonatomic, assign, readonly) CGRect  videoViewF;
@property (nonatomic, assign, readonly) CGRect  coverViewF;
@property (nonatomic, assign, readonly) CGRect  playBtnViewF;
@property (nonatomic, assign, readonly) CGRect  playNumsF;
@property (nonatomic, assign, readonly) CGRect  sharesF;
@property (nonatomic, assign, readonly) CGRect  commentsF;
@property (nonatomic, assign, readonly) CGRect  praiseLF;
@property (nonatomic, assign, readonly) CGRect  shareImageViewF;
@property (nonatomic, assign, readonly) CGRect  commentImageViewF;
@property (nonatomic, assign, readonly) CGRect  praiseImageViewF;

@property (nonatomic, assign, readonly) CGRect  downViewF;
@property (nonatomic, assign, readonly) CGFloat cellHeight;

@end
