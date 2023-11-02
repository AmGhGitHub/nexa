import axios from "axios";

import {
  colStCombusHCEmis,
  colStCombusHC,
  colStCombusQuantEmis,
  colGasesGWP,
  colBlendedRefrigerantsGWP,
  colUSElectricityGridEmis,
  colCanadaElectricityGridEmis,
  colMbCombusCO2Emis,
  colMbCombusCH4N2OEmis,
  colScope3Cat4Cat9,
  colScope3Cat5Cat12,
  colScope3Cat6Cat7,
} from "./columns";
import { DataTable } from "./data-table";

const EmisFactorData = async () => {
  const response = await axios.get(
    "http://localhost:3000/api/emission-data/scope-1"
  );
  const {
    st_combus_heat_cont,
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
  } = response.data;

  return (
    <div className="container mx-auto">
      <h1 className="my-5 font-semibold text-5xl text-red-900 text-center">
        Scope-1 Fuel Data
      </h1>
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Heat Content Data
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
        Emission Factors by Heat Content
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
        Emission Factors by Quantity
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
        Mobile CO2 Emission
      </h2>
      <DataTable columns={colMbCombusCO2Emis} data={mb_combus_co2_emis} />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Mobile CH4 & N2O Emission
      </h2>
      <DataTable
        columns={colMbCombusCH4N2OEmis}
        data={mb_combus_ch4_n2o_emis}
        filterNames={[{ name: "vehicleType", placeholder: "Vehicle Type..." }]}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Gases Global Warming Potential
      </h2>
      <DataTable
        columns={colGasesGWP}
        data={gases_gwp}
        filterNames={[{ name: "gas", placeholder: "Gas..." }]}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Blended Refrigerants Global Warming Potential
      </h2>
      <DataTable
        columns={colBlendedRefrigerantsGWP}
        data={blended_refrigerants_gwp}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        US Electricity Grid Emission Factors
      </h2>
      <DataTable
        columns={colUSElectricityGridEmis}
        data={electricity_us_emis}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Canada Electricity Grid Emission Factors
      </h2>
      <DataTable
        columns={colCanadaElectricityGridEmis}
        data={electricity_canada_emis}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Upstream and Downstream Transportation Emission Factors
      </h2>
      <DataTable
        columns={colScope3Cat4Cat9}
        data={scp3_cat4_upstream_trans_cat9_downstream_trans}
        filterNames={[{ name: "vehicleType", placeholder: "Vehicle Type..." }]}
      />
      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Upstream and Downstream Transportation Emission Factors
      </h2>
      <DataTable
        columns={colScope3Cat5Cat12}
        data={scp3_cat5_waste_ops_cat12_endlife_sold_prd}
        filterNames={[{ name: "material", placeholder: "Material..." }]}
      />

      <h2 className="my-5 font-semibold text-xl text-emerald-700">
        Scope 3 Category 5: Waste Generated in Operations & Category 12:
        End-of-Life Treatment of Sold Products
      </h2>
      <DataTable
        columns={colScope3Cat6Cat7}
        data={scp3_cat6_busin_travel_cat7_emp_commute}
        filterNames={[{ name: "vehicleType", placeholder: "Vehicle..." }]}
      />
    </div>
  );
};

export default EmisFactorData;
