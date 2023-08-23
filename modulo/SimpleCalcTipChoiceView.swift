//
//  SimpleCalcTipChoiceView.swift
//  modulo
//
//  Created by Matthew Au on 2023-07-09.
//

import SwiftUI

struct SimpleCalcTipChoiceView: View {

    @ObservedObject var viewModel: RatingViewModel
    @State private var mealCostInput = ""
    
    var body: some View {
        
        let ratingCorrelatedAmt = viewModel.selectedRating ?? 0
        
        ZStack {
            
            Color(red: 0.0, green: 0.0, blue: 1.0, opacity: 1.0)
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Text("What is the total cost of your meal?")
                    .font(.custom("DMSans-Bold", size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(height: 150.0)
                
                Spacer()
                Spacer()
                
                TextField("Enter amount", text: $mealCostInput )
                    
                    .keyboardType(.decimalPad)
                    .frame(width: 300.0, height: 100.0)
                    .font(.custom("DMSans-Bold", size: 30))
                    .foregroundColor(.black)
                    .background(.white)
                    .multilineTextAlignment(.center)
                    .cornerRadius(20)
                
                Spacer()
                
                Spacer()
                
            }
                        
            
            
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
