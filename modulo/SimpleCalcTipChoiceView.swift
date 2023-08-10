//
//  SimpleCalcTipChoiceView.swift
//  modulo
//
//  Created by Matthew Au on 2023-07-09.
//

import SwiftUI

struct TipCalculationValues {
    
    var totalCost: Double
    var tipPercentage: Int
    
    func calculateTipPercentageDivided() -> Double {
        let tipPercentageDivided = Double(tipPercentage) / 100
        return tipPercentageDivided
    }
    
    func calculateTipAmount() -> Double {
        let tipAmount = totalCost * calculateTipPercentageDivided()
        return tipAmount
    }
    
    func calculateTipAmountRounded() -> Double {
        let roundedTipAmount = (calculateTipAmount() * 100).rounded() / 100
        return roundedTipAmount
    }
    
    func calculateTotalCostInclTipAmt() -> Double {
        let totalCostInclTipAmt = totalCost + calculateTipAmount()
        return totalCostInclTipAmt
    }
    
    func calculateTotalAmtInclTipRounded() -> Double {
        let roundedTotalCostInclTipAmt = (calculateTotalCostInclTipAmt() * 100).rounded() / 100
        return roundedTotalCostInclTipAmt
    }
    
}

struct SimpleCalcTipChoiceView: View {

    
    var body: some View {
        
        ZStack {
            
            Color(red: 0.0, green: 0.0, blue: 1.0, opacity: 1.0)
                .ignoresSafeArea()
            
            Text("TipChoice")
                .foregroundColor(.white)
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
    
}

struct SimpleCalcTipChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleCalcTipChoiceView()
    }
}
