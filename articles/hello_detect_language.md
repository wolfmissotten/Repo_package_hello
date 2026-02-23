# hello_detect_language

This vignette briefly shows an example of how the dummy package hello
and its function
[`hello_detect_language()`](https://wolfmissotten.github.io/Repo_package_hello/reference/hello_detect_language.md)
can be used in a workflow.

## Setup

Load packages:

``` r
library(hello)
```

## Hello_detect_language function

You can use the function
[`hello_detect_language()`](https://wolfmissotten.github.io/Repo_package_hello/reference/hello_detect_language.md)
to detect the language of basic greetings in English, French, Spanish,
German and Italian

``` r
string <- 'bonjour'

example <- hello_detect_language(greeting = string)

print(example)
#> [1] "French"
```
