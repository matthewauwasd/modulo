//
//  TipCalculation.swift
//  modulo
//
//  Created by Matthew Au on 2023-08-14.
//

import Foundation

struct TipCalculation {
    
    var totalCost: Double
    var tipPercentage: Int
    
    /*
     This method converts % to non-%, decimal form
     Ex: User enters 17 for %
     17% -> 0.17 (since 17% == 0.17)
     Returns 0.17
     */
    func calculateTipPercentageDivided() -> Double {
        let tipPercentageDivided = Double(tipPercentage) / 100
        return tipPercentageDivided
    }
    
    // Uses decimal-form tip amount and multiplies it to the total cost, giving the tip amount in decimal form.
    func calculateTipAmount() -> Double {
        let tipAmount = totalCost * calculateTipPercentageDivided()
        return tipAmount
    }
    
    // Rounds tip amount to nearest hundredths place.
    func calculateTipAmountRounded() -> Double {
        let roundedTipAmount = (calculateTipAmount() * 100).rounded() / 100
        return roundedTipAmount
    }
    
    // Unrounded tip amount added to original total cost, giving total cost + unrounded tip (aka new total cost)
    func calculateTotalCostInclTipAmt() -> Double {
        let totalCostInclTipAmt = totalCost + calculateTipAmount()
        return totalCostInclTipAmt
    }
    
    // Rounded tip amount added to original total cost, giving total cost + rounded tip (aka new total cost)
    func calculateTotalAmtInclTipRounded() -> Double {
        let roundedTotalCostInclTipAmt = (calculateTotalCostInclTipAmt() * 100).rounded() / 100
        return roundedTotalCostInclTipAmt
    }
    
}
