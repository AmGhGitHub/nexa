import axios from "axios";
import { col_St_Combus_Emis, col_St_Combus_HeatContent } from "./columns";
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
        columns={col_St_Combus_HeatContent}
        data={data.heatContentData}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Emission Factors by Heat Content
      </h2>
      <DataTable columns={col_St_Combus_Emis} data={data.emisDataHcBased} />

      {/* <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Emission Factors by Quantity
      </h2>
      <DataTable columns={col_St_Combus_Emis} data={data.emisDataQuantBased} /> */}
    </div>
  );
};

export default page;
