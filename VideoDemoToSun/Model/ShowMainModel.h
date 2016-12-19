//
//  ShowMainModel.h
//  VideoDemoToSun
//
//  Created by 涂婉丽 on 16/12/15.
//  Copyright © 2016年 涂婉丽. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShowMainModel : NSObject
@property (nonatomic, copy) NSString *icon;//头像
@property (nonatomic, copy) NSString *name;//姓名
@property (nonatomic, copy) NSString *createTime;//时间
@property (nonatomic, copy) NSString *content;//neirong
@property (nonatomic, copy) NSString *videoUrl;//视频链接
@property (nonatomic, copy) NSString *playNums;//播放量
@property (nonatomic, copy) NSString *shares;//分享
@property (nonatomic, copy) NSString *comments;//评论
@property (nonatomic, copy) NSString *praises;//点赞
@property (nonatomic, copy) NSString *coverUrl;//封面链接

@end
