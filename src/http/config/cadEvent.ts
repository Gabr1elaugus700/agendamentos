import express, { Request, Response } from 'express';
import { prisma } from "../controller/dbConfig";

export default {
  async creatEmpresa( req: Request, res: Response){
    try {
      const { empresaId, nome, telefoneCont } = req.body;

      const empresa = await prisma.empresa.create({
        data: {
          
          nome,
          empresaId,
          telefoneCont
        }
      })
        return res.json({
          error: false,
          message: 'Empresa Cadastrada!',
          empresa
        })



    } catch (error) {
      return res.status(500).json({ message: error})
    }
  }
}
