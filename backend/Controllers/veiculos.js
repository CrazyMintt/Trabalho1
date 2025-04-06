import { db } from "../db.js";

export const getVeiculo = (_, res) => {
    const q = "SELECT * FROM veiculos";

    db.query(q, (err, data) => {
        if (err) return res.json(err);
    
        return res.status(200).json(data);
    });
};

export const delVeiculo = (req, res) => {
    const id = req.body["id"];
    const q = "DELETE FROM veiculos WHERE idveiculos = ?";

    db.query(q, id, (err, data) => {
        if (err) return res.json(err);
    
        return res.status(200).json(data);
    });
};

export const editVeiculo = (req, res) => {
    const id = req.body["id"]
    const nome = req.body["nome"]
    const tipo = req.body["tipo"]
    const cor = req.body["cor"]
    const vrm = req.body["vrm"]
    const vin = req.body["vin"]
    const q = "UPDATE veiculos SET nome = ?, tipo = ?, cor = ?, vrm = ?, vin = ? WHERE idveiculos = ?";

    db.query(q, [nome, tipo, cor, vrm, vin, id], (err, data) => {
        if (err) return res.json(err);
    
        return res.status(200).json(data);
    });
};

export const viewVeiculo = (req, res) => {
    const id = req.body["id"]
    const q = "SELECT * FROM veiculos WHERE idveiculos = ?";

    db.query(q, id, (err, data) => {
        if (err) return res.json(err);
    
        return res.status(200).json(data);
    });
};

export const adicionarVeiculo = (req, res) => {
    const nome = req.body["nome"]
    const tipo = req.body["tipo"]
    const cor = req.body["cor"]
    const vrm = req.body["vrm"]
    const vin = req.body["vin"]
    const q = "INSERT INTO veiculos (nome, tipo, cor, vrm, vin) VALUES (?, ?, ?, ?, ?)";

    db.query(q, [nome, tipo, cor, vrm, vin], (err, data) => {
        if (err) return res.json(err);
    
        return res.status(200).json(data);
    });
};