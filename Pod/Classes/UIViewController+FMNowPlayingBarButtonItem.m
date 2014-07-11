//
//  UIViewController+FMNowPlayingBarButtonItem.m
//  Pods
//
//  Created by Kyle Shank on 7/11/14.
//
//

#import "UIViewController+FMNowPlayingBarButtonItem.h"

@implementation UIViewController (FMNowPlayingBarButtonItem)

-(UIBarButtonItem*)nowPlayingButton:(id)target action:(SEL)action{
    UIButton* btn = [[UIButton alloc] initWithFrame: CGRectMake(0, 0, 55, 29)];
    [btn setTitle:@"Now Playing" forState:UIControlStateNormal];
    
    btn.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    if([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0){
        UIColor* nowPlayingTint = [UIColor blackColor];
        if(self.navigationController){
            nowPlayingTint = self.navigationController.navigationBar.tintColor;
        }
        [btn setTitleColor:nowPlayingTint forState:UIControlStateNormal];
        btn.titleLabel.backgroundColor = [UIColor clearColor];
        btn.titleLabel.font = [UIFont systemFontOfSize:12];
        [btn setFrame:CGRectMake(0, 0, 44, 29)];
    }else{
        btn.titleLabel.textColor = [UIColor whiteColor];
        btn.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 5);
        btn.titleLabel.font = [UIFont boldSystemFontOfSize:10];
        btn.titleLabel.shadowColor = [UIColor blackColor];
        btn.titleLabel.shadowOffset = CGSizeMake(0.0, -1.0);
        [btn setBackgroundImage:[UIImage imageNamed:@"nowPlaying"] forState:UIControlStateNormal];
        btn.adjustsImageWhenHighlighted = YES;
    }

    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem* item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return item;
}

@end
