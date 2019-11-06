//
//  MyMoviesViewController.h
//  collectionViewActivity
//
//  Created by OPSolutions on 05/11/2019.
//  Copyright © 2019 OPSolutions. All rights reserved.
//

#import <UIKit/UIKit.h>



NS_ASSUME_NONNULL_BEGIN

@interface MyMoviesViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *topRatedCollectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *nowShowingCollectionView;


@property (copy, readwrite) NSArray *myMovies; 

@end

NS_ASSUME_NONNULL_END
