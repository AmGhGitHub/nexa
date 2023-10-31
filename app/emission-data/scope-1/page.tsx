import axios from "axios";
import {
  colStCombusHCEmis,
  colStCombusHC,
  colStCombusQuantEmis,
} from "./columns";
import { DataTable } from "./data-table";

const page = async () => {
  const data = await axios
    .get("http://localhost:3000/api/emission-data/scope-1")
    .then((res) => res.data);

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
        data={data.heatContentData}
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
        data={data.emisDataHcBased}
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
        data={data.st_combus_quant_emis}
      />
    </div>
  );
};

export default page;
