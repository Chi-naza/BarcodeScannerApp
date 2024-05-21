//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Chinaza Ugwuoke on 5/11/24.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
}
