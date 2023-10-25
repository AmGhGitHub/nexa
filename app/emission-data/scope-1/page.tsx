import axios from "axios";
import { col_St_Combus_Emis, col_St_Combus_HeatContent } from "./columns";
import { DataTable } from "./data-table";

const page = async () => {
  const data = await axios
    .get("http://localhost:3000/api/emission-data/scope-1")
    .then((res) => res.data);

  return (
    <div className="container mx-auto">
      <h1 className="mb-3 font-semibold text-xl text-emerald-700">
        Scope-1 Reference Data
      </h1>
      <DataTable
        columns={col_St_Combus_HeatContent}
        data={data.heatContentData}
      />

      <h1 className="mb-3 font-semibold text-xl text-emerald-700">
        Scope-1 Reference Data
      </h1>
      <DataTable columns={col_St_Combus_Emis} data={data.emissionData} />
    </div>
  );
};

export default page;
