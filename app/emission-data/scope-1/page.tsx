import axios from "axios";
import {
  colStCombusHCEmis,
  colStCombusHC,
  colStCombusQuantEmis,
  colGasesGWP,
  colBlendedRefrigerantsGWP,
} from "./columns";
import { DataTable } from "./data-table";

const EmisFactorData = async () => {
  const response = await axios.get(
    "http://localhost:3000/api/emission-data/scope-1"
  );
  const {
    st_combus_heat_cont,
    st_combus_hc_emis,
    st_combus_quant_emis,
    gases_gwp,
    blended_refrigerants_gwp,
  } = response.data;

  return (
    <div className="container mx-auto">
      <h1 className="my-5 font-semibold text-5xl text-red-900 text-center">
        Scope-1 Fuel Data
      </h1>
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Heat Content Data
      </h2>
      <DataTable
        columns={colStCombusHC}
        data={st_combus_heat_cont}
        filterNames={[
          { name: "fuelType", placeholder: "Fuel Type..." },
          { name: "fuelSubtype", placeholder: "Fuel SubType.." },
        ]}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Emission Factors by Heat Content
      </h2>
      <DataTable
        columns={colStCombusHCEmis}
        data={st_combus_hc_emis}
        filterNames={[
          { name: "fuelType", placeholder: "Fuel Type..." },
          { name: "fuelSubtype", placeholder: "Fuel SubType.." },
        ]}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Emission Factors by Quantity
      </h2>
      <DataTable
        columns={colStCombusQuantEmis}
        data={st_combus_quant_emis}
        filterNames={[
          { name: "fuelType", placeholder: "Fuel Type..." },
          { name: "fuelSubtype", placeholder: "Fuel SubType.." },
        ]}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Gases Global Warming Potential
      </h2>
      <DataTable
        columns={colGasesGWP}
        data={gases_gwp}
        filterNames={[{ name: "gas", placeholder: "Gas..." }]}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Blended Refrigerants Global Warming Potential
      </h2>
      <DataTable
        columns={colBlendedRefrigerantsGWP}
        data={blended_refrigerants_gwp}
      />
    </div>
  );
};

export default EmisFactorData;
