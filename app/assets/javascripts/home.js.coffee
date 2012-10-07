# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery(document).ready(->

  jQuery("#ticker").ticker(->
    cursorList:  " ",
    rate:        10,
    delay:       4000
  ).trigger("play").trigger("stop")

  jQuery(".stop").click(->
      jQuery("#ticker").trigger("stop");
      return false;
  )
  
  jQuery(".play").click(->
      jQuery("#ticker").trigger("play");
      return false;
  )
  
  jQuery(".speedup").click(->
      jQuery("#ticker")
      .trigger({
          type: "control",
          item: 0,
          rate: 10,
          delay: 4000
      })
      return false
  )
  
  jQuery(".slowdown").click(->
      jQuery("#ticker")
      .trigger({
          type: "control",
          item: 0,
          rate: 90,
          delay: 8000
      })
      return false
  )
  
  jQuery(".next").live("click", ->
      jQuery("#ticker")
      .trigger({type: "play"})
      .trigger({type: "stop"})
      return false
  )

  jQuery(".style").click(->
      jQuery("#ticker")
      .trigger({
          type: "control",
          cursor: jQuery("#ticker").data("ticker").cursor.css({width: "4em", background: "#efefef", position: "relative", top: "1em", left: "-1em"})
      })
      return false
  )
	
)

