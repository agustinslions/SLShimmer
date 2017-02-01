//
//  SLShimmerView.m
//  testFBShimmer
//
//  Created by Agustin De Leon on 31/1/17.
//  Copyright © 2017 Agustin De Leon. All rights reserved.
//

#import "SLShimmerView.h"
#import "FBShimmeringView.h"
#import "Masonry.h"

@interface SLShimmerView ()

@property (nonatomic, weak) IBOutlet UIView *contentView;
@property (nonatomic, strong) FBShimmeringView *shimmerView;

@end

@implementation SLShimmerView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.shimmerView = [[FBShimmeringView alloc] init];
    [self addSubview:self.shimmerView];
    
    [self.shimmerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.shimmerView.superview).with.insets(UIEdgeInsetsZero);
    }];

    self.shimmerView.contentView = self.contentView;
    
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView.superview).with.insets(UIEdgeInsetsZero);
    }];
    
    self.shimmerView.shimmering = YES;

}

@end
