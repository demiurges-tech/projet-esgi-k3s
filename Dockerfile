FROM amazoncorretto:17-alpine
WORKDIR /app
COPY paymybuddy.jar /app/
EXPOSE 8080
CMD ["java", "-jar", "paymybuddy.jar"]
