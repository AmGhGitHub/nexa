"use client";

import { St_Combus_HeatCont, St_Combus_Emis } from "@prisma/client";
import { ColumnDef } from "@tanstack/react-table";
export const col_St_Combus_HeatContent: ColumnDef<St_Combus_HeatCont>[] = [
  { accessorKey: "fuelInfo.fuelType", header: "Fuel Type" },
  { accessorKey: "fuelInfo.fuelSubtype", header: "Fuel SubType" },
  { accessorKey: "heatContentValue", header: "Heat Content Value" },
  { accessorKey: "heatContentUnit.unit", header: "Heat Content Unit" },
];

export const col_St_Combus_Emis: ColumnDef<St_Combus_Emis>[] = [
  { accessorKey: "fuelInfo.fuelType", header: "Fuel Type" },
  { accessorKey: "fuelInfo.fuelSubtype", header: "Fuel SubType" },
  { accessorKey: "co2EmisFct", header: "CO2 Emis Factor" },
  { accessorKey: "co2EmisUnit.unit", header: "CO2 Emis Unit" },
  { accessorKey: "ch4EmisFct", header: "CH4 Emis Factor" },
  { accessorKey: "ch4EmisUnit.unit", header: "CH4 Emis Unit" },
  { accessorKey: "n2oEmisFct", header: "N2O Emis Factor" },
  { accessorKey: "n2oEmisUnit.unit", header: "N2O Emis Unit" },
];
