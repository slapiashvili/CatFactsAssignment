//
//  CatFactModel.swift
//  CatFactsAssignment
//
//  Created by Salome Lapiashvili on 20.11.23.
//

import UIKit

struct CatFactModel: Decodable {
    let fact: String
}

struct CatFactsResponse: Decodable {
    let data: [CatFactModel]
}
