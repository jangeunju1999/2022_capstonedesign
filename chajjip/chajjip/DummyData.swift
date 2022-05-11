//
//  DummyData.swift
//  chajjip
//
//  Created by JunHwan Kim on 2022/04/04.
//

import Foundation
import UIKit
struct DummyData{
    static let shop : [Shop] = [Shop(name: "한림대학교", address: "강원 춘천시 후평동 1-1", contactNumber: "010-1111-2222"), Shop(name: "강원대학교", address: "강원 춘천시 강원대학길 1", contactNumber: "010-2222-3333"), Shop(name: "유동여자고등학교", address: "강원 춘천시 봉의산길22번길 28 유봉여자고등학교", contactNumber: "010-3333-4444"), Shop(name: "한림마트", address: "강원 춘천시 봉의산길22번길 32", contactNumber: "010-4444-5555")]
    
    static let myReview : MyReviewModel = MyReviewModel(reviewList: [Review(shop: shop[0], reviewImage: [UIImage(named: "hallym_depart")], reviewText: "맛있어요", rating: 5),Review(shop: shop[1], reviewImage: [UIImage(named: "pizza")], reviewText: "서비스도 별로고 음식맛도 별로에요", rating: 1),Review(shop: shop[2], reviewImage: [], reviewText: "존맛탱구리", rating: 4), Review(shop: shop[3], reviewImage: [UIImage(named: "hallym_depart")], reviewText: "그냥 그래요", rating: 3)])
}


