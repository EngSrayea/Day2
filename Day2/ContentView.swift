//
//  ContentView.swift
//  Day2
//
//  Created by Eng. Norii on 5/4/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var counters: [Int] = [0,0,0]
    var Athkar: [String] = ["استغفرالله","سبحان الله وبحمده","الحمدلله"]
    
    var body: some View {
        
        VStack(alignment: .trailing){
            ThekrButton(counter: $counters[0], Thekr: Athkar[0])
            ThekrButton(counter: $counters[1], Thekr: Athkar[1])
            ThekrButton(counter: $counters[2], Thekr: Athkar[2])
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ThekrButton: View {
    @Binding var counter : Int
    var Thekr : String = " "
    var body: some View {
        HStack{
            
            Text(Thekr).font(.largeTitle)
            Button(action: {
                self.counter = self.counter + 1
            }) {
                Text("\(counter)    ")
                    .font(.largeTitle)
            }
            .frame(width: 100, height: 100, alignment: .center)
            .foregroundColor(.white)
            .background(Color.gray)
            .clipShape(Circle())
            .padding()
        }
    }
}
