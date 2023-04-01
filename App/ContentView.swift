//
//  ContentView.swift
//  App
//
//  Created by Oussama Elmajadi on 01/04/2023. b
//

import SwiftUI

struct ContentView: View {
    @State private var showOptions = false
    
    var body: some View {
        TabView{
            NavigationView{
                Homeview ()
                    .navigationBarTitle("My app", displayMode: .inline)
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
            .tabItem{
            Image(systemName: "house.fill")
                Text("Home")
            }
        }
    }
    
    
    struct Homeview: View {
        var body: some View {
            ScrollView { // Création d'une ScrollView
                LazyVStack(alignment: .leading, spacing: 0) { //Organise une liste d'éléments verticalement et ne charge que les éléments qui sont visibles à l'écran pour une meilleure performance.
                    ScrollView(.horizontal, showsIndicators: false) { //Crée une vue scrollable pour afficher des éléments au-delà de la taille de l'écran.
                        LazyHStack(spacing: 20) { //Conteneur qui organise les vues horizontalement en chargeant uniquement celles qui sont nécessaires à l'affichage
                            ForEach(Author.all) { author in // Itération sur tous les éléments d'un tableau Author.all
                                VStack { // Création d'une VStack, organise ses sous-vues en une pile verticale.
                                    Image(author.photoName)
                                        .resizable() // Rendre l'image redimensionnable
                                        .scaledToFit() // Redimensionner l'image pour tenir dans son conteneur
                                        .clipShape(Circle()) // Clipper l'image en forme de cercle
                                        .frame(width: 70) // Définir une largeur pour l'image
                                        .overlay( // Ajout d'un calque sur l'image
                                            Circle().stroke(Color.red, // Ajout d'un bord rouge en forme de cercle
                                                            style: StrokeStyle(lineWidth: 2))
                                        )
                                    Text(author.name) //
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
