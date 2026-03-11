library(ggplot2)

cat("Hola, Docker desde R con ggplot!\n")
cat("Fecha de ejecución:", Sys.time(), "\n")

# Crear un dataset simple
df <- data.frame(x = 1:10, y = (1:10)^2)

# Crear el gráfico
p <- ggplot(df, aes(x = x, y = y)) +
  geom_line(color = "steelblue", size = 1.5) +
  geom_point(color = "darkred", size = 3) +
  theme_minimal() +
  labs(title = "Gráfico generado en Docker", x = "x", y = "x^2")

# Guardar el gráfico en el volumen montado
ggsave("/output/plot.png", plot = p, width = 6, height = 4)

# También escribir info
writeLines(c("Este archivo fue generado dentro del container.",
             paste("Fecha:", Sys.time())), "/output/result.txt")
