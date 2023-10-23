import axios from "axios";
import { columns } from "./columns";
import { DataTable } from "./data-table";
import { Scope1_StationaryComsbution } from "@prisma/client";

const page = async () => {
  const data = await axios
    .get("http://localhost:3000/api/emission-data/scope-1")
    .then((res) => res.data);
  console.log(data);

  return (
    <div className="container mx-auto">
      <h1 className="font-semibold text-xl text-orange-400">
        Scope-1 Reference Data
      </h1>
      <DataTable columns={columns} data={data} />
    </div>
  );
};

export default page;
