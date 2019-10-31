// Generated by CoffeeScript 2.4.1
(function() {
  /* Hello! */
  var cacheName, filesToCache;

  cacheName = 'hello-pwa';

  filesToCache = ['/source/index.html', '/source/img'];

  /* Start the service worker and cache all of the app's content */
  self.addEventListener('install', function(e) {
    e.waitUntil(caches.open(cacheName).then(function(cache) {
      return cache.addAll(filesToCache);
    }));
  });

  /* Serve cached content when offline */
  self.addEventListener('fetch', function(e) {
    e.respondWith(caches.match(e.request).then(function(response) {
      return response || fetch(e.request);
    }));
  });

}).call(this);
