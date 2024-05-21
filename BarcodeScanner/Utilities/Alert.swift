//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Chinaza Ugwuoke on 5/11/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext{
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with camera. We are unable to capture input", dismissButton: .default(Text("OK")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scanned Type", message: "The value scanned is not valid. This scanner accomodates ean-8 and ean-13", dismissButton:  .default(Text("OK")))
}




