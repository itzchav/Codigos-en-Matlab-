
valores=readmatrix('Libro1.csv')

x=randi([1,10],1,15)
y=randi([1,10],1,15)

matrix=[x;y]
matrix=transpose(matrix)
writematrix(matrix,'pruebarandom.csv')
