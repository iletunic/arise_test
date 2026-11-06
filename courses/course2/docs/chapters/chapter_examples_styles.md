## This is example of how to make a box for Examples
!!! info "Example"
    This box contains important information

## This is how to make a box for exercises, showing also a solution
!!! example "Exercise"
    This is a question

    ??? success "Solution"
        this is the solution to the question

## This is how to add an image from an online resource
If you want to add an image, the best way would be to use html, e.g:

```html
<figure>
<img src="https://elixir-europe.org/sites/default/files/ebif_news_release_image_news_landingpageimage_.png" width="600" alt="Image on elixir landing page"/>
<figcaption> Elixir image </figcaption>
</figure>
```

## This is how to add an image which needs to be uploaded to the repository (not available online)
If you want to use local images, add them to docs/assets/images and refer to them in the html as a relative path, e.g.:

```html
<figure>
<img src="../../assets/images/elixir_image.png" width="600" alt="Image on elixir landing page"/>
<figcaption> Elixir image </figcaption>
</figure>
```
## This is how to add references
In order to add a reference, add it in bibtex format to references.bib located in the main directory, cite it in your markdown document with `` and cite 1 like this:


## this is how to add a table
or use https://www.tablesgenerator.com/markdown_tables
---
| start     | end       | topic     |
|-------    |-------    |---------  |
| 10:00     | 10:30     | coffee!   |
| 12:00     | 13:00     | lunch!    |
---

## this is how to add a reference
