width = window.innerWidth
height = window.innerHeight
bubbleArr = []
iniPosX = width / 2
iniPosY = height / 2

# Kinetic variables
stage = new Kinetic.Stage({
  container: "container"
  width: width
  height: height
})

layer = new Kinetic.Layer();

addBubble = (title, size, color) ->
  bubbleArr.push(new Bubble(title, size, color))

class Bubble
  constructor: (@title, @size, @color) ->
    @speed = 0
    @acceleration = 0
    @drawing = new Kinetic.Circle({
      x: iniPosX
      y: iniPosY
      radius: @size
      fill: @color
      draggable: true
      opacity: 0.5
    })
    @anim = new Kinetic.Animation()
  setAcceleration: (@acceleration) ->
  setSpeed: (@speed) ->

addBubble("Test1", 50, "#FF0000")
addBubble("Test2", 60, "#00FF00")
addBubble("Test3", 70, "#0000FF")

bubbleArr.map (bubble) ->
  layer.add(bubble.drawing)

stage.add(layer)