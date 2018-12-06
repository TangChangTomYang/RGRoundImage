//
//  ViewController.m
//  RGRoundImage
//
//  Created by yangrui on 2018/12/1.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+clip.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   self.imageView.image = [[UIImage imageNamed:@"cc"] roundImage];
    
}
 

@end
