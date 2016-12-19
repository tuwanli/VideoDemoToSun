//
//  ShowMainViewCell.h
//  VideoDemoToSun
//
//  Created by 涂婉丽 on 16/12/15.
//  Copyright © 2016年 涂婉丽. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ShoeModelFrame;
@protocol ShowMainViewCellDelegate <NSObject>

- (void)playBtnClick:(NSIndexPath *)indexpath;

@end
@interface ShowMainViewCell : UITableViewCell
@property (nonatomic, strong) ShoeModelFrame *modelF;
@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *nameL;
@property (nonatomic, strong) UILabel *createTimeL;
@property (nonatomic, strong) UILabel *contenL;
@property (nonatomic, strong) UIView *videoView;
@property (nonatomic, strong) UIImageView *coverView;
@property (nonatomic, strong) UIButton *playBtn;
@property (nonatomic, strong) UILabel *playNumsL;
@property (nonatomic, strong) UILabel *sharesL;
@property (nonatomic, strong) UIImageView *shareImageView;
@property (nonatomic, strong) UILabel *commentsL;
@property (nonatomic, strong) UIImageView *commentImageView;
@property (nonatomic, strong) UILabel *praisesL;
@property (nonatomic, strong) UIImageView *praiseImageView;
@property (nonatomic, strong) UIView *downView;
@property (nonatomic, strong) NSIndexPath *indexPath;
@property (nonatomic, weak) id<ShowMainViewCellDelegate>delegate;
@end
