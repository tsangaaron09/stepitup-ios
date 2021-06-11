//
//  exerciseButton.swift
//  stepitup
//
//  Created by Tia Pham on 5/5/21.
//

import SwiftUI

struct ExerciseButton: View {
    @State var flipped: Bool = false;
    @State var animated: Bool = false;
    var image: String;
    var exerciseCategory: String;

    
    var body: some View {
        ZStack {
            FrontExerciseButton(image: image, exerciseCategory: exerciseCategory).opacity(flipped ? 0.0 : 1.0)
            BackExerciseButton(exerciseCategory: exerciseCategory).opacity(flipped ? 1.0 : 0.0)
            
        }
        .modifier(FlipEffect(flipped: $flipped, angle: animated ? 180: 0, axis: (x: 0, y: -1)))
        .onTapGesture {
            withAnimation(Animation.linear(duration: 0.4)) {
                self.animated.toggle()
            }
        }
    }
}

struct FlipEffect: GeometryEffect {

      var animatableData: Double {
            get { angle }
            set { angle = newValue }
      }

      @Binding var flipped: Bool
      var angle: Double
      let axis: (x: CGFloat, y: CGFloat)

      func effectValue(size: CGSize) -> ProjectionTransform {

            DispatchQueue.main.async {
                  self.flipped = self.angle >= 90 && self.angle < 270
            }

            let tweakedAngle = flipped ? -180 + angle : angle
            let a = CGFloat(Angle(degrees: tweakedAngle).radians)

            var transformed = CATransform3DIdentity;
            transformed.m34 = -1/max(size.width, size.height)

            transformed = CATransform3DRotate(transformed, a, axis.x, axis.y, 0)
            transformed = CATransform3DTranslate(transformed, -size.width/2.0, -size.height/2.0, 0)

            let affineTransform = ProjectionTransform(CGAffineTransform(translationX: size.width/2.0, y: size.height / 2.0))

            return ProjectionTransform(transformed).concatenating(affineTransform)
      }
}

struct ExerciseButton_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseButton(image: "assistedstretching", exerciseCategory: "Assisted Stretching!")
    }
}
