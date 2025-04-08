import React, { useContext, useEffect, useState } from "react";
import { CarroContext } from "./carroContext";
import { Link } from "react-router-dom";

function DataList() {
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

  return (
    <div className="datalist">
      <h1 className="title">Listando Veiculos</h1>
      <ul className="list">
        {data.map((item) => (
          <Link to="/detalhada" onClick={() => definirCarro(item)}>
            <li key={item.id} className="li-list">
              {item.nome}<br/>
            </li>
          </Link>
        ))}
      </ul>
    </div>
  );
};

export default DataList;