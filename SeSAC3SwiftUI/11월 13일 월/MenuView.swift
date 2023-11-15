//
//  MenuView.swift
//  SeSAC3SwiftUI
//
//  Created by 이승현 on 11/13/23.
//

import SwiftUI

struct MenuView: View {
    var cardProperty: some View {
        VStack(spacing: 10) {
            Image(systemName: "star")
                .background(.red)
            Text("토스 푸푸")
                .background(.green)
        }
        .padding()
        .background(.yellow)
    }
    
    
    var body: some View {
        VStack {
            HStack {
                cardProperty
                CardView(image: "star", text: "토스큐큐")
                CardView(image: "person", text: "고객센터")
                CardView(image: "pencil", text: "토스증권")
                
                VStack(spacing: 10) {
                    Image(systemName: "star")
                        .background(.red)
                    Text("토스 증권")
                        .background(.green)
                }
                .padding()
                .background(.yellow)
            }
        }
        List {
            Section{
                Text("보안과 인증")
                    .modifier(PointBorderText()) //함수 호출방식1
                DatePicker(selection: .constant(Date()), label: { Text("날짜") })
                Text("내 신용점수")
                    .asPointBorderText() //함수 호출방식2
                ColorPicker("컬러 설정", selection: .constant(.yellow))
                Text("진행 중인 이벤트")
            }
            Section("자산") {
                Text("내 자산")
                Text("송금")
                Text("투자 모아보기")
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    MenuView()
}

struct CardView: View {
    
    let image: String
    let text: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "star")
                .background(.red)
            Text(text)
                .background(.green)
                .underline()
                .strikethrough()
        }
        .padding()
        .background(.yellow)
    }
}

//ViewModifier Protocol를 채택해 Custom Modifier를 만들 수 있다.
struct PointBorderText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding(10)
            .foregroundStyle(.white)
            .background(.purple)
            .clipShape(.capsule) //순서 중요
    }
}


//Modifier method도 추상화하여 Custom Modifier를 사용하고 싶은 경우, extension을 통해 custom function 설정
extension View {
    func asPointBorderText() -> some View {
        modifier(PointBorderText())
    }
}


