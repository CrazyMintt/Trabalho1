import { useState } from "react";
import { CarroContext } from "./carroContext";

function ContextProvider({ children }) {
    const [carro, setCarro] = useState()
    return (
        <CarroContext.Provider value={{carro, setCarro}}>
            {children}
        </CarroContext.Provider>
    )
}

export default ContextProvider