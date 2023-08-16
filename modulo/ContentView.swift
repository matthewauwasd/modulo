//
//  ContentView.swift
//  modulo
//
//  Created by Matthew Au on 2023-07-05.
//

import SwiftUI

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

struct ContentView: View {
    
    @StateObject private var viewModel = RatingViewModel()
    
    struct ButtonUIDetails: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            
                configuration.label
                .frame(width: 300.0, height: 150.0)
                .background(configuration.isPressed ? Color(red: 0.7, green: 0.7, blue: 0.9) : Color.white)
                    .font(.custom("DMSans-Bold", size: 25))
                    .foregroundColor(.blue)
                    .cornerRadius(20)
                    
            }
    }
    
    var body: some View {
            NavigationView {
                ZStack {
                    Color(red: 0.0, green: 0.0, blue: 1.0, opacity: 1.0)
                        .ignoresSafeArea()

                    VStack {
                        Spacer()

                        Text("How was your service?")
                            .font(.custom("DMSans-Bold", size: 30))
                            .foregroundColor(.white)
                            .frame(height: 150.0)

                        NavigationLink(destination: SimpleCalcTipChoiceView(viewModel: RatingViewModel(selectedRating: 15))) {
                            Text("Great")
                        }
                        .buttonStyle(ButtonUIDetails())

                        NavigationLink(destination: SimpleCalcTipChoiceView(viewModel: RatingViewModel(selectedRating: 13))) {
                            Text("Average")
                        }
                        .buttonStyle(ButtonUIDetails())

                        NavigationLink(destination: SimpleCalcTipChoiceView(viewModel: RatingViewModel(selectedRating: 10))) {
                            Text("Bad")
                        }
                        .buttonStyle(ButtonUIDetails())

                        Spacer()
                    }
                }
            }
        }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
