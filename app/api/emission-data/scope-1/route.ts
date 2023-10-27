import prisma from "@/prisma/client";
// import { st_combus_hc_emis, st_combus_heat_content } from "@prisma/client";
import { NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
  const st_combus_heat_cont = await prisma.st_combus_hc.findMany({});
  // console.log(st_combus_heat_cont);
  const st_combus_hc_emis = await prisma.st_combus_hc_emis.findMany({});

  // const st_combus_emis_hc_based = await prisma.st_Combus_Emis.findMany({
  //   where: { emissionBase: "HEAT_CONTENT" },
  //   include: {
  //     fuelInfo: true,
  //     co2EmisUnit: true,
  //     ch4EmisUnit: true,
  //     n2oEmisUnit: true,
  //   },
  // });

  // const st_combus_emis_quant_based = await prisma.st_Combus_Emis.findMany({
  //   where: { emissionBase: "QUANTITY" },
  //   include: {
  //     fuelInfo: true,
  //     co2EmisUnit: true,
  //     ch4EmisUnit: true,
  //     n2oEmisUnit: true,
  //   },
  // });

  // return NextResponse.json({
  //   heatContentData: st_combus_heat_cont,
  //   emisDataHcBased: st_combus_emis_hc_based,
  //   emisDataQuantBased: st_combus_emis_quant_based,
  // });

  return NextResponse.json({
    heatContentData: st_combus_heat_cont,
    emisDataHcBased: st_combus_hc_emis,
    // emisDataQuantBased: st_combus_emis_quant_based,
  });
}
