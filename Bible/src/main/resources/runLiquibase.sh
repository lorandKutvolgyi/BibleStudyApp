java -jar ./lib/liquibase.jar --driver=org.postgresql.Driver --classpath=./lib/jdbc-postgresql.jar --changeLogFile=./src/main/resources/db.changelog.xml --url=jdbc:postgresql://localhost:5432/bible --username=postgres --password=postgres update