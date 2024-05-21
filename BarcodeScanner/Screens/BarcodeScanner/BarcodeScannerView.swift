//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Chinaza Ugwuoke on 5/6/24.
//

import SwiftUI  

struct BarcodeScannerView: View {
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.scannedCode.isEmpty ? .red : .green)
                    .padding()
                
            }
            .navigationTitle("Barcode Scanner App")
            .alert(item: $viewModel.alertItem){ alertItem in
                    Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
                }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
