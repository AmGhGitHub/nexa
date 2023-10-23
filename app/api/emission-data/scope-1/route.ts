import { Scope1_StationaryComsbution } from "@prisma/client";
import prisma from "@/prisma/client";
import { NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
  const stationary_emissions =
    await prisma.scope1_StationaryComsbution.findMany({
      include: { fuel_type: true },
    });

  // const stationary_emissions_fueltype =
  //   await prisma.scope1_StationaryComsbution_FuelType.findMany({});

  return NextResponse.json(stationary_emissions);
}
