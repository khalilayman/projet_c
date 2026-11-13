# Nom de l'éxecutable
EXEC = prog

# Liste des fichiers objects
OBJS = main.o module.o

# Règle par défaut
all: $(EXEC)

# Edition des liens
$(EXEC): $(OBJS)
	@gcc $(OBJS) -o $(EXEC)

# Compilation de chaque fichier .c en .o
%.o: %.c
	@gcc -c $< -o $@

# Nettoyage
clean:
	@rm -f $(OBJS) $(EXEC)

# Execution
run: $(EXEC)
	@./$(EXEC)