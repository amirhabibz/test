//
//  TestMapper.swift
//  TestApi
//
//  Created by Amir Habibi on 2014-11-27.
//  Copyright (c) 2014 Amir Habibi. All rights reserved.
//

import Foundation

import ObjectMapper


class Images: MapperProtocol {
    
    var items: String?
//    var count: String?
//    var type: String?
//    var scope: String?
//    var query: String?
    //var friend: User?                       // Nested User object
    
    
    
    
    required init(){}
    
    // MapperProtocol
    func map(mapper: Mapper) {
        items <= mapper["items"]
//        count <= mapper["count"]
//        type <= mapper["type"]
//        scope <= mapper["scope"]
//        query <= mapper["query"]
//        //friend <= mapper["dict"]
        
    }
}