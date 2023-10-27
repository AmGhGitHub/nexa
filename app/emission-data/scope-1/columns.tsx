"use client";

import { st_combus_hc, st_combus_hc_emis } from "@prisma/client";
import { ColumnDef } from "@tanstack/react-table";
export const col_St_Combus_HeatContent: ColumnDef<st_combus_hc>[] = [
  { accessorKey: "fuelType", header: "Fuel Type" },
  { accessorKey: "fuelSubtype", header: "Fuel Sub-Type" },
  { accessorKey: "hcValue", header: "HC Value" },
  { accessorKey: "hcUnit", header: "HC Unit" },
];

export const col_St_Combus_Emis: ColumnDef<st_combus_hc_emis>[] = [
  { accessorKey: "fuelType", header: "Fuel Type" },
  { accessorKey: "fuelSubtype", header: "Fuel Sub-Type" },
  { accessorKey: "CO2.emisValue", header: "CO2 Emis" },
  { accessorKey: "CO2.emisUnit", header: "CO2 Emis Unit" },
  { accessorKey: "CH4.emisValue", header: "CH4 Emis" },
  { accessorKey: "CH4.emisUnit", header: "CH4 Emis Unit" },
  { accessorKey: "N2O.emisValue", header: "N2O Emis" },
  { accessorKey: "N2O.emisUnit", header: "N2O Emis Unit" },
];
