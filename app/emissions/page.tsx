// "use client";
import prisma from "@/prisma/client";
// import prisma from "@/prisma/client";
import styles from "./emission.module.css";

import {
  colBlendedRefrigerantsGWP,
  colCanadaElectricityGridEmis,
  colGasesGWP,
  colMbCombusCH4N2OEmis,
  colMbCombusCO2Emis,
  colOnRoadDieselVehicles,
  colOnRoadGasolineVehicles,
  colScope3Cat4Cat9,
  colScope3Cat5Cat12,
  colScope3Cat6Cat7,
  colStCombusHC,
  colStCombusHCEmis,
  colStCombusQuantEmis,
  colSupplyChainEmisPriceBased,
  colMbCombusCH4andN2ONonroadVehicles,
  colUSElectricityGridEmis,
  colSteamEmis,
} from "./columns";
import { DataTable } from "./data-table";

const EmisFactorData = async () => {
  // prisma
  const mb_combus_ch4_n2o_nonroad_vehicles =
    await prisma.mb_combus_ch4_n2o_nonroad_vehicles.findMany({});
  const st_combus_heat_cont = await prisma.st_combus_hc.findMany({});
  const st_combus_hc_emis = await prisma.st_combus_hc_emis.findMany({});
  const st_combus_quant_emis = await prisma.st_combus_quant_emis.findMany({});
  const mb_combus_co2_emis = await prisma.mb_combus_co2_emis.findMany({});
  const mb_combus_ch4_n2o_emis = await prisma.mb_combus_ch4_n2o_emis.findMany(
    {}
  );
  const on_road_diesel_and_other_vehicles_ch4_n2o_emis =
    await prisma.on_road_diesel_other_vehicles_ch4_n2o_emis.findMany({});

  const on_road_gasoline_vehicles_ch4_n2o_emis =
    await prisma.on_road_gasoline_vehicles_ch4_n2o_emis.findMany({});

  const gases_gwp = await prisma.gases_gwp.findMany({});
  const blended_refrigerants_gwp =
    await prisma.blended_refrigerants_gwp.findMany({});
  const electricity_us_emis = await prisma.electricity_us_emis.findMany({});
  const electricity_canada_emis = await prisma.electricity_canada_emis.findMany(
    {}
  );

  const scp3_cat4_upstream_trans_cat9_downstream_trans =
    await prisma.scp3_cat4_upstream_trans_cat9_downstream_trans.findMany({});
  const scp3_cat5_waste_ops_cat12_endlife_sold_prd =
    await prisma.scp3_cat5_waste_ops_cat12_endlife_sold_prd.findMany({});
  const scp3_cat6_busin_travel_cat7_emp_commute =
    await prisma.scp3_cat6_busin_travel_cat7_emp_commute.findMany({});

  const supply_chain_emis_price_based =
    await prisma.supply_chain_emis_price_based.findMany({});
  const steam_emis = await prisma.steam_emis.findMany({});
  // console.log("supply_chain_emis_price_based", electricity_us_emis);

  return (
    // console.log("emisFactorData"),
    <div className="container mx-auto">
      <h1 className="my-5 font-semibold text-5xl text-red-900 text-center">
        All Emission Data
      </h1>
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 1 - Heat Content Data
      </h2>
      <DataTable
        columns={colStCombusHC}
        data={st_combus_heat_cont}
        filterNames={[
          { name: "fuelType", placeholder: "Fuel Type..." },
          { name: "fuelSubtype", placeholder: "Fuel SubType.." },
        ]}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 1:1 - Emission Factors by Heat Content
      </h2>
      <DataTable
        columns={colStCombusHCEmis}
        data={st_combus_hc_emis}
        filterNames={[
          { name: "fuelType", placeholder: "Fuel Type..." },
          { name: "fuelSubtype", placeholder: "Fuel SubType.." },
        ]}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 1:2 - Emission Factors by Quantity
      </h2>
      <DataTable
        columns={colStCombusQuantEmis}
        data={st_combus_quant_emis}
        filterNames={[
          { name: "fuelType", placeholder: "Fuel Type..." },
          { name: "fuelSubtype", placeholder: "Fuel SubType.." },
        ]}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 2 - Mobile Combustion CO2
      </h2>
      <DataTable
        columns={colMbCombusCO2Emis}
        data={mb_combus_co2_emis}
        filterNames={[{ name: "fuelType", placeholder: "Fuel Type..." }]}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 3 - Mobile Combustion CH4 and N2O for On-Road Gasoline Vehicles
      </h2>
      <DataTable
        columns={colOnRoadGasolineVehicles}
        data={on_road_gasoline_vehicles_ch4_n2o_emis}
        filterNames={[{ name: "vehicleType", placeholder: "Vehicle Type..." }]}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 4 - Mobile Combustion CH4 and N2O for On-Road Diesel and
        Alternative Fuel Vehicles
      </h2>
      <DataTable
        columns={colOnRoadDieselVehicles}
        data={on_road_diesel_and_other_vehicles_ch4_n2o_emis}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 5 - Mobile Combustion CH4 and N2O for On-Road Diesel and
        Alternative Fuel Vehicles
      </h2>
      <DataTable
        columns={colMbCombusCH4andN2ONonroadVehicles}
        data={mb_combus_ch4_n2o_nonroad_vehicles}
        filterNames={[{ name: "vehicleType", placeholder: "Vehicle Type..." }]}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 6:1 - US Electricity Grid Emission Factors
      </h2>
      {/* console.log(electricity_us_emis) */}
      <DataTable
        columns={colUSElectricityGridEmis}
        data={electricity_us_emis}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 6:2 - Canada Electricity Grid Emission Factors
      </h2>
      <DataTable
        columns={colCanadaElectricityGridEmis}
        data={electricity_canada_emis}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 7 - Steam and Heat
      </h2>
      <DataTable columns={colSteamEmis} data={steam_emis} />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 8 - Scope 3 Category 4: Upstream Transportation and Distribution
        and Category 9: Downstream Transportation and DistributionUpstream and
        Downstream Transportation Emission Factors
      </h2>
      <DataTable
        columns={colScope3Cat4Cat9}
        data={scp3_cat4_upstream_trans_cat9_downstream_trans}
        filterNames={[{ name: "vehicleType", placeholder: "Vehicle Type..." }]}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 9- Scope 3 Category 5: Waste Generated in Operations and Category
        12: End-of-Life Treatment of Sold Products
      </h2>
      <DataTable
        columns={colScope3Cat5Cat12}
        data={scp3_cat5_waste_ops_cat12_endlife_sold_prd}
        filterNames={[{ name: "material", placeholder: "Material..." }]}
      />

      <h2 className="mt-16 font-semibold text-xl text-emerald-700">
        Table 10 - Scope 3 Category 5: Waste Generated in Operations & Category
        12: End-of-Life Treatment of Sold Products
      </h2>
      <DataTable
        columns={colScope3Cat6Cat7}
        data={scp3_cat6_busin_travel_cat7_emp_commute}
        filterNames={[{ name: "vehicleType", placeholder: "Vehicle..." }]}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 11 - Gases Global Warming Potential
      </h2>
      <DataTable
        columns={colGasesGWP}
        data={gases_gwp}
        filterNames={[{ name: "gas", placeholder: "Gas..." }]}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Table 12 - Blended Refrigerants Global Warming Potential
      </h2>
      <DataTable
        columns={colBlendedRefrigerantsGWP}
        data={blended_refrigerants_gwp}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Supply Chain Greenhouse Gas Emission Factors for US Industries and
        Commodities
      </h2>
      <DataTable
        columns={colSupplyChainEmisPriceBased}
        data={supply_chain_emis_price_based}
        // filterNames={[{ name: "vehicleType", placeholder: "Vehicle..." }]}
      />
    </div>
  );
};

export default EmisFactorData;
