# running a javascript notebook

like ipython, but it runs javascript!

steps:

- run "make install"
- run "make serve" to start the server

you can do some more around configuration to set the ipython notebook directory
to something with your `node_modules` folder (so the dependencies load
correctly...) right now this is hard coded to my folder.

## Async

Put this at the top of the notebook

```javascript
$$async$$ = true;
```

Then stop execution by calling `$$done$$()`. Example:

```javascript
$$async$$ = true;
setTimeout(function() {
    $$done$$();
}, 1);
