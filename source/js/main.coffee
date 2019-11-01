window.onload = ->
    'use strict'
    if 'serviceWorker' of navigator
        navigator.serviceWorker.register('./sw.js').then((registration) ->
            console.log 'Service Worker Registered', registration
            return
        ).catch (err) ->
            console.log 'Service Worker Failed to Register', err
            return
    console.log('Local Storage Test in burger:')
    localStorage.setItem('burger', 'burger storage works!')
    burgerValue = localStorage.getItem('burger')
    console.log('burger: ' + burgerValue)
    app2valueBurger = localStorage.getItem('app2')
    console.log('storage from app2: ' + app2valueBurger)