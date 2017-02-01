//
//  SLShimmerTableViewCell.m
//  testFBShimmer
//
//  Created by Agustin De Leon on 1/2/17.
//  Copyright © 2017 Agustin De Leon. All rights reserved.
//

#import "SLShimmerTableViewCell.h"
#import "FBShimmeringView.h"
#import "Masonry.h"

@interface SLShimmerTableViewCell ()

@property (nonatomic, strong) FBShimmeringView *shimmerView;
@property (nonatomic, weak) IBOutlet UIView *contentShimmerView;

@end

@implementation SLShimmerTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.shimmerView = [[FBShimmeringView alloc] init];
    [self.contentView addSubview:self.shimmerView];
    
    [self.shimmerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.shimmerView.superview).with.insets(UIEdgeInsetsZero);
    }];
    
    self.shimmerView.contentView = self.contentShimmerView;
    
    [self.contentShimmerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentShimmerView.superview).with.insets(UIEdgeInsetsZero);
    }];
    
    self.shimmerView.shimmering = YES;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
