"use client";

import {
  st_combus_hc,
  st_combus_hc_emis,
  st_combus_quant_emis,
  gases_gwp,
} from "@prisma/client";
import { ColumnDef } from "@tanstack/react-table";
import SortingButton from "./table-sorting";

export const colStCombusHC: ColumnDef<st_combus_hc>[] = [
  {
    accessorKey: "fuelType",
    header: ({ column }) => (
      <SortingButton column={column}>Fuel Type</SortingButton>
    ),
  },
  {
    accessorKey: "fuelSubtype",
    header: ({ column }) => (
      <SortingButton column={column}>Fuel SubType</SortingButton>
    ),
  },
  {
    accessorKey: "hcValue",
    header: ({ column }) => (
      <SortingButton column={column}>HC Value</SortingButton>
    ),
  },
  {
    accessorKey: "hcUnit",
    header: ({ column }) => (
      <SortingButton column={column}>HC Unit</SortingButton>
    ),
  },
];

export const colStCombusHCEmis: ColumnDef<st_combus_hc_emis>[] = [
  {
    accessorKey: "fuelType",
    header: ({ column }) => (
      <SortingButton column={column}>Fuel Type</SortingButton>
    ),
  },
  {
    accessorKey: "fuelSubtype",
    header: ({ column }) => (
      <SortingButton column={column}>Fuel SubType</SortingButton>
    ),
  },
  { accessorKey: "CO2.emisValue", header: "CO2 Emis" },
  { accessorKey: "CO2.emisUnit", header: "CO2 Emis Unit" },
  { accessorKey: "CH4.emisValue", header: "CH4 Emis" },
  { accessorKey: "CH4.emisUnit", header: "CH4 Emis Unit" },
  { accessorKey: "N2O.emisValue", header: "N2O Emis" },
  { accessorKey: "N2O.emisUnit", header: "N2O Emis Unit" },
];

export const colStCombusQuantEmis: ColumnDef<st_combus_quant_emis>[] = [
  {
    accessorKey: "fuelType",
    header: ({ column }) => (
      <SortingButton column={column}>Fuel Type</SortingButton>
    ),
  },
  {
    accessorKey: "fuelSubtype",
    header: ({ column }) => (
      <SortingButton column={column}>Fuel SubType</SortingButton>
    ),
  },
  { accessorKey: "CO2.emisValue", header: "CO2 Emis" },
  { accessorKey: "CO2.emisUnit", header: "CO2 Emis Unit" },
  { accessorKey: "CH4.emisValue", header: "CH4 Emis" },
  { accessorKey: "CH4.emisUnit", header: "CH4 Emis Unit" },
  { accessorKey: "N2O.emisValue", header: "N2O Emis" },
  { accessorKey: "N2O.emisUnit", header: "N2O Emis Unit" },
];

export const colGasesGWP: ColumnDef<gases_gwp>[] = [
  {
    accessorKey: "gas",
    header: ({ column }) => <SortingButton column={column}>Gas</SortingButton>,
  },
  {
    accessorKey: "gwp",
    header: ({ column }) => <SortingButton column={column}>GWP</SortingButton>,
  },
];

export const colBlendedRefrigerantsGWP: ColumnDef<gases_gwp>[] = [
  { accessorKey: "codeASHRAE", header: "Code ASHRAE" },
  { accessorKey: "gwp", header: "GWP" },
  { accessorKey: "blendComposition", header: "Blend Composition" },
];
