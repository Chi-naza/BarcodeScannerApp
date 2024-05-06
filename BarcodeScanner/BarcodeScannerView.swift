//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Chinaza Ugwuoke on 5/6/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Text("Hello, world!")
            }.navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
