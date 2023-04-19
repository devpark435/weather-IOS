//
//  TabBar.swift
//  weather
//
//  Created by 박현렬 on 2023/04/19.
//

import SwiftUI

struct TabBar: View {
    var action: () -> Void
    var body: some View {
        ZStack{
            
            Arc()
                .fill(Color.gray.opacity(0.2))
                .frame(height: 88)
                .overlay(
                    Arc()
                        .stroke(Color.gray.opacity(0.4),lineWidth: 0.3)
                )
            HStack{
                //bottom Sheet
                Button{
                    action()
                }label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44,height: 44)
                }
                Spacer()
                NavigationLink{
                    
                }label: {
                    Image(systemName: "list.star")
                        .frame(width: 44,height: 44)
                }
            }
            .font(.title2)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        }
        .frame(maxHeight: .infinity,alignment: .bottom)
        .ignoresSafeArea()
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action: {}).preferredColorScheme(.dark)
    }
}
