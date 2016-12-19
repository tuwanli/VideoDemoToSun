//
//  ShowMainViewCell.m
//  VideoDemoToSun
//
//  Created by 涂婉丽 on 16/12/15.
//  Copyright © 2016年 涂婉丽. All rights reserved.
//

#import "ShowMainViewCell.h"
#import "ShowMainModel.h"
#import "ShoeModelFrame.h"
#import "UIImageView+WebCache.h"
@implementation ShowMainViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //头像
        self.iconImageView = [[UIImageView alloc]init];
        [self addSubview:self.iconImageView];
        //姓名
        self.nameL = [[UILabel alloc]init];
        [self.nameL setTextColor:[UIColor orangeColor]];
        [self.nameL setFont:[UIFont systemFontOfSize:16]];
        [self addSubview:self.nameL];
        //时间
        self.createTimeL = [[UILabel alloc]init];
        self.createTimeL.font = [UIFont systemFontOfSize:13];
        [self.createTimeL setTextColor:[UIColor grayColor]];
        [self addSubview:self.createTimeL];
        //内容
        self.contenL = [[UILabel alloc]init];
        [self.contenL setFont:[UIFont systemFontOfSize:17]];
        self.contenL.numberOfLines = 0;
        [self addSubview:self.contenL];
        //视频
        self.videoView = [[UIView alloc]init];
//        [self.videoView setBackgroundColor:[UIColor redColor]];
        [self addSubview:self.videoView];
        //封面
        self.coverView = [[UIImageView alloc]init];
        self.coverView.userInteractionEnabled = YES;
        self.coverView.contentMode = UIViewContentModeScaleAspectFit;
        [self.videoView addSubview:self.coverView];
        //播放按钮
        self.playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.playBtn addTarget:self action:@selector(playAction) forControlEvents:UIControlEventTouchUpInside];
        [self.playBtn setImage:[UIImage imageNamed:@"video_play_btn_bg"] forState:UIControlStateNormal];
        [self.videoView addSubview:self.playBtn];
        //播放量
        self.playNumsL = [[UILabel alloc]init];
        [self.playNumsL setTextColor:[UIColor whiteColor]];
        self.playNumsL.textAlignment = NSTextAlignmentRight;
        [self.playNumsL setFont:[UIFont systemFontOfSize:15]];
        [self.videoView addSubview:self.playNumsL];
        //downView
        self.downView = [[UIView alloc]init];
//        [self.downView setBackgroundColor:[UIColor lightGrayColor]];
        [self addSubview:self.downView];
        //分享
        self.shareImageView = [[UIImageView alloc]init];
        self.shareImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self.downView addSubview:self.shareImageView];
        self.sharesL = [[UILabel alloc]init];
        [self.sharesL setFont:[UIFont systemFontOfSize:13]];
        self.sharesL.textAlignment = NSTextAlignmentCenter;
        [self.downView addSubview:self.sharesL];
        //评论
        self.commentImageView = [[UIImageView alloc]init];
        self.commentImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self.downView addSubview:self.commentImageView];
        self.commentsL = [[UILabel alloc]init];
        [self.commentsL setFont:[UIFont systemFontOfSize:13]];
        self.commentsL.textAlignment = NSTextAlignmentCenter;
        [self.downView addSubview:self.commentsL];
        //点赞
        self.praiseImageView = [[UIImageView alloc]init];
        self.praiseImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self.downView addSubview:self.praiseImageView];
        self.praisesL = [[UILabel alloc]init];
        [self.praisesL setFont:[UIFont systemFontOfSize:13]];
        self.praisesL.textAlignment = NSTextAlignmentCenter;
        [self.downView addSubview:self.praisesL];
    }
    return self;
}
- (void)setModelF:(ShoeModelFrame *)modelF
{
    _modelF = modelF;
    ShowMainModel *model = _modelF.model;
    //赋值
    [self giveContentData:model];
    //位置
    [self givecontentFrame];
}
- (void)giveContentData:(ShowMainModel *)model
{
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:model.icon] placeholderImage:[UIImage imageNamed:@""]];
    [self.nameL setText:model.name];
    [self.createTimeL setText:model.createTime];
    [self.contenL setText:model.content];
    [self.playNumsL setText:[NSString stringWithFormat:@"播放量：%@",model.playNums]];
    [self.coverView sd_setImageWithURL:[NSURL URLWithString:model.coverUrl] placeholderImage:[UIImage imageNamed:@"logo"]];
    [self.shareImageView setImage:[UIImage imageNamed:@"share_s"]];
    [self.commentImageView setImage:[UIImage imageNamed:@"message_s"]];
    [self.praiseImageView setImage:[UIImage imageNamed:@"found_s"]];
    [self.sharesL setText:model.shares];
    [self.commentsL setText:model.comments];
    [self.praisesL setText:model.praises];
}
- (void)givecontentFrame
{
    self.iconImageView.frame = _modelF.iconF;
    self.iconImageView.layer.cornerRadius = CGRectGetWidth(self.iconImageView.frame)/2;
    self.iconImageView.clipsToBounds = YES;
    self.nameL.frame = _modelF.nameF;
    self.createTimeL.frame = _modelF.timeF;
    self.contenL.frame = _modelF.contentF;
    self.videoView.frame = _modelF.videoViewF;
    self.coverView.frame = _modelF.coverViewF;
    self.playBtn.frame = _modelF.playBtnViewF;
    self.playNumsL.frame = _modelF.playNumsF;
    self.downView.frame = _modelF.downViewF;
    self.shareImageView.frame = _modelF.shareImageViewF;
    self.sharesL.frame = _modelF.sharesF;
    self.commentImageView.frame = _modelF.commentImageViewF;
    self.commentsL.frame = _modelF.commentsF;
    self.praiseImageView.frame = _modelF.praiseImageViewF;
    self.praisesL.frame = _modelF.praiseLF;

}
- (void)playAction
{
    if (_delegate && [_delegate respondsToSelector:@selector(playBtnClick:)]) {
        [_delegate playBtnClick:_indexPath];
    }
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
