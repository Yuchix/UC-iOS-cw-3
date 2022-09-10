//
//  ContentView.swift
//  CW3
//
//  Created by Bo3lwah on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var degree = ""
    @State var result = ""
    var body: some View {
        
    ZStack {
    Color.cyan
            .ignoresSafeArea()
        VStack {
            Text("حاسبة الدرجات")
                .font(.largeTitle)
                .foregroundColor(.white)
            Spacer()

            TextField("ادخل بياناتك",text:$degree)
                .frame(width: 200, height: 30)
                .background(Color.white)
                .cornerRadius(20)
                .multilineTextAlignment(.center)
                .padding()

            Image("calculator")
                
                .scaledToFit()
            Text("احسب درجتي")
                .font(.largeTitle)
                .frame(width: 200)
                .background(Color.yellow)
                .cornerRadius(20)
                .onTapGesture {
                    let d = Int(degree) ?? 0
                    if d>=90{
                        result="امتياز"
                    }else if d<90 && d>=80{  result="جيد جدا"
                    }
                    else if d<80 && d>=70{
                        result="جيد"
                    }
                        else if d<70 && d>=60{
                        result="مقبول"}
                    else if d<60 {
                        result="راسب"
                    }
                    }
                
                .padding()
            Text(result)
                .font(.largeTitle)
Spacer()
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
