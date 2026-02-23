# hello

This vignette briefly shows an example of how the dummy package hello
and its function
[`hello()`](https://wolfmissotten.github.io/Repo_package_hello/reference/hello.md)
can be used in a workflow.

## Setup

Load packages:

``` r
library(hello)
```

## Hello function

You can use the function
[`hello()`](https://wolfmissotten.github.io/Repo_package_hello/reference/hello.md)
to add the word *Hello* in front of a string. For example, for the word
*world*:

``` r
string <- 'world'

example <- hello(word = string)

print(example)
#> [1] "Hello world"
```

This gives the output `Hello world`
