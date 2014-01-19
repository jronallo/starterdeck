# starterdeck

Starterdeck is a repository for cloning to quickly getting started creating a presentation slideshow.

## About

You can read more about this approach to creating slideshows here:

<http://jronallo.github.io/blog/html-and-pdf-slideshows-with-dzslides/>

## Getting started

You could fork the repository. But often I have a slide deck which is part of a larger repository, so I would rather just do an "export" into a new directory. So just clone this repository and then from within the cloned repository do something like this:

```
$ git archive master | tar -x -C ~/project/new_presentation
```

## Running

`bundle exec guard`

Open presentation.html in a browser window with the livereload plugin.

Edit presentation.md.

Publish your slideshow as a single page including all images.

## Customization

Edit assets/_custom.css.scss using the SCSS syntax.

Edit assets/custom.js to add custom JavaScript.

## Sass

This project uses Sass and provides some mixins for some common slide styles. You can see them in assets/_starterdeck.css.scss


