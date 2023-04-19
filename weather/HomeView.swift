//
//  HomeView.swift
//  weather
//
//  Created by 박현렬 on 2023/04/19.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Text("Seoul").font(.largeTitle)
            VStack{
                Text("25")
                Text("\n")
                Text("Clear")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
