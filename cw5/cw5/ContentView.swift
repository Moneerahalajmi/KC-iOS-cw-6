//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        VStack{
            RowView(Mycounter: $counter[0], Title: "استغفرالله")
            RowView(Mycounter: $counter[1], Title: "الحمدالله")
            RowView(Mycounter: $counter[2], Title: "سبحان الله")
           
        }
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RowView: View {
    @Binding var Mycounter: Int
    @State var Title: String
    var body: some View {
        HStack{
            Text(Title).font(.title)
            Spacer()
            Text("\(Mycounter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    Mycounter = Mycounter + 1
                }
        }.padding()
    }
}
