import { St_Combus_HeatCont, St_Combus_Emis } from "@prisma/client";
import prisma from "@/prisma/client";
import { NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
  const st_combus_heat_cont = await prisma.st_Combus_HeatCont.findMany({
    include: { fuelInfo: true, heatContentUnit: true },
  });

  const st_combus_emis = await prisma.st_Combus_Emis.findMany({
    where: { emissionBase: "HEAT_CONTENT" },
    include: {
      fuelInfo: true,
      co2EmisUnit: true,
      ch4EmisUnit: true,
      n2oEmisUnit: true,
    },
  });

  return NextResponse.json({
    heatContentData: st_combus_heat_cont,
    emissionData: st_combus_emis,
  });
}
