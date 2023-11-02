"use client";

import {
  st_combus_hc,
  st_combus_hc_emis,
  st_combus_quant_emis,
  gases_gwp,
  blended_refrigerants_gwp,
  electricity_us_emis,
  electricity_canada_emis,
  mb_combus_co2_emis,
  mb_combus_ch4_n2o_emis,
  scp3_cat4_upstream_trans_cat9_downstream_trans,
  scp3_cat5_waste_ops_cat12_endlife_sold_prd,
  scp3_cat6_busin_travel_cat7_emp_commute,
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

export const colMbCombusCO2Emis: ColumnDef<mb_combus_co2_emis>[] = [
  {
    accessorKey: "fuelType",
    header: ({ column }) => (
      <SortingButton column={column}>Fuel Type</SortingButton>
    ),
  },
  { accessorKey: "CO2.emisValue", header: "CO2 Emis" },
  { accessorKey: "CO2.emisUnit", header: "Emis Unit" },
];

export const colMbCombusCH4N2OEmis: ColumnDef<mb_combus_ch4_n2o_emis>[] = [
  {
    accessorKey: "vehicleType",
    header: ({ column }) => (
      <SortingButton column={column}>Vehicle Type</SortingButton>
    ),
  },
  {
    accessorKey: "year",
    header: ({ column }) => <SortingButton column={column}>Year</SortingButton>,
  },
  { accessorKey: "CH4.emisValue", header: "CO2 Emis (grCH4/mile)" },
  { accessorKey: "N2O.emisValue", header: "CO2 Emis (grN2O/mile)" },
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
    header: "Province Name",
  }),

  columnHelperElectCanadaEmis.group({
    header: "Total Output",
    columns: [
      columnHelperElectCanadaEmis.accessor(
        (row) => row.totalOutput.CO2.emisValue,
        {
          header: "CO2 (kg/kwh)",
        }
      ),
      columnHelperElectCanadaEmis.accessor(
        (row) => row.totalOutput.CH4.emisValue,
        {
          header: "CH4 (kg/kwh)",
        }
      ),
      columnHelperElectCanadaEmis.accessor(
        (row) => row.totalOutput.N2O.emisValue,
        {
          header: "N2O (lb/MWh)",
        }
      ),
    ],
  }),
];

export const colScope3Cat4Cat9: ColumnDef<scp3_cat4_upstream_trans_cat9_downstream_trans>[] =
  [
    {
      accessorKey: "vehicleType",
      header: ({ column }) => (
        <SortingButton column={column}>Vehicle Type</SortingButton>
      ),
    },
    { accessorKey: "CO2.emisValue", header: "CO2 Emis" },
    { accessorKey: "CO2.emisUnit", header: "CO2 Emis Unit" },
    { accessorKey: "CH4.emisValue", header: "CH4 Emis" },
    { accessorKey: "CH4.emisUnit", header: "CH4 Emis Unit" },
    { accessorKey: "N2O.emisValue", header: "N2O Emis" },
    { accessorKey: "N2O.emisUnit", header: "N2O Emis Unit" },
  ];

export const colScope3Cat5Cat12: ColumnDef<scp3_cat5_waste_ops_cat12_endlife_sold_prd>[] =
  [
    { accessorKey: "emisValue.recycled", header: "Recycle" },
    { accessorKey: "emisValue.landfilled", header: "Land fill" },
    { accessorKey: "emisValue.combusted", header: "Combusted" },
    { accessorKey: "emisValue.composted", header: "Composted" },
  ];
