//
//  Background.swift
//  SideMenuV2
//
//  Created by Ivan Voznyi on 01.02.2024.
//

import SwiftUI

struct MyBackground: Shape {
  func path(in rect: CGRect) -> Path {
      var path = Path()
      
      let height = 180.0
      let rightRadius = 80.0
      let leftRadius = 100.0
      let rightRadiusOffset = 1.0
      let leftRadiusOffset = 0.0
      
      let rightArcCenter = CGPoint(x: (rect.width - rightRadius) + rightRadiusOffset, y: height - rightRadius)
      let leftArcCenter = CGPoint(x: leftRadius - leftRadiusOffset, y: height + leftRadius)
      
      path.move(to: .zero)
      path.addLine(to: CGPoint(x: rect.width, y: 0))
      path.addLine(to: CGPoint(x: rect.width, y: height-rightRadius))
      
      path.addArc(center: rightArcCenter,
                  radius: rightRadius,
                  startAngle: .degrees(-90),
                  endAngle: .degrees(90),
                  clockwise: false)
      
      path.addArc(center: leftArcCenter,
                  radius: leftRadius,
                  startAngle: .degrees(-90),
                  endAngle: .degrees(180),
                  clockwise: true)

      path.addLine(to: .zero)
      
    return path
  }
}
