
#Para escribir a mano
#scan()

x=c(1,2,3)

fix(x)
#Repetir
rep(5,6)


rep(1994,10)

vec = c(16,0,1,20,1,7,88,5,1,9)

fix(vec)

vec

?scan


#progresiones
#comienza termina y la progresion

seq(5,60,by = 2)


seq(100,5,-5)

seq(4,35,length.out = 7)


seq(4,length.out = 7,by = 3)


#Imprimir los numeros del 1 al 100

rep(1,10)

seq(1,20,by = 1)
seq(2,by = 2,length.out = 20)

#print()
print(seq(17,98,length.out = 30),4)
c(5:10, rep(pi,10),-7) -> x

c(0,x)

fix(x)

x+pi

x-pi


vec = c(1,2,3)

vec^2

2^vec

vec





duplica = function(x){
  x*2
}


sapply(vec, duplica)


cd = function(x) { summary(lm((1:4)~c(1:3,x)))$r.squared}


cd(5)



sapply(x, cd)


(1:10)^(1:10)


prod(2:5)
min(2:5)
max(2:5)
#media aritmetica
mean(2:5)
#diferencia entre eemtnos

dif(2:5)
#suma acumulada
cumsum(2:8)
#ordena
sort(10:6,decreasing = FALSE  )
#rev - revierte el roden
rev()
#dif ->diferencias

sort(10:6)

v = seq(2,50,by = 3)

v[ v> 10 & v < 20]


which(x >10)

x = seq(1,50,by = 3)


x
x[-1]

x[1:5]

x[seq(2,length(x),by = 2)]
x[seq(1,length(x),by = 2)]


x[(length(x)-3):length(x)]
x[x%%2==0]

#devuelve true o false
x>10
#with para posciones

x
x[which(x>4)]


which(x>2 & x<8)

which.min(x)

?which
#Me retorna la poscion de donde está el mas grande
which.max(x)
#Me retorna todo con el valor mayor
which(x==max(x))

x[x>50]

#Llos valors null no paarecen en la busqueda de vectores


x[3]

length(1:100)

x[60]=1

sum(x,na.rm = TRUE)


which(x==NA)
#VACIO

which(is.na(x))
#ERROR

mendia = mean(x[-which(is.na(x))])
mendia
x[is.na(x)] =mendia
x

cumsum(x[!is.na(x)])

na.omit(x)


x_clean = na.omit(x)

x_clean
attr(x_clean,"class")


nombres = c("Cristian", "alexander", "Juan", "Juan")

nombres


nombres.factor = factor(nombres)

nombres.factor

#Factores
gender = c("M","M","M","H","H")
gender.factor = factor(gender)

gender.factor

gender.fact2= as.factor(gender)

gender.fact3 = factor(gender,levels= c("M","H","B"))

gender.fact3


#Pader definir un dato y una equite significativa
gender.fact4 = factor(gender,levels=c("M","H","B"), labels=c("Mujer","Hombre","Hemafrodita"))


gender.fact4

levels(gender.factor)


levels(gender.fact4) = c("Femenino","Masculino","Hibrido")

gender.fact4
gender

#Factores ordenados
notas = c(1,2,2,1,3,2,4,2,1,3,4,2,1)

notas.factor = factor(notas, levels = c(1,2,3,4))

notas.factor
notas.factor = factor(notas,levels=c("c","b","a","d"))


notasOrder = ordered(notas,labels=c("c","n","a","d"))

notasOrder 



#Lista



milista = list(c("a","b"),c(4,1),c(TRUE,FALSE))

milista[[1:2]]

x = c(10,52,56,30,122,12)

l = list(nombre="Temperaturas", media= mean(x), data=x)

l

l$data

#Estructura
str(l)

reg <- lm(c(1,2,3,4)~c(1,2,3,6))

reg$coefficients

?lm

#Matrices

?matrix()

data = matrix(1:12,nrow = 4)
data


data2 = matrix(1:12,nrow = 4,byrow = T)
data2

#Da warwing pero lo hace

data3 = matrix(1:12,nrow = 5,byrow = T)
data3

data3 = matrix(2,nrow = 2,ncol = 6)
data3  


#Ejercicios


primer = matrix(2,nrow = 4,ncol = 4)
primer
  
  
segundo = matrix (1:12,nrow = 3,byrow = F)
segundo

