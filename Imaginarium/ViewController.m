//
//  ViewController.m
//  Imaginarium
//
//  Created by manolya atalay on 4/27/15.
//  Copyright (c) 2015 RNR Associates. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://images.apple.com/v/iphone-5s/gallery/a/images/download/%@.jpg", segue.identifier]];
        ivc.title = segue.identifier;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    //self.imageView.bounds = self.view.bounds;
    //UIImage *image =[UIImage imageNamed:@"background"];

    //self.imageView.image = image;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
