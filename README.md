"Deeply unattractive out of the box? Yes. Easy to customize? I hope so."

So says the guy who I forked this repo from. Joke's on him, I think raw html looks good. All posts below are from him, I will delete them some time after they are no longer useful.

Look into https://gwern.net/sidenote#tufte-css 


# pandoc-blog

This is a *very* basic Pandoc static site generator.

I've avoided writing CSS beyond some very basic readability improvements/demonstrating that CSS can be added. The goal here is just to populate well-structured HTML documents and a generated JSON feed. [View a demo site.](http://lukasschwab.me/pandoc-blog/index.html)




A general rule of thumb: changes to the HTML are predictable; changes to pre-`pandoc` Markdown are unpredictable. Markdown intermediates (like `make_index.py` uses for the time being) are antipatterns.

+ Want to change how posts are represented in the index?<br>Modify `make_index.py`.

+ Want to add static elements, e.g. a section with "about me" info or social links?<br>Modify `templates/index.html` to only change the index.<br>Modify `templates/post.html` to only change the post pages.

+ Want to change how the index is styled?<br>Modify `styles/index.css`.

+ Want to change how the whole generated site is styled?<br>Modify `styles/common.css`.

### Fenced `div`s

`pandoc-blog` converts Markdown to HTML with [`pandoc`'s `fenced_divs` extension](https://pandoc.org/MANUAL.html#extension-fenced_divs) enabled. You can use this to define a `div`––complete with HTML attributes––in your markup:

```markdown
This text is outside of the fenced `div`.

::: {.addendum date="Oct. 12, 2020"}

This text is in a div with class `addendum` and attribute `date="Oct. 12, 2020"`.

:::

This text is outside of the fenced `div`.
```

You can modify [styles/common.css](styles/common.css) to apply styles to those fenced `div`s and their children:

```css
/* Style addenda. */
div.addendum {
  border: 1px solid grey;
  padding: 0 1em;
}

/* Include `date` attribute above addenda. */
div.addendum::before {
  display: block;
  text-align: center;
  color: grey;
  width: 100%;
  margin-top: 1em;
  content: "Addendum " attr(data-date);
}
```

## To do

+ `make_index.py` should be extended to read a greater variety of pandoc-supported YAML frontmatter and read full-blog metadata defined in some root YAML file.

+ Consider rolling table styles and utility classes into this repo.
