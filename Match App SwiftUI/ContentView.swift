//
//  ContentView.swift
//  Match App SwiftUI
//
//  Created by Taha Afzal on 8/8/20.
//  Copyright © 2020 Taha Afzal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View { 
        
        HStack {
            
            ForEach(0 ..< 3) { item in
                CardView(isFaceUp: true)
            }
            
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    
    var isFaceUp: Bool
    
    var body: some View {
        
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3)
                    
                Text("👻")
            }
            else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
            
        }
        
    }
}
