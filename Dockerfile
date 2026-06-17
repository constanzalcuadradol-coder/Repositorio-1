# 1. Usar una imagen base de Java (JRE)
FROM eclipse-temurin:17-jre-alpine

# 2. Definir el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar tu archivo jar al contenedor
# Reemplaza 'mi-aplicacion.jar' por el nombre real de tu archivo
COPY dbclient-0.0.1.jar app.jar

# 4. Exponer el puerto en el que corre tu app (ejemplo: 8080)
EXPOSE 8080

# 5. Comando para ejecutar la aplicación
ENTRYPOINT ["sh", "-c", "java -jar app.jar"]