//
//  CatFactsViewModel.swift
//  CatFactsAssignment
//
//  Created by Salome Lapiashvili on 20.11.23.
//

import UIKit


final class CatFactsViewModel {
    private let catFactsAPI = CatFactsAPI.shared
    var catFacts: [CatFactModel] = [] 

    func fetchCatFacts(completion: @escaping () -> Void) {
        catFactsAPI.getCatFacts { [self] catFacts in
            if let catFacts = catFacts {
                self.catFacts = catFacts
            }
            completion()
        }
    }
}
