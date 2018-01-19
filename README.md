wintersmith-crass
=====================

A [crass](https://github.com/mattbasta/crass) plugin for [Wintersmith](https://github.com/jnordberg/wintersmith)

Minify your CSS using the excellent crass minifier.


## Install:

Install globally and add <code>wintersmith-crass</code> to your wintersmith config.json.
```
$ npm install wintersmith-crass -g
```

Or Locally,
```
$ npm install wintersmith-crass
```
Then add add to your <code>./node_modules/wintersmith-crass/</code> to your wintersmith config.json like so:

```
{
    "locals": {
        ...
    }
    "plugins": [
       "./node_modules/wintersmith-crass/"
    ]
}
```
