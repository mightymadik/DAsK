//
//  FoundationExtensions.swift
//  FinalProject
//
//  Created by Yernur Makenov on 06.12.2022.
//

import UIKit

extension Int{
  func appendZeros() -> String {
      if (self < 10) {
          return "0\(self)"
      } else {
          return "\(self)"
      }
  }
  
  func degreeToRadians() -> CGFloat {
     return  (CGFloat(self) * .pi) / 180
  }
}
