import React, { useContext, useEffect, useState } from "react";
import { CarroContext } from "../components/carroContext";
import { useNavigate } from "react-router-dom";

function Editar() {
  const {carro, setCarro} = useContext(CarroContext);
  const [carregando, setCarregando] = useState(true);
  const navigate = useNavigate();

  useEffect(() => {
    const savedCarro = localStorage.getItem("carro");
    if (savedCarro) {
      setCarro(JSON.parse(savedCarro));
    }
    setCarregando(null)
  }, [setCarro]);

  useEffect(() => {
    if (carro) {
      localStorage.setItem("carro", JSON.stringify(carro));
    }
  }, [carro]);

  if (carregando) {
    return
  }  

  function editarVeiculo(carro) {
    const nome = document.getElementById("nome").value;
    const tipo = document.getElementById("tipo").value;
    const cor = document.getElementById("cor").value;
    const vrm = document.getElementById("vrm").value;
    const vin = document.getElementById("vin").value;

    if (!nome || !tipo || !cor || !vrm || !vin) {
        alert("Todos os campos são obrigatórios!");
        return;
    }

    if (vrm.length !== 7) {
      alert("O campo VRM deve conter exatamente 7 caracteres!");
      return;
    }

    if (vin.length !== 17) {
      alert("O campo VIN deve conter exatamente 17 caracteres!");
      return;
    }

    const json = `{
      "id": "${carro.idveiculos}", 
      "nome": "${nome}", 
      "tipo": "${tipo}",
      "cor": "${cor}",
      "vrm": "${vrm}",
      "vin": "${vin}"
    }`;
    fetch("http://localhost:8800/editar", {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: json
    })
    .then(() => {
    navigate("/crud");
    });
  }

  return (
    <div className="editar">
        <h1 className="title">Editar Veiculos</h1>
        <ul className="list">
            <li className="li-list-crud">
                <p>Nome: <input className="input-crud" id="nome" placeholder="Nome" defaultValue={carro.nome}></input></p>
                <p>Tipo: <input className="input-crud" id="tipo" placeholder="Tipo" defaultValue={carro.tipo}></input></p>
                <p>Cor: <input className="input-crud" id="cor" placeholder="Cor" defaultValue={carro.cor}></input></p>
                <p>VRM: <input className="input-crud" id="vrm" placeholder="VRM" defaultValue={carro.vrm}></input></p>
                <p>VIN: <input className="input-crud" id="vin" placeholder="vin" defaultValue={carro.vin}></input></p>
                <button className="botao-enviar" onClick={() => editarVeiculo(carro)}>Enviar</button>
            </li>
        </ul>
    </div>
  );
};

export default Editar;