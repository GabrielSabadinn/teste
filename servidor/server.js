const fastify = require('fastify')();
const mysql = require('mysql');

const config = {
  host: '127.0.0.1',
  database: 'MeuBancoDeDados',
  user: 'root',
  password: '',
};

const connection = mysql.createConnection(config);

const start = async () => {
  try {
    await fastify.listen({ port: process.env.PORT || 3306 });
    console.log('Servidor iniciado na porta', fastify.server.address().port);
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
};

start();

// conexão
connection.connect((error) => {
  if (error) {
    console.error('Erro ao conectar ao banco de dados:', error);
    process.exit(1);
  }
  console.log('Conexão com o banco de dados estabelecida com sucesso');
});

// buscar os dados federais
fastify.get('/federal', (request, reply) => {
  connection.query('SELECT * FROM CND.Federal', (error, results) => {
    if (error) {
      console.error('Erro ao buscar dados federais:', error);
      reply.status(500).send({ error: 'Erro ao buscar dados federais' });
    } else {
      reply.send(results);
    }
  });
});

// buscar os dados estaduais
fastify.get('/estadual', (request, reply) => {
  connection.query('SELECT * FROM CND.Estadual', (error, results) => {
    if (error) {
      console.error('Erro ao buscar dados estaduais:', error);
      reply.status(500).send({ error: 'Erro ao buscar dados estaduais' });
    } else {
      reply.send(results);
    }
  });
});

// buscar os dados municipais
fastify.get('/municipal', (request, reply) => {
  connection.query('SELECT * FROM CND.Municipal', (error, results) => {
    if (error) {
      console.error('Erro ao buscar dados municipais:', error);
      reply.status(500).send({ error: 'Erro ao buscar dados municipais' });
    } else {
      reply.send(results);
    }
  });
});
