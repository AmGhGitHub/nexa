"use client";

import {
  st_combus_hc,
  st_combus_hc_emis,
  st_combus_quant_emis,
  gases_gwp,
  blended_refrigerants_gwp,
  electricity_us_emis,
  electricity_canada_emis,
} from "@prisma/client";
import { ColumnDef, createColumnHelper } from "@tanstack/react-table";
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

export const colBlendedRefrigerantsGWP: ColumnDef<blended_refrigerants_gwp>[] =
  [
    { accessorKey: "codeASHRAE", header: "Code ASHRAE" },
    { accessorKey: "gwp", header: "GWP" },
    { accessorKey: "blendComposition", header: "Blend Composition" },
  ];

const columnHelperElectUsEmis = createColumnHelper<electricity_us_emis>();

export const colUSElectricityGridEmis = [
  columnHelperElectUsEmis.accessor((row) => row.ElectGridSubregionName, {
    header: "Region Name",
  }),
  columnHelperElectUsEmis.accessor((row) => row.ElectGridSubregionAcronym, {
    header: "Acronym",
  }),
  columnHelperElectUsEmis.group({
    header: "Total Output",
    columns: [
      columnHelperElectUsEmis.accessor((row) => row.totalOutput.CO2.emisValue, {
        header: "CO2 (lb/MWh)",
      }),
      columnHelperElectUsEmis.accessor((row) => row.totalOutput.CH4.emisValue, {
        header: "CH4 (lb/MWh)",
      }),
      columnHelperElectUsEmis.accessor((row) => row.totalOutput.N2O.emisValue, {
        header: "N2O (lb/MWh)",
      }),
    ],
  }),
  columnHelperElectUsEmis.group({
    header: "Non-Baseload",
    columns: [
      columnHelperElectUsEmis.accessor((row) => row.nonBaseload.CO2.emisValue, {
        header: "CO2 (lb/MWh)",
      }),
      columnHelperElectUsEmis.accessor((row) => row.nonBaseload.CH4.emisValue, {
        header: "CH4 (lb/MWh)",
      }),
      columnHelperElectUsEmis.accessor((row) => row.nonBaseload.N2O.emisValue, {
        header: "N2O (lb/MWh)",
      }),
    ],
  }),
];

const columnHelperElectCanadaEmis =
  createColumnHelper<electricity_canada_emis>();

export const colCanadaElectricityGridEmis = [
  columnHelperElectCanadaEmis.accessor((row) => row.ElectGridSubregionName, {
    header: "Region Name",
  }),
  columnHelperElectCanadaEmis.accessor((row) => row.ElectGridSubregionAcronym, {
    header: "Acronym",
  }),
  columnHelperElectUsEmis.group({
    header: "Total Output",
    columns: [
      columnHelperElectUsEmis.accessor((row) => row.totalOutput.CO2.emisValue, {
        header: "CO2 (lb/MWh)",
      }),
      columnHelperElectUsEmis.accessor((row) => row.totalOutput.CH4.emisValue, {
        header: "CH4 (lb/MWh)",
      }),
      columnHelperElectUsEmis.accessor((row) => row.totalOutput.N2O.emisValue, {
        header: "N2O (lb/MWh)",
      }),
    ],
  }),
];
