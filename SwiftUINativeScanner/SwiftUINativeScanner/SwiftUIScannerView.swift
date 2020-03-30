//
//  SwiftUIScannerView.swift
//  SwiftUINativeScanner
//
//  Created by Rafael Adolfo on 30/03/20.
//  Copyright © 2020 Rafael Adolfo. All rights reserved.
//

import SwiftUI

struct SwiftUIScannerView: UIViewControllerRepresentable {
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> ScannerViewController {
        let vc = ScannerViewController()
        vc.delegate = context.coordinator
        return vc
    }
    
    func updateUIViewController(_ vc: ScannerViewController, context: Context) {
    }

    class Coordinator: NSObject, QRCodeScannerDelegate {
        
        func foundCode(_ code: String) {
            print(code)
        }
        
        var parent: SwiftUIScannerView
        
        init(_ parent: SwiftUIScannerView) {
            self.parent = parent
        }
    }
}

#if DEBUG
struct SwiftUIScannerView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIScannerView()
    }
}
#endif

