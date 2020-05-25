cc = gcc
prom = calc
deps = calc.h
obj = main.o getch.o getop.o stack.o
 
$(prom): $(obj)
   $(cc) -o $(prom) $(obj)
 
%.o: %.c $(deps)
   $(cc) -c $< -o $@
