//
//  DummyData.swift
//  chajjip
//
//  Created by JunHwan Kim on 2022/04/04.
//

import Foundation

struct TouristAndRestaurant{
    let name : String
    let address : String
    let contact : String
}

struct DummyData{
    static let places : [TouristAndRestaurant] = [TouristAndRestaurant(name: "한림대학교", address: "강원 춘천시 후평동 1-1", contact: "010-1111-2222"), TouristAndRestaurant(name: "강원대학교", address: "강원 춘천시 강원대학길 1", contact: "010-2222-3333"), TouristAndRestaurant(name: "유동여자고등학교", address: "강원 춘천시 봉의산길22번길 28 유봉여자고등학교", contact: "010-3333-4444"), TouristAndRestaurant(name: "한림마트", address: "강원 춘천시 봉의산길22번길 32", contact: "010-4444-5555")]
}
