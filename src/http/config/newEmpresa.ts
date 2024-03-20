// novaRota.ts

import express, { Request, Response } from 'express';

const router = express.Router();

router.route('/new-Empresa')
  // Rota para requisições GET
  .get((req: Request, res: Response) => {
    res.send('Crie aqui os Novos Clientes - Método GET;');
  })
  // Rota para requisições POST
  .post((req: Request, res: Response) => {
    res.send('Crie aqui os Novos Clientes - Método POST;');
  })

export default router;
