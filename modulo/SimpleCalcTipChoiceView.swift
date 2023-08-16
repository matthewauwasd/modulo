//
//  SimpleCalcTipChoiceView.swift
//  modulo
//
//  Created by Matthew Au on 2023-07-09.
//

import SwiftUI

struct SimpleCalcTipChoiceView: View {

    @ObservedObject var viewModel: RatingViewModel
    
    var body: some View {
        
        ZStack {
            
            let bingBong = viewModel.selectedRating ?? 0
            
            Text(String(bingBong))
                        
            //Color(red: 0.0, green: 0.0, blue: 1.0, opacity: 1.0)
                //.ignoresSafeArea()
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
    
}

struct SimpleCalcTipChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        let dummyViewModel = RatingViewModel()

        SimpleCalcTipChoiceView(viewModel: dummyViewModel)
    }
}
