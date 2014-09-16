//
//  MessageCollectionViewCell.m
//  CollectionViewTest
//
//  Created by Administrator on 9/12/14.
//  Copyright (c) 2014 Administrator. All rights reserved.
//

#import "MessageCollectionViewCell.h"

@implementation MessageCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
    
    self.messageLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.messageLabel.numberOfLines = 0;
    self.messageLabel.userInteractionEnabled = YES;
//    self.messageLabel.preferredMaxLayoutWidth = 200;
}

@end
