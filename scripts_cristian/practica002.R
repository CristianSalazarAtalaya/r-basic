---
title: "Binomio de Newton"
author: "Cristian"
date: "1/9/2020"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Producto Notable

$$(a+b)^2 = a^2 + 2ab +b^2$$

# Funcion con R

```{r}
binomiodeNewton2 = function(a,b) { 
  a^2 + 2*a*b +b^2
  }

binomiodeNewton2(1,2)

```




# Binomio de Newton

$$(a+b)^n = \sum{k=0} {n\choose k}\cdot a^{n-k}\cdot b^k = {n\choose 0}*a^n-k*b^k ... {n\choose n}*a^0$$
  
  
```{r}

binomiodeNewton = function(a,b,n){
  cumsum(choose(n,(0:n))* a^{n-(0:n)}*b^(0:n))
  
}
binomiodeNewton(1,2,2)

```
 
















