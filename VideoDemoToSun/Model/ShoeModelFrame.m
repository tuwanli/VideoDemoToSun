//
//  ShoeModelFrame.m
//  VideoDemoToSun
//
//  Created by 涂婉丽 on 16/12/15.
//  Copyright © 2016年 涂婉丽. All rights reserved.
//

#import "ShoeModelFrame.h"
#import "ShowMainModel.h"
@implementation ShoeModelFrame
- (void)setModel:(ShowMainModel *)model
{
    _model = model;
    //头像
    CGFloat marginX = 20;
    CGFloat marginY = 23;
    CGFloat iconW = 38;
    CGFloat iconH = iconW;
    _iconF = CGRectMake(marginX, marginY, iconW, iconH);
    
    //姓名
    CGFloat nameX = CGRectGetMaxX(_iconF)+10;
    CGFloat nameY = _iconF.origin.y;
    CGFloat nameW = [UIScreen mainScreen].bounds.size.width - CGRectGetMaxX(_iconF)-20;
    CGFloat nameH = iconH/2;
    _nameF = CGRectMake(nameX, nameY, nameW, nameH);
    //时间
    CGFloat timeX = nameX;
    CGFloat timeY = CGRectGetMaxY(_nameF);
    CGFloat timeW = nameW;
    CGFloat timeH = nameH;
    _timeF = CGRectMake(timeX, timeY, timeW, timeH);
    //内容
    CGFloat contentX = marginX;
    CGFloat contentY = CGRectGetMaxY(_iconF);
    CGFloat contentW = [UIScreen mainScreen].bounds.size.width-2*marginX;
    CGSize contnetSize = [_model.content boundingRectWithSize:CGSizeMake(contentW, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil].size;
    CGFloat contnetH = contnetSize.height;
    _contentF = CGRectMake(contentX, contentY, contentW, contnetH);
    //videoView
    CGFloat videoX = marginX;
    CGFloat videoY = CGRectGetMaxY(_contentF);
    CGFloat videoW = contentW;
    CGFloat videoH = 200;
    _videoViewF = CGRectMake(videoX, videoY, videoW, videoH);
    CGFloat downViewY = CGRectGetMaxY(_contentF);;
    if (_model.videoUrl.length>0) {
        downViewY = CGRectGetMaxY(_videoViewF);
    }
    //downView
    CGFloat downViewX = marginX;
    CGFloat downViewW = contentW;
    CGFloat downViewH = 50;
    _downViewF = CGRectMake(downViewX, downViewY, downViewW, downViewH);
    //cover
    CGFloat coverX = 0;
    CGFloat coverY = 0;
    CGFloat coverW = CGRectGetWidth(_videoViewF);
    CGFloat coverH = CGRectGetHeight(_videoViewF);
    _coverViewF = CGRectMake(coverX, coverY, coverW, coverH);
    
    //playBtn
    CGFloat playBtnX = CGRectGetWidth(_videoViewF)/2-33;
    CGFloat playBtnY = CGRectGetHeight(_videoViewF)/2-32;
    CGFloat playBtnW = 66;
    CGFloat playBtnH = 64;
    _playBtnViewF = CGRectMake(playBtnX, playBtnY, playBtnW, playBtnH);
    
    //playNumsL
    CGFloat playX = 20;
    CGFloat playY = 0;
    CGFloat playW = CGRectGetWidth(_videoViewF)-40;
    CGFloat playH = 30;
    _playNumsF = CGRectMake(playX, playY, playW, playH);
    
    
    //sharesimage
    CGFloat sharesimageX = CGRectGetWidth(_downViewF)/6-25;
    CGFloat sharesimageY = 15;
    CGFloat sharesimageW = 25;
    CGFloat sharesimageH = 20;
    _shareImageViewF= CGRectMake(sharesimageX, sharesimageY, sharesimageW, sharesimageH);
    
    //sharesL
    CGFloat shareX = CGRectGetMaxX(_shareImageViewF);
    CGFloat shareY = 0;
    CGFloat shareW = CGRectGetWidth(_downViewF)/6;
    CGFloat shareH = CGRectGetHeight(_downViewF);
    _sharesF= CGRectMake(shareX, shareY, shareW, shareH);
    //commentimage
    CGFloat commentimageX = CGRectGetMaxX(_sharesF)+CGRectGetWidth(_downViewF)/6-25;
    CGFloat commentimageY = 15;
    CGFloat commentimageW = 25;
    CGFloat commentimageH = 20;
    _commentImageViewF= CGRectMake(commentimageX, commentimageY, commentimageW, commentimageH);
    
    //comment
    CGFloat commentX = CGRectGetMaxX(_commentImageViewF);
    CGFloat commentY = _sharesF.origin.y;
    CGFloat commentW = CGRectGetWidth(_sharesF);
    CGFloat commentH = CGRectGetHeight(_sharesF);
    _commentsF= CGRectMake(commentX, commentY, commentW, commentH);
    //praiseimage
    CGFloat praiseimageX = CGRectGetMaxX(_commentsF)+CGRectGetWidth(_downViewF)/6-25;
    CGFloat praiseimageY = 15;
    CGFloat praiseimageW = 25;
    CGFloat praiseimageH = 20;
    _praiseImageViewF= CGRectMake(praiseimageX, praiseimageY, praiseimageW, praiseimageH);
    //praiseL
    CGFloat praiseX = CGRectGetMaxX(_praiseImageViewF);
    CGFloat praiseY = _sharesF.origin.y;
    CGFloat praiseW = CGRectGetWidth(_sharesF);
    CGFloat praiseH = CGRectGetHeight(_sharesF);
    _praiseLF= CGRectMake(praiseX, praiseY, praiseW, praiseH);
    
    _cellHeight = CGRectGetMaxY(_downViewF);
}
@end