#Agregando filas

data2

#Agergando filas y columnas
rbind(data2, c(9,9,9),c(9,9,9))

cbind(data2, c(1,2,3,4))

#Matriz diagonal
diag(c(1,2,3,4))
diag(5,nrow = 6)

#SubMatrices

data2[2,]
data2[2,2]

data2[c(1,2),1:2]

#propiedaes
nrow(data2)
dim(data2)
ncol(data2)

#Funciones de materices
data2
colSums(data2)
rowSums(data2)
colMeans(data2)
rowMeans(data2)

#Aplicar fuciones

?apply
?sapply

apply(data2,MARGIN = 1,FUN = function(x){x^2})

#operaciones con matrices
#t(matriz) #transpuesta
#+: sumar
#*: producto
#%*%:multiplicar


#%^%: elevar matrices áquete expm

#mtx.exp(matriz,n) Biodem
#Del paquete Biodem solo aproxma
data2
t(data2)

data2%*%t(data2)


M = matrix(1:9,nrow = 3)

M%^%2
mtx.exp(M,2)


#Ejericios




A = matrix(c(2,0,2, 1,2,3,0,1,3),nrow = 3,ncol = 3,byrow = T)
B = matrix(c(3,2,1,1,0,0,1,1,1),nrow = 3,ncol = 3,byrow = T)

A
B

R1= A%*%B
R1
R2= A%^%2
R3 = B%^%3

R2
R3

#Operaciones 2
#det(matrix) #determinate
#qr(matrix)$rank #rango
#solve(matrix) # calcualr la inversa de una matris caudrada
#solve(matrix,b) b son los teminos idnependientes
qr(A)$rank

solve(matrix(c(2,0,2, 1,2,3,0,1,3),nrow = 3,ncol = 3,byrow = T),c(1,2,3))

round(solve(A)%*%A,2)

#Valoers y vectores propios

#eigen(matriz)
eigen(A)$values





M = rbind(c(2,6,-8), c(0,6,-3),c(0,2,1))
P = eigen(M)$vector
D = diag(eigen(M)$values)


M==VPropio%*%diagolnal%*%solve(VPropio)
M

#Cread un vector llamado "Harry" formado por la sucesión de números 
#consecutivos entre el -10 y 27. Pedidle a R que os devuelva 
#el elemento de índice 7. Escribid el resultado.

Harry = -10:27
Harry[7]

#Dad el máximo de la sucesión (100*2^n -7*3^n) con n=0,...,200

n=0:200
vec = 100*2^n-7*3^n
vec

#Cread la sucesión de números consecutivos entre 0 y 40. 
#A continuación, cread el vector (3*5^n - 1) con n=0,...,40. 
#Ponedle como nombre x. Ahora, dad el subvector de los elementos
#que son estrictamente mayores que 3.5


n = 0:40
x = 3*5^n-1
which(x>3.5)

#Cread una función que os devuelva la parte real, 
#la imaginaria, el módulo, el argumento y el 
#conjugado de un número, mostrando solo 2 cifras significativas

num = 5-2i


imagin = function(x) {
  r = Re(x)
  i = Im(x)
  mod = Mod(x)
  conh = Conj(x)
  a=c(1,5,3)
  print(a,2)
}

imagin(num)

#Cread una función que resuelva ecuaciones de segundo grado 
#(de la forma Ax^2+Bx+C=0). No importa, por ahora,
#que tengáis en cuenta las que no tienen solución

func2 = function(a,b,c){
  
  
  c((-b + sqrt(b^2 - 4*a*c)/2*a),(-b - sqrt(b^2 - 4*a*c)/2*a) )
 
}

func2(1,-5,6)


#c(9,19,20,16)
vec = c(0,9,98,2,6,7,5,19,88,20,16,0)

vec[vec==9|vec==19|vec==20|vec==16]
vec[vec>=9 & vec<=20]
vec[c(2,8,10,11)]

which(vec%%2==1)
which(vec%%2==0 && vec>20)
which(vec==max(vec))
which(vec==min(vec))

x = 1:12
which(prix==c(1,2,3))

print("asd" x[1] )

sprintf(" %i & %i & %i & %i",1,2,3,4 )




dni = c(5, 4, 2, 0, 1, 5, 6, 7)
length(dni)

sort(c(c("C","R","I","S","T","I","A","N"), c("A","b")))










