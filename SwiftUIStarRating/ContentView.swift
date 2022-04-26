//
//  ContentView.swift
//  SwiftUIStarRating
//
//  Created by costin popescu on 4/25/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var rating: Int = 0
    
    var numberOfStars: Int = 5
    
    
    var body: some View {
        
        VStack {
            Text(String(rating))
        
        
        HStack {
            ForEach(1..<numberOfStars+1, id: \.self){ index in
                Image(systemName: "star.fill").foregroundColor(rating >= index ? .red : .gray).onTapGesture {
                    rating = index
                }
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
