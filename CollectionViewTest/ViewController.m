//
//  ViewController.m
//  CollectionViewTest
//
//  Created by Administrator on 9/12/14.
//  Copyright (c) 2014 Administrator. All rights reserved.
//

#import "ViewController.h"
#import "MessageCollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"MessageCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"ID"];
    self.collectionView.backgroundColor = [UIColor redColor];
//    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
//    self.collectionView.collectionViewLayout = flowLayout;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 500;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MessageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ID" forIndexPath:indexPath];
    cell.messageLabel.text = [NSString stringWithFormat:@"%d %d SKDJFLKSDJFKJSDFKSDFLKSJF JJSDKFJLSDFJ KSDFJ SDFJ DSFS DFLSJD FLK SDF JJSD FJSDL FJLS DFKL SDF DSF SDF S DF SDF SDFJKSDFKLDSKFJK SFJSDFKL LSJD FKL SDF", indexPath.row, arc4random() * 1000000];
    [cell.messageLabel setNeedsLayout];
    [cell.messageLabel sizeToFit];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(CGRectGetWidth(collectionView.frame), 120.0);
//    MessageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ID" forIndexPath:indexPath];
//    
//    // NB, if this method ever returns an invalid value for the size, none of the cells may ever be requested to show in the view.
//    cell.bounds = CGRectMake(0.0f, 0.0f, CGRectGetWidth(collectionView.bounds), CGRectGetHeight(cell.bounds));
//    CGSize fittingSize = [cell systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
//    CGSize size = CGSizeMake(CGRectGetWidth(collectionView.frame), fittingSize.height);
//    return size;
}

@end
