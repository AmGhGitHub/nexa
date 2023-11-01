import prisma from "@/prisma/client";
// import { st_combus_hc_emis, st_combus_heat_content } from "@prisma/client";
import { NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
  const st_combus_heat_cont = await prisma.st_combus_hc.findMany({});
  const st_combus_hc_emis = await prisma.st_combus_hc_emis.findMany({});
  const st_combus_quant_emis = await prisma.st_combus_quant_emis.findMany({});
  const mb_combus_co2_emis = await prisma.mb_combus_co2_emis.findMany({});
  const mb_combus_ch4_n2o_emis = await prisma.mb_combus_ch4_n2o_emis.findMany(
    {}
  );
  const gases_gwp = await prisma.gases_gwp.findMany({});
  const blended_refrigerants_gwp =
    await prisma.blended_refrigerants_gwp.findMany({});
  const electricity_us_emis = await prisma.electricity_us_emis.findMany({});
  const electricity_canada_emis = await prisma.electricity_canada_emis.findMany(
    {}
  );

  const scp3_cat4_upstream_trans_cat9_downstream_trans =
    await prisma.scp3_cat4_upstream_trans_cat9_downstream_trans.findMany({});

  return NextResponse.json({
    st_combus_heat_cont,
    st_combus_hc_emis,
    st_combus_quant_emis,
    gases_gwp,
    blended_refrigerants_gwp,
    electricity_us_emis,
    electricity_canada_emis,
    scp3_cat4_upstream_trans_cat9_downstream_trans,
  });
}
