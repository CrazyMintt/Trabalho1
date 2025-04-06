import express from "express";
import { viewVeiculo, editVeiculo, delVeiculo, getVeiculo, adicionarVeiculo } from "../Controllers/veiculos.js";

const router = express.Router();
router.get("/", getVeiculo);
router.delete("/excluir", delVeiculo);
router.put("/editar", editVeiculo);
router.post("/adicionar", adicionarVeiculo);
router.get("/detalhada", viewVeiculo);

export default router;