"use client";

import { st_combus_heat_content, st_combus_hc_emis } from "@prisma/client";
import { ColumnDef } from "@tanstack/react-table";
export const col_St_Combus_HeatContent: ColumnDef<st_combus_heat_content>[] = [
  { accessorKey: "fuelType", header: "Fuel Type" },
  { accessorKey: "fuelSubType", header: "Fuel SubType" },
  { accessorKey: "heatContent", header: "Heat Content Value" },
  { accessorKey: "unit", header: "Unit" },
];

export const col_St_Combus_Emis: ColumnDef<st_combus_hc_emis>[] = [
  { accessorKey: "fuelType", header: "Fuel Type" },
  { accessorKey: "fuelSubtype", header: "Fuel SubType" },
  { accessorKey: "CO2.emisValue", header: "CO2 Emis" },
  { accessorKey: "CO2.emisUnit", header: "CO2 Emis Unit" },
];
