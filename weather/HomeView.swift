//
//  HomeView.swift
//  weather
//
//  Created by 박현렬 on 2023/04/19.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .ignoresSafeArea()

            VStack(alignment: .center){
                Text("Seoul").font(.largeTitle)
                VStack(alignment: .center){
                    Text(attributedString)
                    Text("H:27° L:10°").font(.title3.weight(.bold))
                }
                Spacer()
            }.padding(.top,50)
        }
    }
    private var attributedString: AttributedString{
        var string = AttributedString("25°" + "\n"+"Mostly Clear")
        if let temp = string.range(of: "25°"){
            string[temp].font = .system(size: 96,weight: .thin)
            string[temp].foregroundColor = .primary
        }
        if let pipe = string.range(of: "\n"){
            string[pipe].font = .title3.weight(.semibold)
            string[pipe].foregroundColor = .secondary
        }
        if let weather = string.range(of: "Mostly Clear"){
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        return string
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().preferredColorScheme(.dark)
    }
}
