//
//  SplashScreen.swift
//  modulo
//
//  Created by Matthew Au on 2023-07-06.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive = false
    
    var body: some View {
        
        if isActive == true {
            ContentView()
        }
        
        else {
        
            ZStack {
                
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                    
                    Text("Developed by")
                        .font(.custom("DMSans-Bold", size: 10))
                        .foregroundColor(.white)
                    

                        
                        Text("astr*")
                            .font(.custom("DMSans-Bold", size: 30))
                            .foregroundColor(.white)
                    
                }
                
                .onAppear {
                    
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                        
                        withAnimation {
                            
                            self.isActive = true
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
