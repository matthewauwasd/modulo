//
//  FinalResultView.swift
//  modulo
//
//  Created by Matthew Au on 2023-08-22.
//

import SwiftUI

struct FinalResultView: View {
    
    @ObservedObject var viewModel: ValueViewModel

    
    var body: some View {
        
        ZStack {
            let ratingCorrelatedAmt = viewModel.selectedRating ?? 0
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
    
}



struct FinalResultView_Previews: PreviewProvider {
    static var previews: some View {
        
        let dummyViewModel = ValueViewModel()

        
    }
}
