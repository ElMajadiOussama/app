//
//  ContentView.swift
//  App
//
//  Created by Oussama Elmajadi on 01/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showOptions = false
    
    var body: some View {
        TabView{
            NavigationView{
                Homeview ()
                    .toolbar {
                        ToolbarItemGroup(placement: .navigationBarLeading) {
                            Button{
                            } label: {
                                Image(systemName: "camera")
                            }
                        }
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
                            Button(action: {
                                //action
                            }){
                                Image(systemName: "paperplane")
                            }
                        }
                    }
                    
            }
        }
    }
    
    
    struct Homeview: View {
        var body: some View {
            Text("Home")
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
