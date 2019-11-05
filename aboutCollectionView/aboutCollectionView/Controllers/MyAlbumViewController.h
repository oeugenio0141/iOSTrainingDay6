//
//  MyAlbumViewController.h
//  aboutCollectionView
//
//  Created by OPSolutions on 05/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyAlbumViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *myAlbumCollectionView; //Kapag kino-call sa didLoad

@property (copy, readwrite) NSArray *album; //Ginamit sa dictionary
@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) UIImageView *myImageView;

@end

NS_ASSUME_NONNULL_END
