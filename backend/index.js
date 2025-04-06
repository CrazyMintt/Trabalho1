import express from "express";
import cors from "cors";
import veiculoRouter from "./Routes/veiculos.js";

const app = express();

app.use(express.json());
app.use(cors());

app.use("/", veiculoRouter);

app.listen(8800);