//
//  MovieView.swift
//  SeSAC3SwiftUI
//
//  Created by 이승현 on 11/14/23.
//

import SwiftUI

struct MoviewView: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        ZStack {
            //      Color.green.ignoresSafeArea() // 최상단 뷰
            //      Image(.character)
            //        .resizable()
            //        .ignoresSafeArea()
            Image(.dummy)
                .resizable()
                .ignoresSafeArea()
            //        .scaledToFill()
            //        .frame(width: 300, height: 300, alignment: .center)
            Text("ㅠㅠ")
            VStack {
                Button("SHOW") {
                    isPresented = true
                }
                Spacer()
                HStack {
                    Circle()
                    Circle()
                    Circle()
                }
            }
        }
        .sheet(isPresented: $isPresented, content: {
            TamagotchiView()
        })
        //    .fullScreenCover(isPresented: .constant(true), content: {
        //      TamagotchiView()
        //    })
        //    HStack {
        //      Circle()
        //        .fill(.mint)
        //      Rectangle()
        //        .fill(.mint)
        //      RoundedRectangle(cornerRadius: 10)
        //        .fill(.mint)
        //      Capsule()
        //        .fill(.mint)
        //    }
    }
}
#Preview {
    MoviewView()
}
