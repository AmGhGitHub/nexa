"use client";

import { Scope1_StationaryComsbution } from "@prisma/client";
import { ColumnDef } from "@tanstack/react-table";
export const columns: ColumnDef<Scope1_StationaryComsbution>[] = [
  { accessorKey: "fuel_type.fuel_type", header: "Fuel Type" },

  {
    accessorKey: "fuel_subtype",
    header: "Fuel Subtype",
  },
  {
    accessorKey: "heat_content_value",
    header: "Heat Content Value",
  },
  { accessorKey: "fuel_type.heat_content_unit", header: "Heat Content Unit" },
  {
    accessorKey: "co2_emission_factor",
    header: "CO2 EF",
  },
  {
    accessorKey: "fuel_type.co2_emission_unit",
    header: "CO2 EF Unit",
  },
  {
    accessorKey: "ch4_emission_factor",
    header: "CH4 EF",
  },
  {
    accessorKey: "fuel_type.ch4_emission_unit",
    header: "CH4 EF Unit",
  },
  {
    accessorKey: "n2o_emission_factor",
    header: "N2O EF",
  },
  {
    accessorKey: "fuel_type.n2o_emission_unit",
    header: "N2O EF Unit",
  },
];
