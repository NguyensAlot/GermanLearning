<script>
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

  var flashcardHandler =
  {
    flashcardSet: [],
  	fcContainer: document.getElementById("savedCards"),
    cardIndex: 1,

    cardBtn: function()
    {
      var displaySet = document.getElementById("displaySet");
      for (var i = 0; i < this.flashcardSet.length; i++)
      {
        displaySet.innerHTML = displaySet.innerHTML + '<span id="listCardFront' + this.cardIndex + '">'+i+this.flashcardSet[i].display(0)+'</span> \
                                    <span id="listCardBack'+ this.cardIndex +'">' + this.flashcardSet[i].display(1) + '</span><hr>';
                                    
      }
    },

    cardAdd: function()
    {
      // get the 2 words
   	  var front = document.getElementById("frontOfCard");
      var back = document.getElementById("backOfCard");
      // store in set
      this.flashcardSet.push(new Card(front.value, back.value));
       	  
      //listElement.appendChild(labelElement);
      this.fcContainer.innerHTML = this.fcContainer.innerHTML + '<li id="cardNumber'+this.cardIndex+'"> \
                                        <label>' + this.cardIndex + ' </label> \
                                        <span id="frontOfCard' + this.cardIndex + '">'+this.flashcardSet[this.cardIndex-1].display(0)+'</span> \
                                        <span id="backOfCard'+ this.cardIndex +'">' + this.flashcardSet[this.cardIndex-1].display(1) + '</span> \
                                        <span class="glyphicon glyphicon-remove" aria-hidden="true" onclick="flashcardHandler.cardRemove('+this.cardIndex+')"></span> \
                                      </li><hr>';
      //document.getElementById("savedCards").innerHTML += '<p>'+this.someSet[this.cardIndex].display(0)+'</p>';
      window.scrollTo(0, document.body.scrollHeight);
      this.cardIndex += 1;
    },
     
    cardRemove: function(index)
    {
      var child = document.getElementById("cardNumber" + index);
      child.remove();
      var setIndex = index-2;
      this.flashcardSet.splice(setIndex, 1);
      //flashcardSet.remove()
    },
    
    cardStoreSet: function()
    {
    
    }
     
  }
</script>