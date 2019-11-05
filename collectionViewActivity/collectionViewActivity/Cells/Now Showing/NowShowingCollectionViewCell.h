//
//  NowShowingCollectionViewCell.h
//  collectionViewActivity
//
//  Created by OPSolutions on 05/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NowShowingCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *nowShowingImageView;
@property (weak, nonatomic) IBOutlet UILabel *nowShowingLabel;

@end

NS_ASSUME_NONNULL_END
