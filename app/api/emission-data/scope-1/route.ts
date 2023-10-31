import prisma from "@/prisma/client";
// import { st_combus_hc_emis, st_combus_heat_content } from "@prisma/client";
import { NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
  const st_combus_heat_cont = await prisma.st_combus_hc.findMany({});
  const st_combus_hc_emis = await prisma.st_combus_hc_emis.findMany({});
  const st_combus_quant_emis = await prisma.st_combus_quant_emis.findMany({});

  return NextResponse.json({
    heatContentData: st_combus_heat_cont,
    emisDataHcBased: st_combus_hc_emis,
    st_combus_quant_emis,
  });
}
