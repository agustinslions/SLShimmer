//
//  ViewController.m
//  testFBShimmer
//
//  Created by Agustin De Leon on 31/1/17.
//  Copyright © 2017 Agustin De Leon. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "SLShimmerView.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
 /*   FBShimmeringView *shimmeringView = [[FBShimmeringView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:shimmeringView];
    
    UILabel *loadingLabel = [[UILabel alloc] initWithFrame:shimmeringView.bounds];
    loadingLabel.textAlignment = NSTextAlignmentCenter;
    loadingLabel.text = NSLocalizedString(@"Shimmer", nil);
    
    shimmeringView.contentView = loadingLabel;
    
    [loadingLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(loadingLabel.superview).with.insets(UIEdgeInsetsZero);
    }];
    
    // Start shimmering.
    shimmeringView.shimmering = YES;
*/
    
    SLShimmerView *shimmeringView = [[NSBundle mainBundle] loadNibNamed:@"SLShimmerView" owner:nil options:nil][0];
    [self.contentView addSubview:shimmeringView];
    
    [shimmeringView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(shimmeringView.superview).with.insets(UIEdgeInsetsZero);
    }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"shimmeringCellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:MyIdentifier];
    }
    
    return cell;
}

@end
