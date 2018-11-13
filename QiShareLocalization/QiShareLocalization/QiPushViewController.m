//
//  QiPushViewController.m
//  QiShareLocalization
//
//  Created by QiShare on 2018/11/11.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "QiPushViewController.h"

@interface QiPushViewController ()

/*! @brief 本地化Label */
@property (nonatomic,strong) UILabel *localizationLabel;

@end

@implementation QiPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self localizeAppDisplayNameCopyright];
    [self localizeAppText];
    [self localizeAppBundleImageResources];
}

- (void)localizeAppDisplayNameCopyright {
    
    UILabel *copyrightLabel = [UILabel new];
    copyrightLabel.text = [[[NSBundle mainBundle] localizedInfoDictionary] objectForKey:@"NSHumanReadableCopyright"];
    copyrightLabel.textAlignment = NSTextAlignmentCenter;
    copyrightLabel.backgroundColor = [UIColor colorWithRed:151.0/255.0 green:191.0/255.0 blue:67.0/255.0 alpha:1.0];
    [self.view addSubview:copyrightLabel];
    copyrightLabel.frame = CGRectMake(20.0, CGRectGetMaxY(self.view.frame) - 100.0, CGRectGetWidth(self.view.frame) - 40.0, 40.0);
    
    UILabel *appNameLabel = [UILabel new];
    appNameLabel.textAlignment = NSTextAlignmentCenter;
    appNameLabel.backgroundColor = [UIColor colorWithRed:151.0/255.0 green:191.0/255.0 blue:67.0/255.0 alpha:1.0];
    appNameLabel.text = [[[NSBundle mainBundle] localizedInfoDictionary] objectForKey:@"CFBundleDisplayName"];
    [self.view addSubview:appNameLabel];
    appNameLabel.frame = CGRectMake(20.0, CGRectGetMinY(copyrightLabel.frame) - 60.0, CGRectGetWidth(self.view.frame) - 40.0, 40.0);
}

- (void)localizeAppText {
    
    _localizationLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0, 100.0, CGRectGetWidth(self.view.frame) - 40.0, 40.0)];
    [self.view addSubview:_localizationLabel];
    _localizationLabel.textAlignment = NSTextAlignmentCenter;
    _localizationLabel.backgroundColor = [UIColor colorWithRed:151.0/255.0 green:191.0/255.0 blue:67.0/255.0 alpha:1.0];
    
    // 奇分享文本资源本地化
    _localizationLabel.text = [[NSBundle mainBundle] localizedStringForKey:@"QiPushViewController_localizationLabel.text" value:nil table:nil];
     // _localizationLabel.text = [[NSBundle mainBundle] localizedStringForKey:@"奇分享本地化文本" value:nil table:nil];
     // _localizationLabel.text = [[NSBundle mainBundle] localizedStringForKey:@"奇分享本地化文本补充" value:nil table:@"supplementaryLocalizable"];
}

- (void)localizeAppBundleImageResources {
    
    // 奇分享图片资源本地化
    UIImage *logoImg = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"QiShareLogo" ofType:@"png"]];
    UIImageView *logoImgV = [[UIImageView alloc] initWithImage:logoImg];
    [self.view addSubview:logoImgV];
    logoImgV.frame = CGRectMake(CGRectGetMidX(self.view.frame) - 100.0, 160.0, 200.0, 200.0);
}

- (UILabel *)centerAlignmentDesignatedbackgroundColorLabel {
    
    UILabel *label = [UILabel new];
    label.backgroundColor = [UIColor colorWithRed:151.0/255.0 green:191.0/255.0 blue:67.0/255.0 alpha:1.0];
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}

@end
