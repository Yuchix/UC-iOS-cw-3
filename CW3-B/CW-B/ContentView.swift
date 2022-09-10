//
//  ContentView.swift
//  CW-B
//
//  Created by Bo3lwah on 10/09/2022.
//

import SwiftUI
struct ContentView: View {
@State var counter1=0
@State var counter2=0
@State var counter3=0
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            VStack {
        Spacer()
         HStack {
            Text("استغفر الله العظيم")
                 .padding()
                 .font(.title)
                 .frame(width: 240.0, height: 10.0)
             
            Text("\(counter1)")
                 .foregroundColor((Color.white))
                 .frame(width: 90, height: 90)
                 .background(.cyan)
                 .clipShape(Circle())
                 .onTapGesture {
                     counter1=counter1+1
                 }.font(.title)
            }
    Spacer()
                HStack {
                    Text("سبحان الله وبحمده")
                        .lineLimit(nil)
                        .padding()
                        .font(.title)
                        .frame(width: 240.0, height: 10.0)
                   Text("\(counter2)")
                        .foregroundColor((Color.white))
                        .frame(width: 90, height: 90)
                        .background(.cyan)
                        .clipShape(Circle())
                        .onTapGesture {
                            counter2=counter2+1
                        }.font(.title)
                   }

                Spacer()
                HStack {
                   Text("سبحان الله العظيم")
                        .padding()
                        .font(.title)
                        .frame(width: 240.0, height: 10.0)
                   Text("\(counter3)")
                        .foregroundColor((Color.white))
                        .frame(width: 90, height: 90)
                        .background(.cyan)
                        .clipShape(Circle())
                        .onTapGesture {
                            counter3=counter3+1
                        }.font(.title)
                   }
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
