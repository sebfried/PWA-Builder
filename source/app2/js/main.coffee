window.onload = ->
    'use strict'
    if 'serviceWorker' of navigator
        navigator.serviceWorker.register('./sw.js').then((registration) ->
            console.log 'Service Worker Registered', registration
            return
        ).catch (err) ->
            console.log 'Service Worker Failed to Register', err
            return
    console.log('Local Storage Test in app2:')
    localStorage.setItem('app2', 'app2 storage works!')
    app2value = localStorage.getItem('app2')
    console.log(app2value)
    burgerValueApp2 = localStorage.getItem('burger')
    console.log('value from burger-page: ' + burgerValueApp2)