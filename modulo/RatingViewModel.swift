//
//  RatingViewModel.swift
//  modulo
//
//  Created by Matthew Au on 2023-08-15.
//

import SwiftUI

class RatingViewModel: ObservableObject {
    @Published var selectedRating: Int?
    
    init(selectedRating: Int? = nil) {
            self.selectedRating = selectedRating
        }
}
