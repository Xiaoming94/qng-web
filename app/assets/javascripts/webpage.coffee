# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.onload = ->
  oWrap = document.getElementById('wrap')
  oContent = document.getElementById('content')
  oImg = oContent.getElementsByTagName('a')
  oFocus = document.getElementById('focus')
  oItem = oFocus.getElementsByTagName('a')
  autoPlay = ->
    if numIndex == oItem.length - 1
      numIndex = 0
    else
      numIndex += 1
    oItem[numIndex].onmouseover()
    return
  i = 0
  while i < oItem.length
    oItem[i].title = i
    #alert(oImg.length);
    oItem[i].onmouseover = ->
      k = 0
      while k < oItem.length
        oItem[k].className = ''
        oImg[k].style.display = 'none'
        k++
      @className = 'active'
      oImg[@title].style.display = 'block'
      return
    i++
  numIndex = 0
  timer = setInterval(autoPlay, 2000)
  oWrap.onmouseover = ->
    clearInterval timer
    return
  oWrap.onmouseout = ->
    timer = setInterval(autoPlay, 1500)
    return
  return
