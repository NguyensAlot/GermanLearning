function Card(front, back)
{
  this.frontVal = front;
  this.backVal = back;
  
  this.display = function(side)
  {
    if( side === 0 ) return this.frontVal;
    else return this.backVal;
  };
}
        
// class to handle flashcards
var flashcardHandler = 
{
  // set containing all flashcards
  flashCardSet: [],
  // current card index in set
  cardIndex: 0,
  // object that will contain flashcard text
  cardButton: document.getElementById("cardButton"),
  // flashcard text
  cardText: document.getElementById("cardText"),
  // index of current card in set, for display
  cardPosition: document.getElementById("positionIndex"),
  // front or back side of flashcard
  cardSide: 0,
  
  // new card
  cardAdd: function(setAsJSON)
  {
    var parsedJSON = JSON.parse(setAsJSON);
    for (var i = 0; i < parsedJSON.length; i++)
    {
      this.flashCardSet.push(new Card(parsedJSON[i].word, parsedJSON[i].definition));
    }
    this.cardUpdate();
  },
  
  // updates card count and display card depending on side
  cardUpdate: function()
  {
    var curCard = this.flashCardSet[ this.cardIndex ];
    this.cardText.innerHTML = curCard.display( this.cardSide );
    this.cardPosition.innerHTML = (this.cardIndex + 1) + "/" + this.flashCardSet.length;
  },
  
  // changing sides
  cardFlip: function()
  {
    this.cardSide = (this.cardSide + 1) % 2;
  },
  
  // get next or previous card
  cardMove: function(moveBy)
  {
    this.cardIndex += moveBy;
    if( this.cardIndex < 0 )
    {
      this.cardIndex += this.flashCardSet.length;
    }
    this.cardIndex = this.cardIndex % this.flashCardSet.length;
    this.cardSide = 0;// Set back to front
    this.cardUpdate();
  },
  
  // sequence of actions: flip then display
  cardTap: function()
  {
    this.cardFlip();
    this.cardUpdate();// Display card
  },
};
