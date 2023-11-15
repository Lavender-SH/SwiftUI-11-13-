//
//  ContentView.swift
//  SeSAC3SwiftUI
//
//  Created by 이승현 on 11/13/23.
//

import SwiftUI
//
//some: Opaque type (5.1) 역제네릭 타입

//1. Modifier ex(.padding, .background, .border)
//2. 여러 modifier가 추가 되어 있다면 뷰가 매번 반환된다
//3. modifer적용 순서에 따라 다른 뷰가 생성될 수 있음

//생성한 당시에는 어떤 타입인지 모르고, 사용할 때 구체적인 타입을 정의

struct ContentView: View {
    var body: some View {
        VStack {
            Text("안녕하세요")
                .foregroundColor(Color.white)
                .padding(EdgeInsets(top: 30, leading: 30, bottom: 30, trailing: 30))
                .font(.largeTitle)
                .background(Color.yellow)
                .padding(EdgeInsets(top: 30, leading: 30, bottom: 30, trailing: 30))
                .background(Color.red)
                .border(.green, width: 10)
                .border(Color.black)
            
            Text("안녕하세요")
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .background(Color.yellow)
                .padding()
                .background(Color.red)
                .border(.green, width: 10)
                .border(Color.black)
        }
        
        Button("클릭하기") {
            let value = type(of: self.body)
            print(value)
            print("클릭했습니다")
        }
        .foregroundStyle(.yellow)
        .background(.green)

    }
}

#Preview {
    ContentView()
}
