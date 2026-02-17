# Detects language

'hello_detect_language()' detects the language of basic greetings in
English, French, Spanish, German and Italian

## Usage

``` r
hello_detect_language(greeting)
```

## Arguments

- greeting:

  Input is a character vector

## Value

character vector

## Examples

``` r
hello_detect_language('bonjour')
#> [1] "French"
hello_detect_language('hi')
#> [1] "English"
```
