
FROM quay.io/drsylent/cubix/block2/homework-base:java17

LABEL cubix.homework.owner="Kenyeres_Geza"
ENV CUBIX_HOMEWORK=Kenyeres_Geza
ENV APP_DEFAULT_MESSAGE=""

RUN mkdir /opt/app && chown 1001 -R /opt/app
USER 1001
WORKDIR /opt/app

COPY --chown=1001 target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]