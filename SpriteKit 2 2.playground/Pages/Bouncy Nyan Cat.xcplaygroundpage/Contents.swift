//: # NyanCats Bounce when They are Happy
//: Let's take our code from the [previous page](@previous) as a starting point to build from
import SpriteKit
import XCPlayground

let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)

var scene = SKScene(size: frame.size)

let nyanCat = SKSpriteNode(imageNamed: "Nyancat")
nyanCat.position = midPoint
nyanCat.setScale(8.0)

//: ## Insert Happiness to Play Again
//: To show how happy Nyan Cat is, let's are run an action that repeats a sequence of Nyan Cat going up and down for ever
nyanCat.run(SKAction.repeatForever(SKAction.sequence([
    SKAction.moveBy(x: 0, y: 10, duration: 0.15),
    SKAction.moveBy(x: 0, y: -10, duration: 0.15)
    ])))
nyanCat.zPosition = 10

scene.addChild(nyanCat)

//: And show the scene in the liveView

let view = SKView(frame: frame)
view.presentScene(scene)
XCPlaygroundPage.currentPage.liveView = view

//: Well that's great... But I think Nyan Cat is a space cat so let's [add stars on the next page](@next)
