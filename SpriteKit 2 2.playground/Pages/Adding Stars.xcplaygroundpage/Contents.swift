//: # My God Its Full of Stars
//: There are lots of more accurate ways to build a star field, but let's do it with a single particle emitter. As usual we'll start with what we had on the [previous page](@previous)

import SpriteKit
import XCPlayground

let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)
var scene = SKScene(size: frame.size)

let nyanCat = SKSpriteNode(imageNamed: "Nyancat")
nyanCat.position = midPoint
nyanCat.setScale(8.0)
nyanCat.run(SKAction.repeatForever(SKAction.sequence([
    SKAction.moveBy(x: 0, y: 10, duration: 0.15),
    SKAction.moveBy(x: 0, y: -10, duration: 0.15)
    ])))
nyanCat.zPosition = 10

scene.addChild(nyanCat)

//: ## Adding the Star Emitter
//: Emitters are great for simple effects like this.. we will create one that occasionally spews out a star with a random speed, alpha, and y position
let emitter = SKEmitterNode()
emitter.particleLifetime = 40
emitter.particleBlendMode = SKBlendMode.alpha
emitter.particleBirthRate = 3
emitter.particleSize = CGSize(width: 4,height: 4)
emitter.particleColor = SKColor(red: 100, green: 100, blue: 255, alpha: 1)
emitter.position = CGPoint(x:frame.size.width,y:midPoint.y)
emitter.particleSpeed = 16
emitter.particleSpeedRange = 100
emitter.particlePositionRange = CGVector(dx: 0, dy: frame.size.height)
emitter.emissionAngle = 3.14
emitter.advanceSimulationTime(40)
emitter.particleAlpha = 0.5
emitter.particleAlphaRange = 0.5
scene.addChild(emitter)

//: And show the scene in the liveView

let view = SKView(frame: frame)
view.presentScene(scene)
XCPlaygroundPage.currentPage.liveView = view

//: All good, but it's just not there yet... [we should add a rainbow trail](@next)
