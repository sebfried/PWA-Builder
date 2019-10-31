window.onload = ->
  'use strict'
  if 'serviceWorker' of navigator
    navigator.serviceWorker.register './sw.js'
  return
