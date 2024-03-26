import { Console } from 'console';
import express from 'express';
import { Request, Response } from 'express';
import newEmpresa from './config/newEmpresa';

const app = express();

app.use(express.json());

app.post('/createEmp', newEmpresa.creatEmpresa );

app.get('/', (req: Request, res: Response) => {
    return res.status(200).json('Olá, seja bem vindo!')

})

const port = 9090;
app.listen(port, () => {
    console.log(`Servidor rodando na porta ${port}`);
});

const nome = "Gabriel"

interface User {
    name: string;
    id: number;
  }
  
  function createUser(name: string, id: number): User {
    return { name, id };
  }
  
  const user: User = createUser(`${nome}`, 1);
  
  console.log(user); // Imprime o objeto 'user' no console
  