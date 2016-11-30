batch

module add --name=org.postgres --resources=/opt/jboss/wildfly/standalone/deployments/postgresql-9.4.1212.jre6.jar --dependencies=javax.api,javax.transaction.api

/subsystem=datasources/jdbc-driver=postgres:add(driver-name=postgres,driver-module-name=org.postgresql.Driver)

data-source add --jndi-name=java:/servicioDS --name=servicioDS --connection-url=jdbc:postgresql://localhost:5432/Arquitectura --driver-name=postgres --user-name=postgres --password=12345
 
run-batch

