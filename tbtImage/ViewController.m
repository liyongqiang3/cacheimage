//
//  ViewController.m
//  tbtImage
//
//  Created by 李永强 on 15/6/5.
//  Copyright (c) 2015年 tongbaotu. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "UIImageView+AFNetworking.h"
#import "CacheData.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)loadButtonEvent:(id)sender {
    [_imageView  setImageWithURL:[NSURL URLWithString:@"http://c.hiphotos.baidu.com/image/pic/item/a1ec08fa513d2697e3da4eea50fbb2fb4316d878.jpg"]];

}
- (IBAction)emptyButtonEvent:(id)sender {
    [_imageView setImage:nil];
}
- (IBAction)readButtonEvent:(id)sender {
    NSMutableArray * dataArray  = [CacheData readCacheMemory:@"women"];
    UIImage * dataImage = [dataArray objectAtIndex:0];
    [_imageView setImage:dataImage];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)saveButtonEvent:(id)sender {
    UIImage * dataImage  = _imageView.image ;
    NSMutableArray * dataArray = [[NSMutableArray alloc]init];
    [dataArray addObject:dataImage];
    [CacheData writeCacheMemory:dataArray   andKeyString:@"women"];


}

@end
