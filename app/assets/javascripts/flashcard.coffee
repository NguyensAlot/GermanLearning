# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# class to handle flashcards
flashcardHandler = 
  flashCardSet: []
  cardIndex: 0
  cardButton: document.getElementById('cardButton')
  cardText: document.getElementById('cardText')
  cardPosition: document.getElementById('positionIndex')
  cardSide: 0
  cardAdd: (back, front) ->
    @flashCardSet.push new Card(back, front)
    return
  cardUpdate: ->
    curCard = @flashCardSet[@cardIndex]
    @cardText.innerHTML = curCard.display(@cardSide)
    @cardPosition.innerHTML = @cardIndex + 1 + '/' + @flashCardSet.length
    return
  cardFlip: ->
    @cardSide = (@cardSide + 1) % 2
    return
  cardMove: (moveBy) ->
    @cardIndex += moveBy
    if @cardIndex < 0
      @cardIndex += @flashCardSet.length
    @cardIndex = @cardIndex % @flashCardSet.length
    @cardSide = 0
    # Set back to front
    @cardUpdate()
    return
  cardTap: ->
    @cardFlip()
    @cardUpdate()
    # Display card
    return
    
Card = (front, back) ->
  @frontVal = front
  @backVal = back

  @display = (side) ->
    if side == 0
      @frontVal
    else
      @backVal

  return

setLoad = ->
  alert 'hello'
  flashcardHandler.cardUpdate()
  alert 'bye'
  return