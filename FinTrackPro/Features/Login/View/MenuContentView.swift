//
//  MenuContentView.swift
//  FinTrackPro
//
//  Created by Jesus Perez Mojica on 27/09/24.
//

import SwiftUI

struct MenuContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Consejos Financieros").padding()
            Text("Blog").padding()
            Text("Promociones").padding()
            Text("Ayuda").padding()
        }
        .background(Color(.systemBackground))
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .shadow(radius: 5)
    }
}
