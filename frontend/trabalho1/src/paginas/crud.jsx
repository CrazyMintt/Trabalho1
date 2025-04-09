import React, { useContext, useEffect, useState } from "react";
import { CarroContext } from "../components/carroContext";
import { Link } from "react-router-dom";

function Crud() {
  const [data, setData] = useState([]);
  const {setCarro} = useContext(CarroContext);

  useEffect(() => {
    fetch("http://localhost:8800")
      .then((response) => response.json())
      .then((data) => {
        setData(data);
      });
  }, []);

  function definirCarro(item) {
    setCarro(item)
  }

  function excluirVeiculo(item) {
    const json = `{"id": "${item.idveiculos}"}`;
    fetch("http://localhost:8800/excluir", {
      method: "DELETE",
      headers: {
        "Content-Type": "application/json",
      },
      body: json
    });
    window.location.reload();
  }

  return (
    <div className="crud">
      <h1 className="title">CRUD Veiculos</h1>
      <Link className="botao-adicionar" to="/crud/adicionar">Adicionar Novo</Link>
      <ul className="list">
        {data.map((item) => (
          <Link to="/detalhada" onClick={() => definirCarro(item)}>
            <li key={item.id} className="li-list">
              {item.nome}
              <Link to="/crud/editar">
                <button className="botao-editar">Editar</button>
              </Link>
              <Link to="/crud">
                <button className="botao-excluir" onClick={() => excluirVeiculo(item)}>Excluir</button>
              </Link>
            </li>
          </Link>
        ))}
      </ul>
    </div>
  );
};

export default Crud;