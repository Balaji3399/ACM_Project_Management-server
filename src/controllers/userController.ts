import { Request , Response } from "express";
import { PrismaClient } from "@prisma/client";
import { error } from "console";

const prisma = new PrismaClient() ;

export const getUsers = async (
    req : Request,
    res : Response 
): Promise<void> => {
    try {
        const users = await prisma.user.findMany() ;

        res.json(users) ;
    }catch (err : any) {
        res.status(500).json({message : `Error retreiving users : ${err.message}`}) ;
    }
}