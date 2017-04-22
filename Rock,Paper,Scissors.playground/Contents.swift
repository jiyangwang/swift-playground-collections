//: Playground - noun: a place where people can play
import CoreGraphics
import PlaygroundSupport

/*:
 # Rock, Paper, Scissors (Roshambo!)
 Rock, Paper, Scissors is a game for two players—you and a robot opponent. Each player chooses an action that represents an object (rock ✊, paper 🖐, or scissors✌️), and each action beats one of the other actions:
 * ✊ beats ✌️ (rock crushes scissors)
 * ✌️ beats 🖐 (scissors cut paper)
 * 🖐 beats ✊ (paper covers rock)
 
 The robot opponent chooses actions randomly.
 
 If both players choose the same action, that round ends in a tie. The first player to win three rounds wins the game.
 
 When you’re ready, move on to the next page to personalize your game.
 */
//#-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(currentmodule, show)
//#-code-completion(literal, show, array, boolean, color, integer, string)
//#-code-completion(bookauxiliarymodule, show)
//#-code-completion(identifier, show, if, for, while, func, var, let, ., =, (, ))
//#-code-completion(identifier, hide, GameViewController, viewController, GameResult, Game, Action, canPlay, Play())


let viewController = GameViewController.makeFromStoryboard()
PlaygroundPage.current.liveView = viewController
//#-end-hidden-code
let game = Game()
//#-editable-code
game.loadDefaultSettings()
game.play()
//#-end-editable-code
//#-hidden-code
// Actions for the game.
let rock = game.addAction("🌴")
let tiger = game.addAction("🐯")
let chicken = game.addAction("🐤")
let sworms = game.addAction("🐛")
// Rules for the actions.
rock.beats(tiger)
tiger.beats(chicken)
chicken.beats(sworms)
sworms.beats(rock)



// Opponents for the game.
game.addOpponent("🤖", color: #colorLiteral(red: 0.8, green: 0, blue: 0.3882352941, alpha: 1))

// Configurations for the game.
game.roundsToWin = 3
game.prize = "🏆"

// Colors for the game.
game.myColor = #colorLiteral(red: 0, green: 0.6392156863, blue: 0.8509803922, alpha: 1)
game.outerRingColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
game.innerCircleColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
game.mainButtonColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
game.changeActionButtonsColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
game.backgroundColors = [#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)]

if game.canPlay && game.useDefaults {
    viewController.game = game
}
//#-end-hidden-code
