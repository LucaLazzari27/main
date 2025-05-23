�HDF

         ��������?Z     0       �*$(OHDR�"     �       X�     �     �h     
          �      m      �       G                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          �Z_FRHP                    Yn      �       �              P             �8                                           (  v�      ���BTHD       d(              �K�7BTHD 	      d(              @�&FSHD  5                            P x (        ��     D       D       �}e�BTLF     ,     $� �   @     �*%    E     l3�- �    G     �J7 @   �
    kW�G     2      @�k          �T�v �   ; 	   ���          Ûŀ    j 
   �2� �    6     �� H    R     ���� C   -     ʻ#� p   $     ��N�1��b                                                                                                                                                                                                                                                                        BTLF 	     2       H    R      �    G      �    6         ,      C   -      p   $      @   �
     �   @      �   ; 	       j 
                           E     ��h                                                                                                                                                                                                                                                                                                                                BTHD       d('�             ���     _model_run    ֞    scenario: res_3h
applied_overrides: res_3h
techs:
  battery:
    inheritance:
    - storage
    essentials:
      parent: storage
      carrier: electricity
      color: '#33F6FF'
      name: Battery storage
      carrier_in: electricity
      carrier_out: electricity
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - charge_rate
    - energy_cap_per_storage_cap_min
    - energy_cap_per_storage_cap_max
    - energy_cap_per_storage_cap_equals
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_con
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_asynchronous_prod_con
    - lifetime
    - storage_cap_equals
    - storage_cap_max
    - storage_cap_min
    - storage_cap_per_unit
    - storage_initial
    - storage_loss
    - storage_time_max
    - storage_discharge_depth
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - storage_cap_min
    - storage_cap_max
    - storage_cap_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_prod
    - purchase
    - storage_cap
  ccgt:
    inheritance:
    - supply
    essentials:
      parent: supply
      carrier_out: electricity
      color: '#AB2C18'
      name: Combined cycle gas turbine
      carrier_in: resource
    constraints:
      energy_cap_max_systemwide: 10000
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_resource
    - lifetime
    - resource
    - resource_area_equals
    - resource_area_max
    - resource_area_min
    - resource_area_per_energy_cap
    - resource_min_use
    - resource_scale
    - resource_unit
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - resource_area_min
    - resource_area_max
    - resource_area_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
    - resource_area
  curtailment:
    inheritance:
    - demand
    essentials:
      parent: demand
      carrier_in: electricity
      color: '#6F6C7C'
      name: Electricity curtailment
      carrier_out: resource
    constraints: {}
    required_constraints:
    - resource
    allowed_constraints:
    - energy_con
    - force_resource
    - resource
    - resource_area_equals
    - resource_scale
    - resource_unit
    allowed_group_constraints:
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - carrier_con_min
    - carrier_con_max
    - carrier_con_equals
    allowed_costs:
    - om_con
  demand_electricity:
    inheritance:
    - demand
    essentials:
      parent: demand
      carrier: electricity
      color: '#072486'
      name: Electricity demand
      carrier_in: electricity
      carrier_out: resource
    constraints: {}
    required_constraints:
    - resource
    allowed_constraints:
    - energy_con
    - force_resource
    - resource
    - resource_area_equals
    - resource_scale
    - resource_unit
    allowed_group_constraints:
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - carrier_con_min
    - carrier_con_max
    - carrier_con_equals
    allowed_costs:
    - om_con
  export_electricity:
    inheritance:
    - demand
    essentials:
      parent: demand
      carrier_in: electricity
      color: '#D800FF'
      name: Electricity export
      carrier_out: resource
    constraints: {}
    required_constraints:
    - resource
    allowed_constraints:
    - energy_con
    - force_resource
    - resource
    - resource_area_equals
    - resource_scale
    - resource_unit
    allowed_group_constraints:
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - carrier_con_min
    - carrier_con_max
    - carrier_con_equals
    allowed_costs:
    - om_con
  hvac_transmission:
    inheritance:
    - transmission
    essentials:
      parent: transmission
      carrier: electricity
      color: '#CF74B2'
      name: Transmission intra-zonal electricity
      carrier_in: electricity
      carrier_out: electricity
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_con
    - energy_eff
    - energy_eff_per_distance
    - energy_prod
    - force_asynchronous_prod_con
    - lifetime
    - one_way
    allowed_group_constraints:
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - net_import_share_min
    - net_import_share_max
    - net_import_share_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - energy_cap_per_distance
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_prod
    - purchase
    - purchase_per_distance
  hydrogen_to_power:
    inheritance:
    - storage
    essentials:
      parent: storage
      carrier: electricity
      color: '#9958D6'
      name: Hydrogen-to-power storage
      carrier_in: electricity
      carrier_out: electricity
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - charge_rate
    - energy_cap_per_storage_cap_min
    - energy_cap_per_storage_cap_max
    - energy_cap_per_storage_cap_equals
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_con
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_asynchronous_prod_con
    - lifetime
    - storage_cap_equals
    - storage_cap_max
    - storage_cap_min
    - storage_cap_per_unit
    - storage_initial
    - storage_loss
    - storage_time_max
    - storage_discharge_depth
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - storage_cap_min
    - storage_cap_max
    - storage_cap_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_prod
    - purchase
    - storage_cap
  import_electricity:
    inheritance:
    - supply
    essentials:
      parent: supply
      carrier_out: electricity
      color: '#FF009E'
      name: Electricity import
      carrier_in: resource
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_resource
    - lifetime
    - resource
    - resource_area_equals
    - resource_area_max
    - resource_area_min
    - resource_area_per_energy_cap
    - resource_min_use
    - resource_scale
    - resource_unit
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - resource_area_min
    - resource_area_max
    - resource_area_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
    - resource_area
  lost_load:
    inheritance:
    - supply
    essentials:
      parent: supply
      carrier_out: electricity
      color: '#030303'
      name: Lost load
      carrier_in: resource
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_resource
    - lifetime
    - resource
    - resource_area_equals
    - resource_area_max
    - resource_area_min
    - resource_area_per_energy_cap
    - resource_min_use
    - resource_scale
    - resource_unit
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - resource_area_min
    - resource_area_max
    - resource_area_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
    - resource_area
  pv_farm:
    inheritance:
    - supply
    essentials:
      parent: supply
      carrier_out: electricity
      color: '#FFE400'
      name: Photovoltaic power farm-scale
      carrier_in: resource
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_resource
    - lifetime
    - resource
    - resource_area_equals
    - resource_area_max
    - resource_area_min
    - resource_area_per_energy_cap
    - resource_min_use
    - resource_scale
    - resource_unit
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - resource_area_min
    - resource_area_max
    - resource_area_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
    - resource_area
  pv_rooftop:
    inheritance:
    - supply
    essentials:
      parent: supply
      carrier_out: electricity
      color: '#FFB600'
      name: Photovoltaic power distributed
      carrier_in: resource
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_resource
    - lifetime
    - resource
    - resource_area_equals
    - resource_area_max
    - resource_area_min
    - resource_area_per_energy_cap
    - resource_min_use
    - resource_scale
    - resource_unit
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - resource_area_min
    - resource_area_max
    - resource_area_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
    - resource_area
  wind_offshore:
    inheritance:
    - supply
    essentials:
      parent: supply
      carrier_out: electricity
      color: '#275FB0'
      name: Off-shore wind power
      carrier_in: resource
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_resource
    - lifetime
    - resource
    - resource_area_equals
    - resource_area_max
    - resource_area_min
    - resource_area_per_energy_cap
    - resource_min_use
    - resource_scale
    - resource_unit
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - resource_area_min
    - resource_area_max
    - resource_area_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
    - resource_area
  wind_onshore:
    inheritance:
    - supply
    essentials:
      parent: supply
      carrier_out: electricity
      color: '#27B09F'
      name: On-shore wind power
      carrier_in: resource
    constraints: {}
    required_constraints: []
    allowed_constraints:
    - energy_cap_equals
    - energy_cap_equals_systemwide
    - energy_cap_max
    - energy_cap_max_systemwide
    - energy_cap_min
    - energy_cap_min_use
    - energy_cap_per_unit
    - energy_cap_scale
    - energy_eff
    - energy_prod
    - energy_ramping
    - export_cap
    - export_carrier
    - force_resource
    - lifetime
    - resource
    - resource_area_equals
    - resource_area_max
    - resource_area_min
    - resource_area_per_energy_cap
    - resource_min_use
    - resource_scale
    - resource_unit
    - units_equals
    - units_equals_systemwide
    - units_max
    - units_max_systemwide
    - units_min
    allowed_group_constraints:
    - demand_share_min
    - demand_share_max
    - demand_share_equals
    - demand_share_per_timestep_min
    - demand_share_per_timestep_max
    - demand_share_per_timestep_equals
    - demand_share_per_timestep_decision
    - carrier_prod_share_min
    - carrier_prod_share_max
    - carrier_prod_share_equals
    - carrier_prod_share_per_timestep_min
    - carrier_prod_share_per_timestep_max
    - carrier_prod_share_per_timestep_equals
    - cost_max
    - cost_min
    - cost_equals
    - cost_var_max
    - cost_var_min
    - cost_var_equals
    - cost_investment_min
    - cost_investment_max
    - cost_investment_equals
    - energy_cap_share_min
    - energy_cap_share_max
    - energy_cap_share_equals
    - energy_cap_min
    - energy_cap_max
    - energy_cap_equals
    - resource_area_min
    - resource_area_max
    - resource_area_equals
    - carrier_prod_min
    - carrier_prod_max
    - carrier_prod_equals
    allowed_costs:
    - depreciation_rate
    - energy_cap
    - export
    - interest_rate
    - om_annual
    - om_annual_investment_fraction
    - om_con
    - om_prod
    - purchase
    - resource_area
tech_groups:
  conversion: []
  conversion_plus: []
  demand:
  - curtailment
  - demand_electricity
  - export_electricity
  storage:
  - battery
  - hydrogen_to_power
  supply:
  - ccgt
  - import_electricity
  - lost_load
  - pv_farm
  - pv_rooftop
  - wind_offshore
  - wind_onshore
  supply_plus: []
  transmission:
  - hvac_transmission
locations:
  NL11:
    coordinates:
      lat: 53.151875
      lon: 6.8779375
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL11
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL11
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL11
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_offshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 30
          resource: file=windoff_nuts2.csv:NL11
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1060792482526339
            energy_cap: 1139.8826
            om_annual_investment_fraction: 2.3741
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL11
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL12:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 3.4401
              energy_cap_min: 0.6882
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 78.08059088268635
      NL13:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 15.3276
              energy_cap_min: 3.0655
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 51.40669619092387
  NL12:
    coordinates:
      lat: 53.130320000000005
      lon: 5.94212
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL12
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL12
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL12
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_offshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 30
          resource: file=windoff_nuts2.csv:NL12
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1060792482526339
            energy_cap: 1139.8826
            om_annual_investment_fraction: 2.3741
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL12
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL11:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 3.4401
              energy_cap_min: 0.6882
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 78.08059088268635
      NL23:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 3.4401
              energy_cap_min: 0.6882
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 77.01279250805582
  NL13:
    coordinates:
      lat: 52.79966
      lon: 6.69054
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL13
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL13
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL13
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL13
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL11:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 15.3276
              energy_cap_min: 3.0655
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 51.40669619092387
      NL21:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 15.3276
              energy_cap_min: 3.0655
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 57.68592103711268
  NL21:
    coordinates:
      lat: 52.41295
      lon: 6.442433333333334
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL21
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL21
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL21
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL21
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL13:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 15.3276
              energy_cap_min: 3.0655
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 57.68592103711268
      NL22:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 74.3546324021931
      NL23:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 15.3276
              energy_cap_min: 3.0655
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 70.1574152900598
  NL22:
    coordinates:
      lat: 51.94764
      lon: 6.012
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL22
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL22
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL22
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL22
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL21:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 74.3546324021931
      NL41:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 91.64766157833785
  NL23:
    coordinates:
      lat: 52.60066666666666
      lon: 5.672633333333333
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL23
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL23
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL23
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_offshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 30
          resource: file=windoff_nuts2.csv:NL23
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1060792482526339
            energy_cap: 1139.8826
            om_annual_investment_fraction: 2.3741
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL23
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL12:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 3.4401
              energy_cap_min: 0.6882
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 77.01279250805582
      NL21:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 15.3276
              energy_cap_min: 3.0655
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 70.1574152900598
      NL32:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 16.9811
              energy_cap_min: 3.3962
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 84.8212339513288
  NL31:
    coordinates:
      lat: 52.1608
      lon: 4.9873
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL31
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL31
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL31
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL31
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL32:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 34.96977818838089
      NL33:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 1.1886
              energy_cap_min: 0.2377
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 54.0333446482031
  NL32:
    coordinates:
      lat: 52.36538333333333
      lon: 4.748033333333333
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL32
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL32
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL32
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_offshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 30
          resource: file=windoff_nuts2.csv:NL32
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1060792482526339
            energy_cap: 1139.8826
            om_annual_investment_fraction: 2.3741
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL32
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL23:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 16.9811
              energy_cap_min: 3.3962
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 84.8212339513288
      NL31:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 34.96977818838089
      NL33:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 62.54522684034896
  NL33:
    coordinates:
      lat: 51.95356666666667
      lon: 4.452383333333334
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL33
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL33
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL33
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_offshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 30
          resource: file=windoff_nuts2.csv:NL33
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1060792482526339
            energy_cap: 1139.8826
            om_annual_investment_fraction: 2.3741
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL33
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL31:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 1.1886
              energy_cap_min: 0.2377
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 54.0333446482031
      NL32:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 62.54522684034896
      NL41:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 79.05131602490407
  NL34:
    coordinates:
      lat: 51.4261
      lon: 4.2185
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL34
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL34
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL34
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_offshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 30
          resource: file=windoff_nuts2.csv:NL34
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1060792482526339
            energy_cap: 1139.8826
            om_annual_investment_fraction: 2.3741
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL34
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL41:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 81.91534737849409
  NL41:
    coordinates:
      lat: 51.573025
      lon: 5.135325
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL41
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL41
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL41
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL41
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL22:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 91.64766157833785
      NL33:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 79.05131602490407
      NL34:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 11.8867
              energy_cap_min: 2.3773
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 81.91534737849409
      NL42:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 23.7734
              energy_cap_min: 4.7547
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 88.7810048549968
  NL42:
    coordinates:
      lat: 51.1524
      lon: 5.9052
    techs:
      battery:
        constraints:
          energy_cap_per_storage_cap_max: 0.25
          energy_con: true
          energy_eff: 0.98
          energy_prod: true
          lifetime: 22.5
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.11326683573865819
            om_annual_investment_fraction: 0.57
            om_prod: 0.002
            storage_cap: 885
      ccgt:
        constraints:
          energy_eff: 0.57
          energy_prod: true
          energy_ramping: 0.8
          lifetime: 25
          resource: inf
          resource_unit: energy
        costs:
          monetary:
            depreciation_rate: 0.11016807219002081
            energy_cap: 904.7795
            om_annual_investment_fraction: 3.3392
            om_con: 0.1
            om_prod: 0.00455
      curtailment:
        constraints:
          energy_con: true
          force_resource: false
          resource: -100000.0
          resource_unit: energy
        costs:
          monetary:
            om_con: 0
      demand_electricity:
        constraints:
          energy_con: true
          force_resource: true
          resource: file=electricity_demand_nuts2.csv:NL42
          resource_unit: energy
      hydrogen_to_power:
        constraints:
          energy_con: true
          energy_eff: 0.542
          energy_prod: true
          lifetime: 15
          storage_cap_max: inf
          storage_initial: 0
        costs:
          monetary:
            depreciation_rate: 0.13147377688737216
            energy_cap: 3069.866
            om_annual_investment_fraction: 4
            om_prod: 0
            storage_cap: 22.982
      lost_load:
        constraints:
          energy_prod: true
          force_resource: false
          lifetime: 20
          resource: 100000.0
          resource_unit: energy
        costs:
          monetary:
            om_prod: 10000.0
      pv_farm:
        constraints:
          energy_cap_max: 2500
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL42
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 676.5703
            om_annual_investment_fraction: 1.7275
            om_prod: 0
      pv_rooftop:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 37.5
          resource: file=pv_nuts2.csv:NL42
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.1028848670767948
            energy_cap: 880.0251
            om_annual_investment_fraction: 1.2567
            om_prod: 0
      wind_onshore:
        constraints:
          energy_cap_max: 5000
          energy_prod: true
          force_resource: true
          lifetime: 28.5
          resource: file=wind_nuts2.csv:NL42
          resource_unit: energy_per_cap
        costs:
          monetary:
            depreciation_rate: 0.10707971333223756
            energy_cap: 1139.8826
            om_annual_investment_fraction: 1.2347
            om_prod: 0
    links:
      NL41:
        techs:
          hvac_transmission:
            constraints:
              energy_cap_max: 23.7734
              energy_cap_min: 4.7547
              energy_con: true
              energy_eff: 0.96
              energy_prod: true
              lifetime: 60
            costs:
              monetary:
                depreciation_rate: 0.10032950922550408
                energy_cap: 175
                om_annual_investment_fraction: 0.015
            distance: 88.7810048549968
run:
  backend: pyomo
  bigM: 1000000.0
  cyclic_storage: true
  ensure_feasibility: true
  mode: plan
  objective_options:
    cost_class:
      monetary: 1
    sense: minimize
  objective: minmax_cost_optimization
  operation:
    window:
    horizon:
    use_cap_results: false
  spores_options:
    spores_number: 3
    slack: 0.1
    score_cost_class: spores_score
    objective_cost_class:
      spores_score: 1
      monetary: 0
    slack_cost_group:
    save_per_spore: false
    save_per_spore_path:
    skip_cost_op: false
  relax_constraint:
    demand_share_per_timestep_decision_main_constraint: 0
  save_logs:
  solver_io:
  solver_options:
  solver: cbc
  zero_threshold: 1e-10
model:
  calliope_version: 0.6.10
  group_share: {}
  name: Stylised Dutch power system at NUTS2 resolution
  random_seed:
  reserve_margin: {}
  subset_time:
  - '2015-03-01'
  - '2015-03-31'
  time:
    function: resample
    function_options:
      resolution: 3H
  timeseries_data_path: model_files\timeseries_data
  timeseries_data:
  timeseries_dateformat: '%Y-%m-%d %H:%M:%S'
  file_allowed:
  - clustering_func
  - energy_con
  - energy_eff
  - energy_prod
  - energy_ramping
  - export
  - force_resource
  - om_con
  - om_prod
  - parasitic_eff
  - resource
  - resource_eff
  - storage_loss
  - carrier_ratios
group_constraints: {}
sets:
  resources:
  - resource
  - electricity
  carriers:
  - electricity
  carrier_tiers:
  - out
  - in
  costs:
  - monetary
  locs:
  - NL22
  - NL21
  - NL12
  - NL33
  - NL42
  - NL13
  - NL11
  - NL34
  - NL23
  - NL32
  - NL31
  - NL41
  techs_non_transmission:
  - battery
  - pv_farm
  - lost_load
  - curtailment
  - wind_onshore
  - demand_electricity
  - hydrogen_to_power
  - export_electricity
  - ccgt
  - pv_rooftop
  - import_electricity
  - wind_offshore
  techs_demand:
  - export_electricity
  - demand_electricity
  - curtailment
  techs_supply:
  - wind_offshore
  - lost_load
  - wind_onshore
  - ccgt
  - pv_rooftop
  - import_electricity
  - pv_farm
  techs_supply_plus: []
  techs_conversion: []
  techs_conversion_plus: []
  techs_storage:
  - battery
  - hydrogen_to_power
  techs_transmission_names:
  - hvac_transmission
  techs_transmission:
  - hvac_transmission:NL34
  - hvac_transmission:NL42
  - hvac_transmission:NL31
  - hvac_transmission:NL22
  - hvac_transmission:NL33
  - hvac_transmission:NL41
  - hvac_transmission:NL23
  - hvac_transmission:NL13
  - hvac_transmission:NL11
  - hvac_transmission:NL32
  - hvac_transmission:NL12
  - hvac_transmission:NL21
  techs:
  - battery
  - pv_farm
  - hvac_transmission
  - lost_load
  - curtailment
  - wind_onshore
  - demand_electricity
  - hydrogen_to_power
  - export_electricity
  - ccgt
  - pv_rooftop
  - import_electricity
  - wind_offshore
  coordinates:
  - lat
  - lon
  timesteps:
  - '2015-03-01 00:00:00'
  - '2015-03-01 01:00:00'
  - '2015-03-01 02:00:00'
  - '2015-03-01 03:00:00'
  - '2015-03-01 04:00:00'
  - '2015-03-01 05:00:00'
  - '2015-03-01 06:00:00'
  - '2015-03-01 07:00:00'
  - '2015-03-01 08:00:00'
  - '2015-03-01 09:00:00'
  - '2015-03-01 10:00:00'
  - '2015-03-01 11:00:00'
  - '2015-03-01 12:00:00'
  - '2015-03-01 13:00:00'
  - '2015-03-01 14:00:00'
  - '2015-03-01 15:00:00'
  - '2015-03-01 16:00:00'
  - '2015-03-01 17:00:00'
  - '2015-03-01 18:00:00'
  - '2015-03-01 19:00:00'
  - '2015-03-01 20:00:00'
  - '2015-03-01 21:00:00'
  - '2015-03-01 22:00:00'
  - '2015-03-01 23:00:00'
  - '2015-03-02 00:00:00'
  - '2015-03-02 01:00:00'
  - '2015-03-02 02:00:00'
  - '2015-03-02 03:00:00'
  - '2015-03-02 04:00:00'
  - '2015-03-02 05:00:00'
  - '2015-03-02 06:00:00'
  - '2015-03-02 07:00:00'
  - '2015-03-02 08:00:00'
  - '2015-03-02 09:00:00'
  - '2015-03-02 10:00:00'
  - '2015-03-02 11:00:00'
  - '2015-03-02 12:00:00'
  - '2015-03-02 13:00:00'
  - '2015-03-02 14:00:00'
  - '2015-03-02 15:00:00'
  - '2015-03-02 16:00:00'
  - '2015-03-02 17:00:00'
  - '2015-03-02 18:00:00'
  - '2015-03-02 19:00:00'
  - '2015-03-02 20:00:00'
  - '2015-03-02 21:00:00'
  - '2015-03-02 22:00:00'
  - '2015-03-02 23:00:00'
  - '2015-03-03 00:00:00'
  - '2015-03-03 01:00:00'
  - '2015-03-03 02:00:00'
  - '2015-03-03 03:00:00'
  - '2015-03-03 04:00:00'
  - '2015-03-03 05:00:00'
  - '2015-03-03 06:00:00'
  - '2015-03-03 07:00:00'
  - '2015-03-03 08:00:00'
  - '2015-03-03 09:00:00'
  - '2015-03-03 10:00:00'
  - '2015-03-03 11:00:00'
  - '2015-03-03 12:00:00'
  - '2015-03-03 13:00:00'
  - '2015-03-03 14:00:00'
  - '2015-03-03 15:00:00'
  - '2015-03-03 16:00:00'
  - '2015-03-03 17:00:00'
  - '2015-03-03 18:00:00'
  - '2015-03-03 19:00:00'
  - '2015-03-03 20:00:00'
  - '2015-03-03 21:00:00'
  - '2015-03-03 22:00:00'
  - '2015-03-03 23:00:00'
  - '2015-03-04 00:00:00'
  - '2015-03-04 01:00:00'
  - '2015-03-04 02:00:00'
  - '2015-03-04 03:00:00'
  - '2015-03-04 04:00:00'
  - '2015-03-04 05:00:00'
  - '2015-03-04 06:00:00'
  - '2015-03-04 07:00:00'
  - '2015-03-04 08:00:00'
  - '2015-03-04 09:00:00'
  - '2015-03-04 10:00:00'
  - '2015-03-04 11:00:00'
  - '2015-03-04 12:00:00'
  - '2015-03-04 13:00:00'
  - '2015-03-04 14:00:00'
  - '2015-03-04 15:00:00'
  - '2015-03-04 16:00:00'
  - '2015-03-04 17:00:00'
  - '2015-03-04 18:00:00'
  - '2015-03-04 19:00:00'
  - '2015-03-04 20:00:00'
  - '2015-03-04 21:00:00'
  - '2015-03-04 22:00:00'
  - '2015-03-04 23:00:00'
  - '2015-03-05 00:00:00'
  - '2015-03-05 01:00:00'
  - '2015-03-05 02:00:00'
  - '2015-03-05 03:00:00'
  - '2015-03-05 04:00:00'
  - '2015-03-05 05:00:00'
  - '2015-03-05 06:00:00'
  - '2015-03-05 07:00:00'
  - '2015-03-05 08:00:00'
  - '2015-03-05 09:00:00'
  - '2015-03-05 10:00:00'
  - '2015-03-05 11:00:00'
  - '2015-03-05 12:00:00'
  - '2015-03-05 13:00:00'
  - '2015-03-05 14:00:00'
  - '2015-03-05 15:00:00'
  - '2015-03-05 16:00:00'
  - '2015-03-05 17:00:00'
  - '2015-03-05 18:00:00'
  - '2015-03-05 19:00:00'
  - '2015-03-05 20:00:00'
  - '2015-03-05 21:00:00'
  - '2015-03-05 22:00:00'
  - '2015-03-05 23:00:00'
  - '2015-03-06 00:00:00'
  - '2015-03-06 01:00:00'
  - '2015-03-06 02:00:00'
  - '2015-03-06 03:00:00'
  - '2015-03-06 04:00:00'
  - '2015-03-06 05:00:00'
  - '2015-03-06 06:00:00'
  - '2015-03-06 07:00:00'
  - '2015-03-06 08:00:00'
  - '2015-03-06 09:00:00'
  - '2015-03-06 10:00:00'
  - '2015-03-06 11:00:00'
  - '2015-03-06 12:00:00'
  - '2015-03-06 13:00:00'
  - '2015-03-06 14:00:00'
  - '2015-03-06 15:00:00'
  - '2015-03-06 16:00:00'
  - '2015-03-06 17:00:00'
  - '2015-03-06 18:00:00'
  - '2015-03-06 19:00:00'
  - '2015-03-06 20:00:00'
  - '2015-03-06 21:00:00'
  - '2015-03-06 22:00:00'
  - '2015-03-06 23:00:00'
  - '2015-03-07 00:00:00'
  - '2015-03-07 01:00:00'
  - '2015-03-07 02:00:00'
  - '2015-03-07 03:00:00'
  - '2015-03-07 04:00:00'
  - '2015-03-07 05:00:00'
  - '2015-03-07 06:00:00'
  - '2015-03-07 07:00:00'
  - '2015-03-07 08:00:00'
  - '2015-03-07 09:00:00'
  - '2015-03-07 10:00:00'
  - '2015-03-07 11:00:00'
  - '2015-03-07 12:00:00'
  - '2015-03-07 13:00:00'
  - '2015-03-07 14:00:00'
  - '2015-03-07 15:00:00'
  - '2015-03-07 16:00:00'
  - '2015-03-07 17:00:00'
  - '2015-03-07 18:00:00'
  - '2015-03-07 19:00:00'
  - '2015-03-07 20:00:00'
  - '2015-03-07 21:00:00'
  - '2015-03-07 22:00:00'
  - '2015-03-07 23:00:00'
  - '2015-03-08 00:00:00'
  - '2015-03-08 01:00:00'
  - '2015-03-08 02:00:00'
  - '2015-03-08 03:00:00'
  - '2015-03-08 04:00:00'
  - '2015-03-08 05:00:00'
  - '2015-03-08 06:00:00'
  - '2015-03-08 07:00:00'
  - '2015-03-08 08:00:00'
  - '2015-03-08 09:00:00'
  - '2015-03-08 10:00:00'
  - '2015-03-08 11:00:00'
  - '2015-03-08 12:00:00'
  - '2015-03-08 13:00:00'
  - '2015-03-08 14:00:00'
  - '2015-03-08 15:00:00'
  - '2015-03-08 16:00:00'
  - '2015-03-08 17:00:00'
  - '2015-03-08 18:00:00'
  - '2015-03-08 19:00:00'
  - '2015-03-08 20:00:00'
  - '2015-03-08 21:00:00'
  - '2015-03-08 22:00:00'
  - '2015-03-08 23:00:00'
  - '2015-03-09 00:00:00'
  - '2015-03-09 01:00:00'
  - '2015-03-09 02:00:00'
  - '2015-03-09 03:00:00'
  - '2015-03-09 04:00:00'
  - '2015-03-09 05:00:00'
  - '2015-03-09 06:00:00'
  - '2015-03-09 07:00:00'
  - '2015-03-09 08:00:00'
  - '2015-03-09 09:00:00'
  - '2015-03-09 10:00:00'
  - '2015-03-09 11:00:00'
  - '2015-03-09 12:00:00'
  - '2015-03-09 13:00:00'
  - '2015-03-09 14:00:00'
  - '2015-03-09 15:00:00'
  - '2015-03-09 16:00:00'
  - '2015-03-09 17:00:00'
  - '2015-03-09 18:00:00'
  - '2015-03-09 19:00:00'
  - '2015-03-09 20:00:00'
  - '2015-03-09 21:00:00'
  - '2015-03-09 22:00:00'
  - '2015-03-09 23:00:00'
  - '2015-03-10 00:00:00'
  - '2015-03-10 01:00:00'
  - '2015-03-10 02:00:00'
  - '2015-03-10 03:00:00'
  - '2015-03-10 04:00:00'
  - '2015-03-10 05:00:00'
  - '2015-03-10 06:00:00'
  - '2015-03-10 07:00:00'
  - '2015-03-10 08:00:00'
  - '2015-03-10 09:00:00'
  - '2015-03-10 10:00:00'
  - '2015-03-10 11:00:00'
  - '2015-03-10 12:00:00'
  - '2015-03-10 13:00:00'
  - '2015-03-10 14:00:00'
  - '2015-03-10 15:00:00'
  - '2015-03-10 16:00:00'
  - '2015-03-10 17:00:00'
  - '2015-03-10 18:00:00'
  - '2015-03-10 19:00:00'
  - '2015-03-10 20:00:00'
  - '2015-03-10 21:00:00'
  - '2015-03-10 22:00:00'
  - '2015-03-10 23:00:00'
  - '2015-03-11 00:00:00'
  - '2015-03-11 01:00:00'
  - '2015-03-11 02:00:00'
  - '2015-03-11 03:00:00'
  - '2015-03-11 04:00:00'
  - '2015-03-11 05:00:00'
  - '2015-03-11 06:00:00'
  - '2015-03-11 07:00:00'
  - '2015-03-11 08:00:00'
  - '2015-03-11 09:00:00'
  - '2015-03-11 10:00:00'
  - '2015-03-11 11:00:00'
  - '2015-03-11 12:00:00'
  - '2015-03-11 13:00:00'
  - '2015-03-11 14:00:00'
  - '2015-03-11 15:00:00'
  - '2015-03-11 16:00:00'
  - '2015-03-11 17:00:00'
  - '2015-03-11 18:00:00'
  - '2015-03-11 19:00:00'
  - '2015-03-11 20:00:00'
  - '2015-03-11 21:00:00'
  - '2015-03-11 22:00:00'
  - '2015-03-11 23:00:00'
  - '2015-03-12 00:00:00'
  - '2015-03-12 01:00:00'
  - '2015-03-12 02:00:00'
  - '2015-03-12 03:00:00'
  - '2015-03-12 04:00:00'
  - '2015-03-12 05:00:00'
  - '2015-03-12 06:00:00'
  - '2015-03-12 07:00:00'
  - '2015-03-12 08:00:00'
  - '2015-03-12 09:00:00'
  - '2015-03-12 10:00:00'
  - '2015-03-12 11:00:00'
  - '2015-03-12 12:00:00'
  - '2015-03-12 13:00:00'
  - '2015-03-12 14:00:00'
  - '2015-03-12 15:00:00'
  - '2015-03-12 16:00:00'
  - '2015-03-12 17:00:00'
  - '2015-03-12 18:00:00'
  - '2015-03-12 19:00:00'
  - '2015-03-12 20:00:00'
  - '2015-03-12 21:00:00'
  - '2015-03-12 22:00:00'
  - '2015-03-12 23:00:00'
  - '2015-03-13 00:00:00'
  - '2015-03-13 01:00:00'
  - '2015-03-13 02:00:00'
  - '2015-03-13 03:00:00'
  - '2015-03-13 04:00:00'
  - '2015-03-13 05:00:00'
  - '2015-03-13 06:00:00'
  - '2015-03-13 07:00:00'
  - '2015-03-13 08:00:00'
  - '2015-03-13 09:00:00'
  - '2015-03-13 10:00:00'
  - '2015-03-13 11:00:00'
  - '2015-03-13 12:00:00'
  - '2015-03-13 13:00:00'
  - '2015-03-13 14:00:00'
  - '2015-03-13 15:00:00'
  - '2015-03-13 16:00:00'
  - '2015-03-13 17:00:00'
  - '2015-03-13 18:00:00'
  - '2015-03-13 19:00:00'
  - '2015-03-13 20:00:00'
  - '2015-03-13 21:00:00'
  - '2015-03-13 22:00:00'
  - '2015-03-13 23:00:00'
  - '2015-03-14 00:00:00'
  - '2015-03-14 01:00:00'
  - '2015-03-14 02:00:00'
  - '2015-03-14 03:00:00'
  - '2015-03-14 04:00:00'
  - '2015-03-14 05:00:00'
  - '2015-03-14 06:00:00'
  - '2015-03-14 07:00:00'
  - '2015-03-14 08:00:00'
  - '2015-03-14 09:00:00'
  - '2015-03-14 10:00:00'
  - '2015-03-14 11:00:00'
  - '2015-03-14 12:00:00'
  - '2015-03-14 13:00:00'
  - '2015-03-14 14:00:00'
  - '2015-03-14 15:00:00'
  - '2015-03-14 16:00:00'
  - '2015-03-14 17:00:00'
  - '2015-03-14 18:00:00'
  - '2015-03-14 19:00:00'
  - '2015-03-14 20:00:00'
  - '2015-03-14 21:00:00'
  - '2015-03-14 22:00:00'
  - '2015-03-14 23:00:00'
  - '2015-03-15 00:00:00'
  - '2015-03-15 01:00:00'
  - '2015-03-15 02:00:00'
  - '2015-03-15 03:00:00'
  - '2015-03-15 04:00:00'
  - '2015-03-15 05:00:00'
  - '2015-03-15 06:00:00'
  - '2015-03-15 07:00:00'
  - '2015-03-15 08:00:00'
  - '2015-03-15 09:00:00'
  - '2015-03-15 10:00:00'
  - '2015-03-15 11:00:00'
  - '2015-03-15 12:00:00'
  - '2015-03-15 13:00:00'
  - '2015-03-15 14:00:00'
  - '2015-03-15 15:00:00'
  - '2015-03-15 16:00:00'
  - '2015-03-15 17:00:00'
  - '2015-03-15 18:00:00'
  - '2015-03-15 19:00:00'
  - '2015-03-15 20:00:00'
  - '2015-03-15 21:00:00'
  - '2015-03-15 22:00:00'
  - '2015-03-15 23:00:00'
  - '2015-03-16 00:00:00'
  - '2015-03-16 01:00:00'
  - '2015-03-16 02:00:00'
  - '2015-03-16 03:00:00'
  - '2015-03-16 04:00:00'
  - '2015-03-16 05:00:00'
  - '2015-03-16 06:00:00'
  - '2015-03-16 07:00:00'
  - '2015-03-16 08:00:00'
  - '2015-03-16 09:00:00'
  - '2015-03-16 10:00:00'
  - '2015-03-16 11:00:00'
  - '2015-03-16 12:00:00'
  - '2015-03-16 13:00:00'
  - '2015-03-16 14:00:00'
  - '2015-03-16 15:00:00'
  - '2015-03-16 16:00:00'
  - '2015-03-16 17:00:00'
  - '2015-03-16 18:00:00'
  - '2015-03-16 19:00:00'
  - '2015-03-16 20:00:00'
  - '2015-03-16 21:00:00'
  - '2015-03-16 22:00:00'
  - '2015-03-16 23:00:00'
  - '2015-03-17 00:00:00'
  - '2015-03-17 01:00:00'
  - '2015-03-17 02:00:00'
  - '2015-03-17 03:00:00'
  - '2015-03-17 04:00:00'
  - '2015-03-17 05:00:00'
  - '2015-03-17 06:00:00'
  - '2015-03-17 07:00:00'
  - '2015-03-17 08:00:00'
  - '2015-03-17 09:00:00'
  - '2015-03-17 10:00:00'
  - '2015-03-17 11:00:00'
  - '2015-03-17 12:00:00'
  - '2015-03-17 13:00:00'
  - '2015-03-17 14:00:00'
  - '2015-03-17 15:00:00'
  - '2015-03-17 16:00:00'
  - '2015-03-17 17:00:00'
  - '2015-03-17 18:00:00'
  - '2015-03-17 19:00:00'
  - '2015-03-17 20:00:00'
  - '2015-03-17 21:00:00'
  - '2015-03-17 22:00:00'
  - '2015-03-17 23:00:00'
  - '2015-03-18 00:00:00'
  - '2015-03-18 01:00:00'
  - '2015-03-18 02:00:00'
  - '2015-03-18 03:00:00'
  - '2015-03-18 04:00:00'
  - '2015-03-18 05:00:00'
  - '2015-03-18 06:00:00'
  - '2015-03-18 07:00:00'
  - '2015-03-18 08:00:00'
  - '2015-03-18 09:00:00'
  - '2015-03-18 10:00:00'
  - '2015-03-18 11:00:00'
  - '2015-03-18 12:00:00'
  - '2015-03-18 13:00:00'
  - '2015-03-18 14:00:00'
  - '2015-03-18 15:00:00'
  - '2015-03-18 16:00:00'
  - '2015-03-18 17:00:00'
  - '2015-03-18 18:00:00'
  - '2015-03-18 19:00:00'
  - '2015-03-18 20:00:00'
  - '2015-03-18 21:00:00'
  - '2015-03-18 22:00:00'
  - '2015-03-18 23:00:00'
  - '2015-03-19 00:00:00'
  - '2015-03-19 01:00:00'
  - '2015-03-19 02:00:00'
  - '2015-03-19 03:00:00'
  - '2015-03-19 04:00:00'
  - '2015-03-19 05:00:00'
  - '2015-03-19 06:00:00'
  - '2015-03-19 07:00:00'
  - '2015-03-19 08:00:00'
  - '2015-03-19 09:00:00'
  - '2015-03-19 10:00:00'
  - '2015-03-19 11:00:00'
  - '2015-03-19 12:00:00'
  - '2015-03-19 13:00:00'
  - '2015-03-19 14:00:00'
  - '2015-03-19 15:00:00'
  - '2015-03-19 16:00:00'
  - '2015-03-19 17:00:00'
  - '2015-03-19 18:00:00'
  - '2015-03-19 19:00:00'
  - '2015-03-19 20:00:00'
  - '2015-03-19 21:00:00'
  - '2015-03-19 22:00:00'
  - '2015-03-19 23:00:00'
  - '2015-03-20 00:00:00'
  - '2015-03-20 01:00:00'
  - '2015-03-20 02:00:00'
  - '2015-03-20 03:00:00'
  - '2015-03-20 04:00:00'
  - '2015-03-20 05:00:00'
  - '2015-03-20 06:00:00'
  - '2015-03-20 07:00:00'
  - '2015-03-20 08:00:00'
  - '2015-03-20 09:00:00'
  - '2015-03-20 10:00:00'
  - '2015-03-20 11:00:00'
  - '2015-03-20 12:00:00'
  - '2015-03-20 13:00:00'
  - '2015-03-20 14:00:00'
  - '2015-03-20 15:00:00'
  - '2015-03-20 16:00:00'
  - '2015-03-20 17:00:00'
  - '2015-03-20 18:00:00'
  - '2015-03-20 19:00:00'
  - '2015-03-20 20:00:00'
  - '2015-03-20 21:00:00'
  - '2015-03-20 22:00:00'
  - '2015-03-20 23:00:00'
  - '2015-03-21 00:00:00'
  - '2015-03-21 01:00:00'
  - '2015-03-21 02:00:00'
  - '2015-03-21 03:00:00'
  - '2015-03-21 04:00:00'
  - '2015-03-21 05:00:00'
  - '2015-03-21 06:00:00'
  - '2015-03-21 07:00:00'
  - '2015-03-21 08:00:00'
  - '2015-03-21 09:00:00'
  - '2015-03-21 10:00:00'
  - '2015-03-21 11:00:00'
  - '2015-03-21 12:00:00'
  - '2015-03-21 13:00:00'
  - '2015-03-21 14:00:00'
  - '2015-03-21 15:00:00'
  - '2015-03-21 16:00:00'
  - '2015-03-21 17:00:00'
  - '2015-03-21 18:00:00'
  - '2015-03-21 19:00:00'
  - '2015-03-21 20:00:00'
  - '2015-03-21 21:00:00'
  - '2015-03-21 22:00:00'
  - '2015-03-21 23:00:00'
  - '2015-03-22 00:00:00'
  - '2015-03-22 01:00:00'
  - '2015-03-22 02:00:00'
  - '2015-03-22 03:00:00'
  - '2015-03-22 04:00:00'
  - '2015-03-22 05:00:00'
  - '2015-03-22 06:00:00'
  - '2015-03-22 07:00:00'
  - '2015-03-22 08:00:00'
  - '2015-03-22 09:00:00'
  - '2015-03-22 10:00:00'
  - '2015-03-22 11:00:00'
  - '2015-03-22 12:00:00'
  - '2015-03-22 13:00:00'
  - '2015-03-22 14:00:00'
  - '2015-03-22 15:00:00'
  - '2015-03-22 16:00:00'
  - '2015-03-22 17:00:00'
  - '2015-03-22 18:00:00'
  - '2015-03-22 19:00:00'
  - '2015-03-22 20:00:00'
  - '2015-03-22 21:00:00'
  - '2015-03-22 22:00:00'
  - '2015-03-22 23:00:00'
  - '2015-03-23 00:00:00'
  - '2015-03-23 01:00:00'
  - '2015-03-23 02:00:00'
  - '2015-03-23 03:00:00'
  - '2015-03-23 04:00:00'
  - '2015-03-23 05:00:00'
  - '2015-03-23 06:00:00'
  - '2015-03-23 07:00:00'
  - '2015-03-23 08:00:00'
  - '2015-03-23 09:00:00'
  - '2015-03-23 10:00:00'
  - '2015-03-23 11:00:00'
  - '2015-03-23 12:00:00'
  - '2015-03-23 13:00:00'
  - '2015-03-23 14:00:00'
  - '2015-03-23 15:00:00'
  - '2015-03-23 16:00:00'
  - '2015-03-23 17:00:00'
  - '2015-03-23 18:00:00'
  - '2015-03-23 19:00:00'
  - '2015-03-23 20:00:00'
  - '2015-03-23 21:00:00'
  - '2015-03-23 22:00:00'
  - '2015-03-23 23:00:00'
  - '2015-03-24 00:00:00'
  - '2015-03-24 01:00:00'
  - '2015-03-24 02:00:00'
  - '2015-03-24 03:00:00'
  - '2015-03-24 04:00:00'
  - '2015-03-24 05:00:00'
  - '2015-03-24 06:00:00'
  - '2015-03-24 07:00:00'
  - '2015-03-24 08:00:00'
  - '2015-03-24 09:00:00'
  - '2015-03-24 10:00:00'
  - '2015-03-24 11:00:00'
  - '2015-03-24 12:00:00'
  - '2015-03-24 13:00:00'
  - '2015-03-24 14:00:00'
  - '2015-03-24 15:00:00'
  - '2015-03-24 16:00:00'
  - '2015-03-24 17:00:00'
  - '2015-03-24 18:00:00'
  - '2015-03-24 19:00:00'
  - '2015-03-24 20:00:00'
  - '2015-03-24 21:00:00'
  - '2015-03-24 22:00:00'
  - '2015-03-24 23:00:00'
  - '2015-03-25 00:00:00'
  - '2015-03-25 01:00:00'
  - '2015-03-25 02:00:00'
  - '2015-03-25 03:00:00'
  - '2015-03-25 04:00:00'
  - '2015-03-25 05:00:00'
  - '2015-03-25 06:00:00'
  - '2015-03-25 07:00:00'
  - '2015-03-25 08:00:00'
  - '2015-03-25 09:00:00'
  - '2015-03-25 10:00:00'
  - '2015-03-25 11:00:00'
  - '2015-03-25 12:00:00'
  - '2015-03-25 13:00:00'
  - '2015-03-25 14:00:00'
  - '2015-03-25 15:00:00'
  - '2015-03-25 16:00:00'
  - '2015-03-25 17:00:00'
  - '2015-03-25 18:00:00'
  - '2015-03-25 19:00:00'
  - '2015-03-25 20:00:00'
  - '2015-03-25 21:00:00'
  - '2015-03-25 22:00:00'
  - '2015-03-25 23:00:00'
  - '2015-03-26 00:00:00'
  - '2015-03-26 01:00:00'
  - '2015-03-26 02:00:00'
  - '2015-03-26 03:00:00'
  - '2015-03-26 04:00:00'
  - '2015-03-26 05:00:00'
  - '2015-03-26 06:00:00'
  - '2015-03-26 07:00:00'
  - '2015-03-26 08:00:00'
  - '2015-03-26 09:00:00'
  - '2015-03-26 10:00:00'
  - '2015-03-26 11:00:00'
  - '2015-03-26 12:00:00'
  - '2015-03-26 13:00:00'
  - '2015-03-26 14:00:00'
  - '2015-03-26 15:00:00'
  - '2015-03-26 16:00:00'
  - '2015-03-26 17:00:00'
  - '2015-03-26 18:00:00'
  - '2015-03-26 19:00:00'
  - '2015-03-26 20:00:00'
  - '2015-03-26 21:00:00'
  - '2015-03-26 22:00:00'
  - '2015-03-26 23:00:00'
  - '2015-03-27 00:00:00'
  - '2015-03-27 01:00:00'
  - '2015-03-27 02:00:00'
  - '2015-03-27 03:00:00'
  - '2015-03-27 04:00:00'
  - '2015-03-27 05:00:00'
  - '2015-03-27 06:00:00'
  - '2015-03-27 07:00:00'
  - '2015-03-27 08:00:00'
  - '2015-03-27 09:00:00'
  - '2015-03-27 10:00:00'
  - '2015-03-27 11:00:00'
  - '2015-03-27 12:00:00'
  - '2015-03-27 13:00:00'
  - '2015-03-27 14:00:00'
  - '2015-03-27 15:00:00'
  - '2015-03-27 16:00:00'
  - '2015-03-27 17:00:00'
  - '2015-03-27 18:00:00'
  - '2015-03-27 19:00:00'
  - '2015-03-27 20:00:00'
  - '2015-03-27 21:00:00'
  - '2015-03-27 22:00:00'
  - '2015-03-27 23:00:00'
  - '2015-03-28 00:00:00'
  - '2015-03-28 01:00:00'
  - '2015-03-28 02:00:00'
  - '2015-03-28 03:00:00'
  - '2015-03-28 04:00:00'
  - '2015-03-28 05:00:00'
  - '2015-03-28 06:00:00'
  - '2015-03-28 07:00:00'
  - '2015-03-28 08:00:00'
  - '2015-03-28 09:00:00'
  - '2015-03-28 10:00:00'
  - '2015-03-28 11:00:00'
  - '2015-03-28 12:00:00'
  - '2015-03-28 13:00:00'
  - '2015-03-28 14:00:00'
  - '2015-03-28 15:00:00'
  - '2015-03-28 16:00:00'
  - '2015-03-28 17:00:00'
  - '2015-03-28 18:00:00'
  - '2015-03-28 19:00:00'
  - '2015-03-28 20:00:00'
  - '2015-03-28 21:00:00'
  - '2015-03-28 22:00:00'
  - '2015-03-28 23:00:00'
  - '2015-03-29 00:00:00'
  - '2015-03-29 01:00:00'
  - '2015-03-29 02:00:00'
  - '2015-03-29 03:00:00'
  - '2015-03-29 04:00:00'
  - '2015-03-29 05:00:00'
  - '2015-03-29 06:00:00'
  - '2015-03-29 07:00:00'
  - '2015-03-29 08:00:00'
  - '2015-03-29 09:00:00'
  - '2015-03-29 10:00:00'
  - '2015-03-29 11:00:00'
  - '2015-03-29 12:00:00'
  - '2015-03-29 13:00:00'
  - '2015-03-29 14:00:00'
  - '2015-03-29 15:00:00'
  - '2015-03-29 16:00:00'
  - '2015-03-29 17:00:00'
  - '2015-03-29 18:00:00'
  - '2015-03-29 19:00:00'
  - '2015-03-29 20:00:00'
  - '2015-03-29 21:00:00'
  - '2015-03-29 22:00:00'
  - '2015-03-29 23:00:00'
  - '2015-03-30 00:00:00'
  - '2015-03-30 01:00:00'
  - '2015-03-30 02:00:00'
  - '2015-03-30 03:00:00'
  - '2015-03-30 04:00:00'
  - '2015-03-30 05:00:00'
  - '2015-03-30 06:00:00'
  - '2015-03-30 07:00:00'
  - '2015-03-30 08:00:00'
  - '2015-03-30 09:00:00'
  - '2015-03-30 10:00:00'
  - '2015-03-30 11:00:00'
  - '2015-03-30 12:00:00'
  - '2015-03-30 13:00:00'
  - '2015-03-30 14:00:00'
  - '2015-03-30 15:00:00'
  - '2015-03-30 16:00:00'
  - '2015-03-30 17:00:00'
  - '2015-03-30 18:00:00'
  - '2015-03-30 19:00:00'
  - '2015-03-30 20:00:00'
  - '2015-03-30 21:00:00'
  - '2015-03-30 22:00:00'
  - '2015-03-30 23:00:00'
  - '2015-03-31 00:00:00'
  - '2015-03-31 01:00:00'
  - '2015-03-31 02:00:00'
  - '2015-03-31 03:00:00'
  - '2015-03-31 04:00:00'
  - '2015-03-31 05:00:00'
  - '2015-03-31 06:00:00'
  - '2015-03-31 07:00:00'
  - '2015-03-31 08:00:00'
  - '2015-03-31 09:00:00'
  - '2015-03-31 10:00:00'
  - '2015-03-31 11:00:00'
  - '2015-03-31 12:00:00'
  - '2015-03-31 13:00:00'
  - '2015-03-31 14:00:00'
  - '2015-03-31 15:00:00'
  - '2015-03-31 16:00:00'
  - '2015-03-31 17:00:00'
  - '2015-03-31 18:00:00'
  - '2015-03-31 19:00:00'
  - '2015-03-31 20:00:00'
  - '2015-03-31 21:00:00'
  - '2015-03-31 22:00:00'
  - '2015-03-31 23:00:00'
  techlists: []
  loc_carriers:
  - NL32::electricity
  - NL11::electricity
  - NL41::electricity
  - NL12::electricity
  - NL33::electricity
  - NL31::electricity
  - NL23::electricity
  - NL21::electricity
  - NL22::electricity
  - NL13::electricity
  - NL42::electricity
  - NL34::electricity
  loc_tech_carriers_con:
  - NL32::curtailment::electricity
  - NL12::battery::electricity
  - NL32::hvac_transmission:NL33::electricity
  - NL42::hydrogen_to_power::electricity
  - NL41::hvac_transmission:NL33::electricity
  - NL34::battery::electricity
  - NL33::hydrogen_to_power::electricity
  - NL21::battery::electricity
  - NL33::hvac_transmission:NL31::electricity
  - NL34::hvac_transmission:NL41::electricity
  - NL21::hvac_transmission:NL22::electricity
  - NL11::demand_electricity::electricity
  - NL33::hvac_transmission:NL41::electricity
  - NL11::hydrogen_to_power::electricity
  - NL21::demand_electricity::electricity
  - NL33::curtailment::electricity
  - NL22::battery::electricity
  - NL12::curtailment::electricity
  - NL13::demand_electricity::electricity
  - NL21::hydrogen_to_power::electricity
  - NL31::battery::electricity
  - NL21::hvac_transmission:NL13::electricity
  - NL31::demand_electricity::electricity
  - NL32::hvac_transmission:NL31::electricity
  - NL31::hvac_transmission:NL32::electricity
  - NL22::demand_electricity::electricity
  - NL42::hvac_transmission:NL41::electricity
  - NL21::hvac_transmission:NL23::electricity
  - NL11::hvac_transmission:NL12::electricity
  - NL32::battery::electricity
  - NL31::hydrogen_to_power::electricity
  - NL13::hvac_transmission:NL21::electricity
  - NL34::demand_electricity::electricity
  - NL23::hvac_transmission:NL12::electricity
  - NL41::hvac_transmission:NL34::electricity
  - NL31::curtailment::electricity
  - NL32::demand_electricity::electricity
  - NL34::curtailment::electricity
  - NL32::hydrogen_to_power::electricity
  - NL23::hydrogen_to_power::electricity
  - NL11::curtailment::electricity
  - NL22::hydrogen_to_power::electricity
  - NL13::battery::electricity
  - NL23::battery::electricity
  - NL42::battery::electricity
  - NL42::demand_electricity::electricity
  - NL23::hvac_transmission:NL32::electricity
  - NL41::curtailment::electricity
  - NL21::curtailment::electricity
  - NL12::hydrogen_to_power::electricity
  - NL32::hvac_transmission:NL23::electricity
  - NL22::hvac_transmission:NL21::electricity
  - NL12::hvac_transmission:NL23::electricity
  - NL13::hydrogen_to_power::electricity
  - NL41::demand_electricity::electricity
  - NL41::hvac_transmission:NL22::electricity
  - NL41::hydrogen_to_power::electricity
  - NL23::curtailment::electricity
  - NL22::curtailment::electricity
  - NL11::hvac_transmission:NL13::electricity
  - NL13::curtailment::electricity
  - NL23::hvac_transmission:NL21::electricity
  - NL33::demand_electricity::electricity
  - NL11::battery::electricity
  - NL13::hvac_transmission:NL11::electricity
  - NL23::demand_electricity::electricity
  - NL33::hvac_transmission:NL32::electricity
  - NL41::hvac_transmission:NL42::electricity
  - NL42::curtailment::electricity
  - NL33::battery::electricity
  - NL41::battery::electricity
  - NL12::demand_electricity::electricity
  - NL34::hydrogen_to_power::electricity
  - NL31::hvac_transmission:NL33::electricity
  - NL12::hvac_transmission:NL11::electricity
  - NL22::hvac_transmission:NL41::electricity
  loc_tech_carriers_conversion_all: []
  loc_tech_carriers_conversion_plus: []
  loc_tech_carriers_demand:
  - NL32::curtailment::electricity
  - NL11::demand_electricity::electricity
  - NL21::demand_electricity::electricity
  - NL33::curtailment::electricity
  - NL12::curtailment::electricity
  - NL13::demand_electricity::electricity
  - NL31::demand_electricity::electricity
  - NL22::demand_electricity::electricity
  - NL34::demand_electricity::electricity
  - NL31::curtailment::electricity
  - NL32::demand_electricity::electricity
  - NL34::curtailment::electricity
  - NL11::curtailment::electricity
  - NL42::demand_electricity::electricity
  - NL41::curtailment::electricity
  - NL21::curtailment::electricity
  - NL41::demand_electricity::electricity
  - NL23::curtailment::electricity
  - NL22::curtailment::electricity
  - NL13::curtailment::electricity
  - NL23::demand_electricity::electricity
  - NL33::demand_electricity::electricity
  - NL42::curtailment::electricity
  - NL12::demand_electricity::electricity
  loc_tech_carriers_export: []
  loc_tech_carriers_prod:
  - NL21::pv_farm::electricity
  - NL32::hvac_transmission:NL33::electricity
  - NL42::pv_rooftop::electricity
  - NL34::ccgt::electricity
  - NL33::hvac_transmission:NL31::electricity
  - NL23::wind_offshore::electricity
  - NL31::battery::electricity
  - NL21::hvac_transmission:NL13::electricity
  - NL12::pv_farm::electricity
  - NL12::ccgt::electricity
  - NL32::battery::electricity
  - NL33::pv_farm::electricity
  - NL13::wind_onshore::electricity
  - NL23::hvac_transmission:NL12::electricity
  - NL23::hydrogen_to_power::electricity
  - NL21::ccgt::electricity
  - NL41::ccgt::electricity
  - NL13::battery::electricity
  - NL23::wind_onshore::electricity
  - NL42::battery::electricity
  - NL22::hvac_transmission:NL21::electricity
  - NL11::pv_rooftop::electricity
  - NL12::hvac_transmission:NL23::electricity
  - NL13::hydrogen_to_power::electricity
  - NL34::pv_farm::electricity
  - NL41::hydrogen_to_power::electricity
  - NL11::hvac_transmission:NL13::electricity
  - NL31::lost_load::electricity
  - NL22::lost_load::electricity
  - NL33::battery::electricity
  - NL12::hvac_transmission:NL11::electricity
  - NL22::hvac_transmission:NL41::electricity
  - NL13::pv_rooftop::electricity
  - NL33::lost_load::electricity
  - NL34::battery::electricity
  - NL42::lost_load::electricity
  - NL31::pv_farm::electricity
  - NL42::pv_farm::electricity
  - NL21::hvac_transmission:NL23::electricity
  - NL41::pv_farm::electricity
  - NL11::hvac_transmission:NL12::electricity
  - NL23::ccgt::electricity
  - NL11::pv_farm::electricity
  - NL32::ccgt::electricity
  - NL13::hvac_transmission:NL21::electricity
  - NL32::wind_offshore::electricity
  - NL41::lost_load::electricity
  - NL33::pv_rooftop::electricity
  - NL12::pv_rooftop::electricity
  - NL32::pv_rooftop::electricity
  - NL13::hvac_transmission:NL11::electricity
  - NL32::pv_farm::electricity
  - NL11::ccgt::electricity
  - NL31::hvac_transmission:NL33::electricity
  - NL34::wind_offshore::electricity
  - NL13::pv_farm::electricity
  - NL12::battery::electricity
  - NL42::hydrogen_to_power::electricity
  - NL33::hydrogen_to_power::electricity
  - NL21::battery::electricity
  - NL42::ccgt::electricity
  - NL21::hvac_transmission:NL22::electricity
  - NL33::hvac_transmission:NL41::electricity
  - NL11::hydrogen_to_power::electricity
  - NL13::lost_load::electricity
  - NL34::pv_rooftop::electricity
  - NL22::battery::electricity
  - NL21::hydrogen_to_power::electricity
  - NL12::wind_onshore::electricity
  - NL31::hvac_transmission:NL32::electricity
  - NL31::wind_onshore::electricity
  - NL32::wind_onshore::electricity
  - NL11::lost_load::electricity
  - NL12::wind_offshore::electricity
  - NL11::wind_onshore::electricity
  - NL22::wind_onshore::electricity
  - NL33::wind_onshore::electricity
  - NL12::lost_load::electricity
  - NL21::lost_load::electricity
  - NL11::wind_offshore::electricity
  - NL21::wind_onshore::electricity
  - NL23::lost_load::electricity
  - NL32::hvac_transmission:NL23::electricity
  - NL22::ccgt::electricity
  - NL41::wind_onshore::electricity
  - NL41::hvac_transmission:NL34::electricity
  - NL33::hvac_transmission:NL32::electricity
  - NL22::pv_farm::electricity
  - NL34::hydrogen_to_power::electricity
  - NL34::lost_load::electricity
  - NL31::pv_rooftop::electricity
  - NL23::pv_farm::electricity
  - NL41::hvac_transmission:NL33::electricity
  - NL34::hvac_transmission:NL41::electricity
  - NL34::wind_onshore::electricity
  - NL33::wind_offshore::electricity
  - NL32::hvac_transmission:NL31::electricity
  - NL42::hvac_transmission:NL41::electricity
  - NL31::ccgt::electricity
  - NL41::pv_rooftop::electricity
  - NL31::hydrogen_to_power::electricity
  - NL23::pv_rooftop::electricity
  - NL32::hydrogen_to_power::electricity
  - NL42::wind_onshore::electricity
  - NL22::pv_rooftop::electricity
  - NL22::hydrogen_to_power::electricity
  - NL23::battery::electricity
  - NL32::lost_load::electricity
  - NL21::pv_rooftop::electricity
  - NL23::hvac_transmission:NL32::electricity
  - NL12::hydrogen_to_power::electricity
  - NL13::ccgt::electricity
  - NL41::hvac_transmission:NL22::electricity
  - NL33::ccgt::electricity
  - NL23::hvac_transmission:NL21::electricity
  - NL11::battery::electricity
  - NL41::hvac_transmission:NL42::electricity
  - NL41::battery::electricity
  loc_tech_carriers_supply_all:
  - NL21::pv_farm::electricity
  - NL13::pv_rooftop::electricity
  - NL42::pv_rooftop::electricity
  - NL33::lost_load::electricity
  - NL34::ccgt::electricity
  - NL42::lost_load::electricity
  - NL42::ccgt::electricity
  - NL31::pv_farm::electricity
  - NL42::pv_farm::electricity
  - NL13::lost_load::electricity
  - NL23::wind_offshore::electricity
  - NL34::pv_rooftop::electricity
  - NL34::wind_onshore::electricity
  - NL33::wind_offshore::electricity
  - NL12::pv_farm::electricity
  - NL12::ccgt::electricity
  - NL12::wind_onshore::electricity
  - NL31::wind_onshore::electricity
  - NL31::ccgt::electricity
  - NL41::pv_farm::electricity
  - NL23::ccgt::electricity
  - NL33::pv_farm::electricity
  - NL32::wind_onshore::electricity
  - NL11::pv_farm::electricity
  - NL41::pv_rooftop::electricity
  - NL32::ccgt::electricity
  - NL11::lost_load::electricity
  - NL34::wind_offshore::electricity
  - NL13::wind_onshore::electricity
  - NL32::wind_offshore::electricity
  - NL12::wind_offshore::electricity
  - NL11::wind_onshore::electricity
  - NL22::wind_onshore::electricity
  - NL33::wind_onshore::electricity
  - NL41::ccgt::electricity
  - NL21::ccgt::electricity
  - NL42::wind_onshore::electricity
  - NL12::lost_load::electricity
  - NL23::pv_rooftop::electricity
  - NL22::pv_rooftop::electricity
  - NL23::wind_onshore::electricity
  - NL32::lost_load::electricity
  - NL21::lost_load::electricity
  - NL41::lost_load::electricity
  - NL21::pv_rooftop::electricity
  - NL33::pv_rooftop::electricity
  - NL11::wind_offshore::electricity
  - NL21::wind_onshore::electricity
  - NL12::pv_rooftop::electricity
  - NL23::lost_load::electricity
  - NL11::pv_rooftop::electricity
  - NL34::pv_farm::electricity
  - NL22::ccgt::electricity
  - NL13::ccgt::electricity
  - NL32::pv_rooftop::electricity
  - NL33::ccgt::electricity
  - NL41::wind_onshore::electricity
  - NL31::lost_load::electricity
  - NL22::lost_load::electricity
  - NL22::pv_farm::electricity
  - NL32::pv_farm::electricity
  - NL11::ccgt::electricity
  - NL34::lost_load::electricity
  - NL31::pv_rooftop::electricity
  - NL23::pv_farm::electricity
  - NL13::pv_farm::electricity
  loc_tech_carriers_supply_conversion_all:
  - NL21::pv_farm::electricity
  - NL42::pv_rooftop::electricity
  - NL34::ccgt::electricity
  - NL42::ccgt::electricity
  - NL13::lost_load::electricity
  - NL23::wind_offshore::electricity
  - NL34::pv_rooftop::electricity
  - NL12::pv_farm::electricity
  - NL12::ccgt::electricity
  - NL12::wind_onshore::electricity
  - NL31::wind_onshore::electricity
  - NL33::pv_farm::electricity
  - NL32::wind_onshore::electricity
  - NL11::lost_load::electricity
  - NL13::wind_onshore::electricity
  - NL12::wind_offshore::electricity
  - NL11::wind_onshore::electricity
  - NL22::wind_onshore::electricity
  - NL33::wind_onshore::electricity
  - NL41::ccgt::electricity
  - NL21::ccgt::electricity
  - NL12::lost_load::electricity
  - NL23::wind_onshore::electricity
  - NL21::lost_load::electricity
  - NL11::wind_offshore::electricity
  - NL21::wind_onshore::electricity
  - NL23::lost_load::electricity
  - NL11::pv_rooftop::electricity
  - NL34::pv_farm::electricity
  - NL22::ccgt::electricity
  - NL41::wind_onshore::electricity
  - NL31::lost_load::electricity
  - NL22::lost_load::electricity
  - NL22::pv_farm::electricity
  - NL34::lost_load::electricity
  - NL31::pv_rooftop::electricity
  - NL23::pv_farm::electricity
  - NL13::pv_rooftop::electricity
  - NL33::lost_load::electricity
  - NL42::lost_load::electricity
  - NL31::pv_farm::electricity
  - NL42::pv_farm::electricity
  - NL34::wind_onshore::electricity
  - NL33::wind_offshore::electricity
  - NL31::ccgt::electricity
  - NL41::pv_farm::electricity
  - NL23::ccgt::electricity
  - NL11::pv_farm::electricity
  - NL32::ccgt::electricity
  - NL41::pv_rooftop::electricity
  - NL32::wind_offshore::electricity
  - NL23::pv_rooftop::electricity
  - NL42::wind_onshore::electricity
  - NL22::pv_rooftop::electricity
  - NL32::lost_load::electricity
  - NL41::lost_load::electricity
  - NL21::pv_rooftop::electricity
  - NL33::pv_rooftop::electricity
  - NL12::pv_rooftop::electricity
  - NL32::pv_rooftop::electricity
  - NL13::ccgt::electricity
  - NL33::ccgt::electricity
  - NL32::pv_farm::electricity
  - NL11::ccgt::electricity
  - NL34::wind_offshore::electricity
  - NL13::pv_farm::electricity
  loc_techs:
  - NL34::battery
  - NL11::demand_electricity
  - NL32::demand_electricity
  - NL33::demand_electricity
  - NL12::wind_onshore
  - NL21::hvac_transmission:NL13
  - NL23::lost_load
  - NL33::hvac_transmission:NL32
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL42::hydrogen_to_power
  - NL41::hvac_transmission:NL22
  - NL31::lost_load
  - NL23::hvac_transmission:NL32
  - NL42::demand_electricity
  - NL33::hydrogen_to_power
  - NL41::pv_rooftop
  - NL22::ccgt
  - NL31::ccgt
  - NL33::lost_load
  - NL42::hvac_transmission:NL41
  - NL13::ccgt
  - NL13::hvac_transmission:NL21
  - NL23::hvac_transmission:NL21
  - NL31::curtailment
  - NL22::hvac_transmission:NL41
  - NL31::hvac_transmission:NL32
  - NL21::wind_onshore
  - NL21::demand_electricity
  - NL23::curtailment
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL21::hvac_transmission:NL22
  - NL12::hydrogen_to_power
  - NL41::battery
  - NL31::hvac_transmission:NL33
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::curtailment
  - NL23::hvac_transmission:NL12
  - NL22::pv_farm
  - NL13::lost_load
  - NL11::battery
  - NL42::lost_load
  - NL21::hvac_transmission:NL23
  - NL32::hvac_transmission:NL23
  - NL22::wind_onshore
  - NL42::ccgt
  - NL22::lost_load
  - NL41::ccgt
  - NL12::pv_farm
  - NL13::demand_electricity
  - NL33::ccgt
  - NL34::ccgt
  - NL41::hvac_transmission:NL42
  - NL41::pv_farm
  - NL22::battery
  - NL21::ccgt
  - NL33::pv_rooftop
  - NL32::wind_onshore
  - NL12::demand_electricity
  - NL12::ccgt
  - NL33::hvac_transmission:NL31
  - NL42::curtailment
  - NL21::hydrogen_to_power
  - NL32::battery
  - NL42::pv_farm
  - NL21::curtailment
  - NL21::battery
  - NL34::demand_electricity
  - NL23::ccgt
  - NL13::hvac_transmission:NL11
  - NL32::hvac_transmission:NL31
  - NL32::hydrogen_to_power
  - NL34::wind_offshore
  - NL13::hydrogen_to_power
  - NL42::wind_onshore
  - NL23::demand_electricity
  - NL13::curtailment
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL23::wind_offshore
  - NL34::pv_farm
  - NL11::hvac_transmission:NL13
  - NL12::curtailment
  - NL41::demand_electricity
  - NL34::curtailment
  - NL12::lost_load
  - NL41::lost_load
  - NL12::battery
  - NL11::pv_rooftop
  - NL23::hydrogen_to_power
  - NL12::hvac_transmission:NL23
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL42::pv_rooftop
  - NL32::wind_offshore
  - NL41::curtailment
  - NL11::ccgt
  - NL13::battery
  - NL23::pv_rooftop
  - NL31::battery
  - NL22::curtailment
  - NL22::pv_rooftop
  - NL34::pv_rooftop
  - NL31::demand_electricity
  - NL32::hvac_transmission:NL33
  - NL11::lost_load
  - NL22::demand_electricity
  - NL33::hvac_transmission:NL41
  - NL33::battery
  - NL22::hvac_transmission:NL21
  - NL41::hvac_transmission:NL34
  - NL11::pv_farm
  - NL32::lost_load
  - NL32::ccgt
  - NL34::hydrogen_to_power
  - NL34::lost_load
  - NL31::wind_onshore
  - NL34::hvac_transmission:NL41
  - NL33::curtailment
  - NL13::wind_onshore
  - NL11::hydrogen_to_power
  - NL12::hvac_transmission:NL11
  - NL32::pv_rooftop
  - NL11::curtailment
  - NL41::hvac_transmission:NL33
  - NL42::battery
  - NL31::pv_rooftop
  - NL41::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL11::hvac_transmission:NL12
  - NL22::hydrogen_to_power
  - NL21::lost_load
  - NL23::battery
  - NL33::wind_offshore
  loc_techs_area: []
  loc_techs_asynchronous_prod_con: []
  loc_techs_conversion: []
  loc_techs_conversion_all: []
  loc_techs_conversion_plus: []
  loc_techs_cost:
  - NL34::battery
  - NL12::wind_onshore
  - NL21::hvac_transmission:NL13
  - NL23::lost_load
  - NL33::hvac_transmission:NL32
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL42::hydrogen_to_power
  - NL41::hvac_transmission:NL22
  - NL31::lost_load
  - NL23::hvac_transmission:NL32
  - NL33::hydrogen_to_power
  - NL41::pv_rooftop
  - NL22::ccgt
  - NL31::ccgt
  - NL33::lost_load
  - NL42::hvac_transmission:NL41
  - NL13::ccgt
  - NL13::hvac_transmission:NL21
  - NL23::hvac_transmission:NL21
  - NL31::curtailment
  - NL22::hvac_transmission:NL41
  - NL31::hvac_transmission:NL32
  - NL21::wind_onshore
  - NL23::curtailment
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL21::hvac_transmission:NL22
  - NL41::battery
  - NL12::hydrogen_to_power
  - NL31::hvac_transmission:NL33
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::curtailment
  - NL23::hvac_transmission:NL12
  - NL22::pv_farm
  - NL13::lost_load
  - NL11::battery
  - NL42::lost_load
  - NL21::hvac_transmission:NL23
  - NL32::hvac_transmission:NL23
  - NL22::wind_onshore
  - NL42::ccgt
  - NL22::lost_load
  - NL41::ccgt
  - NL12::pv_farm
  - NL33::ccgt
  - NL34::ccgt
  - NL41::hvac_transmission:NL42
  - NL41::pv_farm
  - NL22::battery
  - NL21::ccgt
  - NL33::pv_rooftop
  - NL32::wind_onshore
  - NL12::ccgt
  - NL33::hvac_transmission:NL31
  - NL42::curtailment
  - NL21::hydrogen_to_power
  - NL32::battery
  - NL42::pv_farm
  - NL21::curtailment
  - NL21::battery
  - NL23::ccgt
  - NL13::hvac_transmission:NL11
  - NL32::hvac_transmission:NL31
  - NL32::hydrogen_to_power
  - NL34::wind_offshore
  - NL13::hydrogen_to_power
  - NL42::wind_onshore
  - NL13::curtailment
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL23::wind_offshore
  - NL34::pv_farm
  - NL11::hvac_transmission:NL13
  - NL12::curtailment
  - NL34::curtailment
  - NL12::lost_load
  - NL41::lost_load
  - NL12::battery
  - NL11::pv_rooftop
  - NL23::hydrogen_to_power
  - NL12::hvac_transmission:NL23
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL42::pv_rooftop
  - NL32::wind_offshore
  - NL41::curtailment
  - NL11::ccgt
  - NL13::battery
  - NL23::pv_rooftop
  - NL31::battery
  - NL22::curtailment
  - NL22::pv_rooftop
  - NL34::pv_rooftop
  - NL32::hvac_transmission:NL33
  - NL33::hvac_transmission:NL41
  - NL11::lost_load
  - NL22::hvac_transmission:NL21
  - NL41::hvac_transmission:NL34
  - NL33::battery
  - NL11::pv_farm
  - NL32::lost_load
  - NL32::ccgt
  - NL34::hydrogen_to_power
  - NL34::lost_load
  - NL31::wind_onshore
  - NL34::hvac_transmission:NL41
  - NL33::curtailment
  - NL13::wind_onshore
  - NL11::hydrogen_to_power
  - NL12::hvac_transmission:NL11
  - NL32::pv_rooftop
  - NL11::curtailment
  - NL41::hvac_transmission:NL33
  - NL42::battery
  - NL31::pv_rooftop
  - NL41::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL11::hvac_transmission:NL12
  - NL22::hydrogen_to_power
  - NL21::lost_load
  - NL23::battery
  - NL33::wind_offshore
  loc_techs_costs_export: []
  loc_techs_demand:
  - NL21::curtailment
  - NL34::demand_electricity
  - NL11::demand_electricity
  - NL32::demand_electricity
  - NL33::demand_electricity
  - NL23::demand_electricity
  - NL13::curtailment
  - NL42::demand_electricity
  - NL12::curtailment
  - NL41::demand_electricity
  - NL34::curtailment
  - NL31::curtailment
  - NL21::demand_electricity
  - NL23::curtailment
  - NL41::curtailment
  - NL32::curtailment
  - NL22::curtailment
  - NL31::demand_electricity
  - NL22::demand_electricity
  - NL13::demand_electricity
  - NL33::curtailment
  - NL11::curtailment
  - NL12::demand_electricity
  - NL42::curtailment
  loc_techs_export: []
  loc_techs_finite_resource:
  - NL11::demand_electricity
  - NL33::demand_electricity
  - NL12::wind_onshore
  - NL23::lost_load
  - NL42::demand_electricity
  - NL21::wind_onshore
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL13::lost_load
  - NL42::lost_load
  - NL22::wind_onshore
  - NL22::lost_load
  - NL41::pv_farm
  - NL33::pv_rooftop
  - NL42::curtailment
  - NL21::curtailment
  - NL34::demand_electricity
  - NL42::wind_onshore
  - NL23::demand_electricity
  - NL13::curtailment
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL34::pv_farm
  - NL34::curtailment
  - NL41::lost_load
  - NL13::pv_farm
  - NL31::pv_farm
  - NL42::pv_rooftop
  - NL41::curtailment
  - NL22::curtailment
  - NL22::pv_rooftop
  - NL34::pv_rooftop
  - NL31::demand_electricity
  - NL11::lost_load
  - NL11::pv_farm
  - NL32::lost_load
  - NL33::curtailment
  - NL13::wind_onshore
  - NL31::pv_rooftop
  - NL21::lost_load
  - NL32::demand_electricity
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL31::lost_load
  - NL41::pv_rooftop
  - NL33::lost_load
  - NL31::curtailment
  - NL21::demand_electricity
  - NL23::curtailment
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::curtailment
  - NL22::pv_farm
  - NL12::pv_farm
  - NL13::demand_electricity
  - NL32::wind_onshore
  - NL12::demand_electricity
  - NL42::pv_farm
  - NL34::wind_offshore
  - NL23::wind_onshore
  - NL23::wind_offshore
  - NL12::curtailment
  - NL41::demand_electricity
  - NL12::lost_load
  - NL11::pv_rooftop
  - NL11::wind_offshore
  - NL32::wind_offshore
  - NL23::pv_rooftop
  - NL22::demand_electricity
  - NL34::lost_load
  - NL31::wind_onshore
  - NL32::pv_rooftop
  - NL11::curtailment
  - NL33::wind_offshore
  loc_techs_finite_resource_demand:
  - NL21::curtailment
  - NL34::demand_electricity
  - NL11::demand_electricity
  - NL32::demand_electricity
  - NL33::demand_electricity
  - NL23::demand_electricity
  - NL13::curtailment
  - NL42::demand_electricity
  - NL12::curtailment
  - NL41::demand_electricity
  - NL34::curtailment
  - NL31::curtailment
  - NL21::demand_electricity
  - NL23::curtailment
  - NL41::curtailment
  - NL32::curtailment
  - NL22::curtailment
  - NL31::demand_electricity
  - NL22::demand_electricity
  - NL13::demand_electricity
  - NL33::curtailment
  - NL11::curtailment
  - NL12::demand_electricity
  - NL42::curtailment
  loc_techs_finite_resource_supply:
  - NL34::wind_offshore
  - NL12::wind_onshore
  - NL23::lost_load
  - NL42::wind_onshore
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL23::wind_onshore
  - NL23::wind_offshore
  - NL32::pv_farm
  - NL12::pv_rooftop
  - NL41::wind_onshore
  - NL34::wind_onshore
  - NL31::lost_load
  - NL34::pv_farm
  - NL41::pv_rooftop
  - NL33::lost_load
  - NL12::lost_load
  - NL41::lost_load
  - NL21::wind_onshore
  - NL23::pv_farm
  - NL11::pv_rooftop
  - NL33::wind_onshore
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL11::wind_onshore
  - NL42::pv_rooftop
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::wind_offshore
  - NL23::pv_rooftop
  - NL22::pv_farm
  - NL22::pv_rooftop
  - NL13::lost_load
  - NL34::pv_rooftop
  - NL42::lost_load
  - NL11::lost_load
  - NL22::wind_onshore
  - NL11::pv_farm
  - NL22::lost_load
  - NL32::lost_load
  - NL34::lost_load
  - NL31::wind_onshore
  - NL12::pv_farm
  - NL13::wind_onshore
  - NL41::pv_farm
  - NL32::wind_onshore
  - NL33::pv_rooftop
  - NL32::pv_rooftop
  - NL31::pv_rooftop
  - NL21::lost_load
  - NL33::wind_offshore
  - NL42::pv_farm
  loc_techs_finite_resource_supply_plus: []
  loc_techs_in_2: []
  loc_techs_in_3: []
  loc_techs_investment_cost:
  - NL34::battery
  - NL12::wind_onshore
  - NL21::hvac_transmission:NL13
  - NL33::hvac_transmission:NL32
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL42::hydrogen_to_power
  - NL41::hvac_transmission:NL22
  - NL23::hvac_transmission:NL32
  - NL33::hydrogen_to_power
  - NL41::pv_rooftop
  - NL22::ccgt
  - NL31::ccgt
  - NL42::hvac_transmission:NL41
  - NL13::hvac_transmission:NL21
  - NL13::ccgt
  - NL23::hvac_transmission:NL21
  - NL22::hvac_transmission:NL41
  - NL31::hvac_transmission:NL32
  - NL21::wind_onshore
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL21::hvac_transmission:NL22
  - NL12::hydrogen_to_power
  - NL41::battery
  - NL31::hvac_transmission:NL33
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL23::hvac_transmission:NL12
  - NL22::pv_farm
  - NL11::battery
  - NL21::hvac_transmission:NL23
  - NL32::hvac_transmission:NL23
  - NL22::wind_onshore
  - NL42::ccgt
  - NL41::ccgt
  - NL12::pv_farm
  - NL33::ccgt
  - NL34::ccgt
  - NL41::hvac_transmission:NL42
  - NL41::pv_farm
  - NL22::battery
  - NL21::ccgt
  - NL33::pv_rooftop
  - NL32::wind_onshore
  - NL12::ccgt
  - NL33::hvac_transmission:NL31
  - NL21::hydrogen_to_power
  - NL32::battery
  - NL42::pv_farm
  - NL21::battery
  - NL23::ccgt
  - NL13::hvac_transmission:NL11
  - NL32::hvac_transmission:NL31
  - NL32::hydrogen_to_power
  - NL34::wind_offshore
  - NL13::hydrogen_to_power
  - NL42::wind_onshore
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL23::wind_offshore
  - NL34::pv_farm
  - NL11::hvac_transmission:NL13
  - NL12::battery
  - NL11::pv_rooftop
  - NL23::hydrogen_to_power
  - NL12::hvac_transmission:NL23
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL42::pv_rooftop
  - NL32::wind_offshore
  - NL11::ccgt
  - NL13::battery
  - NL23::pv_rooftop
  - NL31::battery
  - NL22::pv_rooftop
  - NL32::hvac_transmission:NL33
  - NL34::pv_rooftop
  - NL33::hvac_transmission:NL41
  - NL22::hvac_transmission:NL21
  - NL41::hvac_transmission:NL34
  - NL33::battery
  - NL11::pv_farm
  - NL32::ccgt
  - NL31::wind_onshore
  - NL34::hydrogen_to_power
  - NL34::hvac_transmission:NL41
  - NL13::wind_onshore
  - NL12::hvac_transmission:NL11
  - NL11::hydrogen_to_power
  - NL32::pv_rooftop
  - NL41::hvac_transmission:NL33
  - NL42::battery
  - NL31::pv_rooftop
  - NL41::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL11::hvac_transmission:NL12
  - NL22::hydrogen_to_power
  - NL23::battery
  - NL33::wind_offshore
  loc_techs_milp: []
  loc_techs_non_conversion:
  - NL34::battery
  - NL11::demand_electricity
  - NL32::demand_electricity
  - NL33::demand_electricity
  - NL12::wind_onshore
  - NL21::hvac_transmission:NL13
  - NL23::lost_load
  - NL33::hvac_transmission:NL32
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL42::hydrogen_to_power
  - NL41::hvac_transmission:NL22
  - NL31::lost_load
  - NL23::hvac_transmission:NL32
  - NL42::demand_electricity
  - NL33::hydrogen_to_power
  - NL41::pv_rooftop
  - NL22::ccgt
  - NL31::ccgt
  - NL33::lost_load
  - NL42::hvac_transmission:NL41
  - NL13::ccgt
  - NL13::hvac_transmission:NL21
  - NL23::hvac_transmission:NL21
  - NL31::curtailment
  - NL22::hvac_transmission:NL41
  - NL31::hvac_transmission:NL32
  - NL21::wind_onshore
  - NL21::demand_electricity
  - NL23::curtailment
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL21::hvac_transmission:NL22
  - NL41::battery
  - NL12::hydrogen_to_power
  - NL31::hvac_transmission:NL33
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::curtailment
  - NL23::hvac_transmission:NL12
  - NL22::pv_farm
  - NL13::lost_load
  - NL11::battery
  - NL42::lost_load
  - NL21::hvac_transmission:NL23
  - NL32::hvac_transmission:NL23
  - NL22::wind_onshore
  - NL42::ccgt
  - NL22::lost_load
  - NL41::ccgt
  - NL12::pv_farm
  - NL13::demand_electricity
  - NL33::ccgt
  - NL34::ccgt
  - NL41::hvac_transmission:NL42
  - NL41::pv_farm
  - NL22::battery
  - NL21::ccgt
  - NL33::pv_rooftop
  - NL32::wind_onshore
  - NL12::demand_electricity
  - NL12::ccgt
  - NL33::hvac_transmission:NL31
  - NL42::curtailment
  - NL21::hydrogen_to_power
  - NL32::battery
  - NL42::pv_farm
  - NL21::curtailment
  - NL21::battery
  - NL34::demand_electricity
  - NL23::ccgt
  - NL13::hvac_transmission:NL11
  - NL32::hvac_transmission:NL31
  - NL32::hydrogen_to_power
  - NL34::wind_offshore
  - NL13::hydrogen_to_power
  - NL42::wind_onshore
  - NL23::demand_electricity
  - NL13::curtailment
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL23::wind_offshore
  - NL34::pv_farm
  - NL11::hvac_transmission:NL13
  - NL12::curtailment
  - NL41::demand_electricity
  - NL34::curtailment
  - NL12::lost_load
  - NL41::lost_load
  - NL12::battery
  - NL11::pv_rooftop
  - NL23::hydrogen_to_power
  - NL12::hvac_transmission:NL23
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL42::pv_rooftop
  - NL32::wind_offshore
  - NL41::curtailment
  - NL11::ccgt
  - NL13::battery
  - NL23::pv_rooftop
  - NL31::battery
  - NL22::curtailment
  - NL22::pv_rooftop
  - NL34::pv_rooftop
  - NL31::demand_electricity
  - NL32::hvac_transmission:NL33
  - NL11::lost_load
  - NL22::demand_electricity
  - NL33::hvac_transmission:NL41
  - NL33::battery
  - NL22::hvac_transmission:NL21
  - NL41::hvac_transmission:NL34
  - NL11::pv_farm
  - NL32::lost_load
  - NL32::ccgt
  - NL34::hydrogen_to_power
  - NL34::lost_load
  - NL31::wind_onshore
  - NL34::hvac_transmission:NL41
  - NL33::curtailment
  - NL13::wind_onshore
  - NL11::hydrogen_to_power
  - NL12::hvac_transmission:NL11
  - NL32::pv_rooftop
  - NL11::curtailment
  - NL41::hvac_transmission:NL33
  - NL42::battery
  - NL31::pv_rooftop
  - NL41::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL11::hvac_transmission:NL12
  - NL22::hydrogen_to_power
  - NL21::lost_load
  - NL23::battery
  - NL33::wind_offshore
  loc_techs_non_transmission:
  - NL11::demand_electricity
  - NL33::demand_electricity
  - NL12::wind_onshore
  - NL23::lost_load
  - NL42::hydrogen_to_power
  - NL42::demand_electricity
  - NL33::hydrogen_to_power
  - NL22::ccgt
  - NL21::wind_onshore
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL12::hydrogen_to_power
  - NL41::battery
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL13::lost_load
  - NL11::battery
  - NL42::lost_load
  - NL22::wind_onshore
  - NL22::lost_load
  - NL41::ccgt
  - NL33::ccgt
  - NL34::ccgt
  - NL41::pv_farm
  - NL22::battery
  - NL33::pv_rooftop
  - NL12::ccgt
  - NL42::curtailment
  - NL32::battery
  - NL21::curtailment
  - NL34::demand_electricity
  - NL23::ccgt
  - NL13::hydrogen_to_power
  - NL42::wind_onshore
  - NL23::demand_electricity
  - NL13::curtailment
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL34::pv_farm
  - NL34::curtailment
  - NL41::lost_load
  - NL23::hydrogen_to_power
  - NL13::pv_farm
  - NL31::pv_farm
  - NL42::pv_rooftop
  - NL41::curtailment
  - NL13::battery
  - NL31::battery
  - NL22::curtailment
  - NL22::pv_rooftop
  - NL34::pv_rooftop
  - NL31::demand_electricity
  - NL11::lost_load
  - NL11::pv_farm
  - NL32::lost_load
  - NL32::ccgt
  - NL34::hydrogen_to_power
  - NL33::curtailment
  - NL13::wind_onshore
  - NL11::hydrogen_to_power
  - NL42::battery
  - NL31::pv_rooftop
  - NL41::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL22::hydrogen_to_power
  - NL21::lost_load
  - NL23::battery
  - NL34::battery
  - NL32::demand_electricity
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL31::lost_load
  - NL41::pv_rooftop
  - NL31::ccgt
  - NL33::lost_load
  - NL13::ccgt
  - NL31::curtailment
  - NL21::demand_electricity
  - NL23::curtailment
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::curtailment
  - NL22::pv_farm
  - NL42::ccgt
  - NL12::pv_farm
  - NL13::demand_electricity
  - NL21::ccgt
  - NL32::wind_onshore
  - NL12::demand_electricity
  - NL21::hydrogen_to_power
  - NL42::pv_farm
  - NL21::battery
  - NL32::hydrogen_to_power
  - NL34::wind_offshore
  - NL23::wind_onshore
  - NL23::wind_offshore
  - NL12::curtailment
  - NL41::demand_electricity
  - NL12::lost_load
  - NL12::battery
  - NL11::pv_rooftop
  - NL11::wind_offshore
  - NL32::wind_offshore
  - NL11::ccgt
  - NL23::pv_rooftop
  - NL22::demand_electricity
  - NL33::battery
  - NL34::lost_load
  - NL31::wind_onshore
  - NL32::pv_rooftop
  - NL11::curtailment
  - NL33::wind_offshore
  loc_techs_om_cost:
  - NL34::battery
  - NL12::wind_onshore
  - NL23::lost_load
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL42::hydrogen_to_power
  - NL31::lost_load
  - NL33::hydrogen_to_power
  - NL41::pv_rooftop
  - NL22::ccgt
  - NL31::ccgt
  - NL33::lost_load
  - NL13::ccgt
  - NL31::curtailment
  - NL21::wind_onshore
  - NL23::curtailment
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL12::hydrogen_to_power
  - NL41::battery
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::curtailment
  - NL22::pv_farm
  - NL13::lost_load
  - NL11::battery
  - NL42::lost_load
  - NL22::wind_onshore
  - NL42::ccgt
  - NL22::lost_load
  - NL41::ccgt
  - NL12::pv_farm
  - NL33::ccgt
  - NL34::ccgt
  - NL41::pv_farm
  - NL22::battery
  - NL21::ccgt
  - NL33::pv_rooftop
  - NL32::wind_onshore
  - NL12::ccgt
  - NL42::curtailment
  - NL21::hydrogen_to_power
  - NL32::battery
  - NL42::pv_farm
  - NL21::curtailment
  - NL21::battery
  - NL23::ccgt
  - NL32::hydrogen_to_power
  - NL34::wind_offshore
  - NL13::hydrogen_to_power
  - NL42::wind_onshore
  - NL13::curtailment
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL23::wind_offshore
  - NL34::pv_farm
  - NL12::curtailment
  - NL34::curtailment
  - NL12::lost_load
  - NL41::lost_load
  - NL12::battery
  - NL11::pv_rooftop
  - NL23::hydrogen_to_power
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL42::pv_rooftop
  - NL32::wind_offshore
  - NL41::curtailment
  - NL11::ccgt
  - NL13::battery
  - NL23::pv_rooftop
  - NL31::battery
  - NL22::curtailment
  - NL22::pv_rooftop
  - NL34::pv_rooftop
  - NL11::lost_load
  - NL33::battery
  - NL11::pv_farm
  - NL32::lost_load
  - NL32::ccgt
  - NL34::hydrogen_to_power
  - NL34::lost_load
  - NL31::wind_onshore
  - NL33::curtailment
  - NL13::wind_onshore
  - NL11::hydrogen_to_power
  - NL32::pv_rooftop
  - NL11::curtailment
  - NL42::battery
  - NL31::pv_rooftop
  - NL41::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL22::hydrogen_to_power
  - NL21::lost_load
  - NL23::battery
  - NL33::wind_offshore
  loc_techs_om_cost_conversion: []
  loc_techs_om_cost_conversion_plus: []
  loc_techs_om_cost_supply:
  - NL23::ccgt
  - NL34::wind_offshore
  - NL12::wind_onshore
  - NL23::lost_load
  - NL42::wind_onshore
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL23::wind_onshore
  - NL23::wind_offshore
  - NL32::pv_farm
  - NL12::pv_rooftop
  - NL41::wind_onshore
  - NL34::wind_onshore
  - NL31::lost_load
  - NL34::pv_farm
  - NL41::pv_rooftop
  - NL31::ccgt
  - NL22::ccgt
  - NL33::lost_load
  - NL12::lost_load
  - NL13::ccgt
  - NL41::lost_load
  - NL21::wind_onshore
  - NL23::pv_farm
  - NL11::pv_rooftop
  - NL33::wind_onshore
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL11::wind_onshore
  - NL42::pv_rooftop
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::wind_offshore
  - NL11::ccgt
  - NL22::pv_farm
  - NL23::pv_rooftop
  - NL22::pv_rooftop
  - NL13::lost_load
  - NL34::pv_rooftop
  - NL42::lost_load
  - NL11::lost_load
  - NL22::wind_onshore
  - NL11::pv_farm
  - NL22::lost_load
  - NL32::lost_load
  - NL32::ccgt
  - NL42::ccgt
  - NL34::lost_load
  - NL41::ccgt
  - NL12::pv_farm
  - NL31::wind_onshore
  - NL13::wind_onshore
  - NL33::ccgt
  - NL34::ccgt
  - NL41::pv_farm
  - NL21::ccgt
  - NL32::wind_onshore
  - NL33::pv_rooftop
  - NL32::pv_rooftop
  - NL12::ccgt
  - NL31::pv_rooftop
  - NL21::lost_load
  - NL33::wind_offshore
  - NL42::pv_farm
  loc_techs_om_cost_supply_plus: []
  loc_techs_out_2: []
  loc_techs_out_3: []
  loc_techs_purchase: []
  loc_techs_ramping:
  - NL33::ccgt
  - NL34::ccgt
  - NL23::ccgt
  - NL31::ccgt
  - NL22::ccgt
  - NL21::ccgt
  - NL11::ccgt
  - NL13::ccgt
  - NL12::ccgt
  - NL42::ccgt
  - NL32::ccgt
  - NL41::ccgt
  loc_techs_storage:
  - NL21::battery
  - NL34::battery
  - NL32::hydrogen_to_power
  - NL13::hydrogen_to_power
  - NL42::hydrogen_to_power
  - NL33::hydrogen_to_power
  - NL12::battery
  - NL23::hydrogen_to_power
  - NL41::battery
  - NL12::hydrogen_to_power
  - NL13::battery
  - NL31::battery
  - NL11::battery
  - NL33::battery
  - NL34::hydrogen_to_power
  - NL11::hydrogen_to_power
  - NL22::battery
  - NL42::battery
  - NL41::hydrogen_to_power
  - NL21::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL32::battery
  - NL22::hydrogen_to_power
  - NL23::battery
  loc_techs_store:
  - NL21::battery
  - NL34::battery
  - NL13::battery
  - NL32::hydrogen_to_power
  - NL31::battery
  - NL11::battery
  - NL13::hydrogen_to_power
  - NL33::battery
  - NL42::hydrogen_to_power
  - NL12::hydrogen_to_power
  - NL34::hydrogen_to_power
  - NL11::hydrogen_to_power
  - NL33::hydrogen_to_power
  - NL22::battery
  - NL42::battery
  - NL41::hydrogen_to_power
  - NL12::battery
  - NL21::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL32::battery
  - NL23::hydrogen_to_power
  - NL22::hydrogen_to_power
  - NL41::battery
  - NL23::battery
  loc_techs_supply:
  - NL23::ccgt
  - NL34::wind_offshore
  - NL12::wind_onshore
  - NL23::lost_load
  - NL42::wind_onshore
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL31::lost_load
  - NL34::pv_farm
  - NL23::wind_offshore
  - NL41::pv_rooftop
  - NL31::ccgt
  - NL22::ccgt
  - NL33::lost_load
  - NL12::lost_load
  - NL13::ccgt
  - NL41::lost_load
  - NL21::wind_onshore
  - NL23::pv_farm
  - NL11::pv_rooftop
  - NL33::wind_onshore
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL11::wind_onshore
  - NL42::pv_rooftop
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::wind_offshore
  - NL11::ccgt
  - NL22::pv_farm
  - NL23::pv_rooftop
  - NL22::pv_rooftop
  - NL13::lost_load
  - NL34::pv_rooftop
  - NL42::lost_load
  - NL11::lost_load
  - NL22::wind_onshore
  - NL11::pv_farm
  - NL22::lost_load
  - NL32::lost_load
  - NL32::ccgt
  - NL42::ccgt
  - NL34::lost_load
  - NL41::ccgt
  - NL12::pv_farm
  - NL31::wind_onshore
  - NL13::wind_onshore
  - NL33::ccgt
  - NL34::ccgt
  - NL41::pv_farm
  - NL21::ccgt
  - NL32::wind_onshore
  - NL33::pv_rooftop
  - NL32::pv_rooftop
  - NL12::ccgt
  - NL31::pv_rooftop
  - NL21::lost_load
  - NL33::wind_offshore
  - NL42::pv_farm
  loc_techs_supply_all:
  - NL12::wind_onshore
  - NL23::lost_load
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL31::lost_load
  - NL41::pv_rooftop
  - NL31::ccgt
  - NL22::ccgt
  - NL33::lost_load
  - NL13::ccgt
  - NL21::wind_onshore
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL22::pv_farm
  - NL13::lost_load
  - NL42::lost_load
  - NL22::wind_onshore
  - NL42::ccgt
  - NL22::lost_load
  - NL41::ccgt
  - NL12::pv_farm
  - NL33::ccgt
  - NL34::ccgt
  - NL41::pv_farm
  - NL21::ccgt
  - NL32::wind_onshore
  - NL33::pv_rooftop
  - NL12::ccgt
  - NL42::pv_farm
  - NL23::ccgt
  - NL34::wind_offshore
  - NL42::wind_onshore
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL23::wind_offshore
  - NL34::pv_farm
  - NL12::lost_load
  - NL41::lost_load
  - NL11::pv_rooftop
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL42::pv_rooftop
  - NL32::wind_offshore
  - NL11::ccgt
  - NL23::pv_rooftop
  - NL22::pv_rooftop
  - NL34::pv_rooftop
  - NL11::lost_load
  - NL11::pv_farm
  - NL32::lost_load
  - NL32::ccgt
  - NL34::lost_load
  - NL31::wind_onshore
  - NL13::wind_onshore
  - NL32::pv_rooftop
  - NL31::pv_rooftop
  - NL21::lost_load
  - NL33::wind_offshore
  loc_techs_supply_conversion_all:
  - NL12::wind_onshore
  - NL23::lost_load
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL31::lost_load
  - NL41::pv_rooftop
  - NL31::ccgt
  - NL22::ccgt
  - NL33::lost_load
  - NL13::ccgt
  - NL21::wind_onshore
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL22::pv_farm
  - NL13::lost_load
  - NL42::lost_load
  - NL22::wind_onshore
  - NL42::ccgt
  - NL22::lost_load
  - NL41::ccgt
  - NL12::pv_farm
  - NL33::ccgt
  - NL34::ccgt
  - NL41::pv_farm
  - NL21::ccgt
  - NL32::wind_onshore
  - NL33::pv_rooftop
  - NL12::ccgt
  - NL42::pv_farm
  - NL23::ccgt
  - NL34::wind_offshore
  - NL42::wind_onshore
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL23::wind_offshore
  - NL34::pv_farm
  - NL12::lost_load
  - NL41::lost_load
  - NL11::pv_rooftop
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL42::pv_rooftop
  - NL32::wind_offshore
  - NL11::ccgt
  - NL23::pv_rooftop
  - NL22::pv_rooftop
  - NL34::pv_rooftop
  - NL11::lost_load
  - NL11::pv_farm
  - NL32::lost_load
  - NL32::ccgt
  - NL34::lost_load
  - NL31::wind_onshore
  - NL13::wind_onshore
  - NL32::pv_rooftop
  - NL31::pv_rooftop
  - NL21::lost_load
  - NL33::wind_offshore
  loc_techs_supply_plus: []
  loc_techs_transmission:
  - NL13::hvac_transmission:NL11
  - NL32::hvac_transmission:NL31
  - NL21::hvac_transmission:NL13
  - NL33::hvac_transmission:NL32
  - NL41::hvac_transmission:NL22
  - NL23::hvac_transmission:NL32
  - NL11::hvac_transmission:NL13
  - NL42::hvac_transmission:NL41
  - NL13::hvac_transmission:NL21
  - NL23::hvac_transmission:NL21
  - NL22::hvac_transmission:NL41
  - NL31::hvac_transmission:NL32
  - NL12::hvac_transmission:NL23
  - NL21::hvac_transmission:NL22
  - NL23::hvac_transmission:NL12
  - NL32::hvac_transmission:NL33
  - NL33::hvac_transmission:NL41
  - NL22::hvac_transmission:NL21
  - NL21::hvac_transmission:NL23
  - NL41::hvac_transmission:NL34
  - NL32::hvac_transmission:NL23
  - NL34::hvac_transmission:NL41
  - NL12::hvac_transmission:NL11
  - NL41::hvac_transmission:NL42
  - NL41::hvac_transmission:NL33
  - NL33::hvac_transmission:NL31
  - NL11::hvac_transmission:NL12
  - NL31::hvac_transmission:NL33
constraint_sets:
  loc_carriers_system_balance_constraint:
  - NL32::electricity
  - NL11::electricity
  - NL41::electricity
  - NL12::electricity
  - NL33::electricity
  - NL31::electricity
  - NL23::electricity
  - NL21::electricity
  - NL22::electricity
  - NL13::electricity
  - NL42::electricity
  - NL34::electricity
  loc_techs_balance_supply_constraint:
  - NL34::wind_offshore
  - NL12::wind_onshore
  - NL23::lost_load
  - NL42::wind_onshore
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL23::wind_onshore
  - NL23::wind_offshore
  - NL32::pv_farm
  - NL12::pv_rooftop
  - NL41::wind_onshore
  - NL34::wind_onshore
  - NL31::lost_load
  - NL34::pv_farm
  - NL41::pv_rooftop
  - NL33::lost_load
  - NL12::lost_load
  - NL41::lost_load
  - NL21::wind_onshore
  - NL23::pv_farm
  - NL11::pv_rooftop
  - NL33::wind_onshore
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL11::wind_onshore
  - NL42::pv_rooftop
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::wind_offshore
  - NL23::pv_rooftop
  - NL22::pv_farm
  - NL22::pv_rooftop
  - NL13::lost_load
  - NL34::pv_rooftop
  - NL42::lost_load
  - NL11::lost_load
  - NL22::wind_onshore
  - NL11::pv_farm
  - NL22::lost_load
  - NL32::lost_load
  - NL34::lost_load
  - NL31::wind_onshore
  - NL12::pv_farm
  - NL13::wind_onshore
  - NL41::pv_farm
  - NL32::wind_onshore
  - NL33::pv_rooftop
  - NL32::pv_rooftop
  - NL31::pv_rooftop
  - NL21::lost_load
  - NL33::wind_offshore
  - NL42::pv_farm
  loc_techs_balance_demand_constraint:
  - NL21::curtailment
  - NL34::demand_electricity
  - NL11::demand_electricity
  - NL32::demand_electricity
  - NL33::demand_electricity
  - NL23::demand_electricity
  - NL13::curtailment
  - NL42::demand_electricity
  - NL12::curtailment
  - NL41::demand_electricity
  - NL34::curtailment
  - NL31::curtailment
  - NL21::demand_electricity
  - NL23::curtailment
  - NL41::curtailment
  - NL32::curtailment
  - NL22::curtailment
  - NL31::demand_electricity
  - NL22::demand_electricity
  - NL13::demand_electricity
  - NL33::curtailment
  - NL11::curtailment
  - NL12::demand_electricity
  - NL42::curtailment
  loc_techs_resource_availability_supply_plus_constraint: []
  loc_techs_balance_transmission_constraint:
  - NL13::hvac_transmission:NL11
  - NL32::hvac_transmission:NL31
  - NL21::hvac_transmission:NL13
  - NL33::hvac_transmission:NL32
  - NL41::hvac_transmission:NL22
  - NL23::hvac_transmission:NL32
  - NL11::hvac_transmission:NL13
  - NL42::hvac_transmission:NL41
  - NL13::hvac_transmission:NL21
  - NL23::hvac_transmission:NL21
  - NL22::hvac_transmission:NL41
  - NL31::hvac_transmission:NL32
  - NL12::hvac_transmission:NL23
  - NL21::hvac_transmission:NL22
  - NL23::hvac_transmission:NL12
  - NL32::hvac_transmission:NL33
  - NL33::hvac_transmission:NL41
  - NL22::hvac_transmission:NL21
  - NL21::hvac_transmission:NL23
  - NL41::hvac_transmission:NL34
  - NL32::hvac_transmission:NL23
  - NL34::hvac_transmission:NL41
  - NL12::hvac_transmission:NL11
  - NL41::hvac_transmission:NL42
  - NL41::hvac_transmission:NL33
  - NL33::hvac_transmission:NL31
  - NL11::hvac_transmission:NL12
  - NL31::hvac_transmission:NL33
  loc_techs_balance_supply_plus_constraint: []
  loc_techs_balance_storage_constraint:
  - NL21::battery
  - NL34::battery
  - NL32::hydrogen_to_power
  - NL13::hydrogen_to_power
  - NL42::hydrogen_to_power
  - NL33::hydrogen_to_power
  - NL12::battery
  - NL23::hydrogen_to_power
  - NL41::battery
  - NL12::hydrogen_to_power
  - NL13::battery
  - NL31::battery
  - NL11::battery
  - NL33::battery
  - NL34::hydrogen_to_power
  - NL11::hydrogen_to_power
  - NL22::battery
  - NL42::battery
  - NL41::hydrogen_to_power
  - NL21::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL32::battery
  - NL22::hydrogen_to_power
  - NL23::battery
  loc_techs_storage_initial_constraint:
  - NL21::battery
  - NL34::battery
  - NL13::battery
  - NL32::hydrogen_to_power
  - NL31::battery
  - NL11::battery
  - NL13::hydrogen_to_power
  - NL33::battery
  - NL42::hydrogen_to_power
  - NL12::hydrogen_to_power
  - NL34::hydrogen_to_power
  - NL11::hydrogen_to_power
  - NL33::hydrogen_to_power
  - NL22::battery
  - NL42::battery
  - NL41::hydrogen_to_power
  - NL12::battery
  - NL21::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL32::battery
  - NL23::hydrogen_to_power
  - NL22::hydrogen_to_power
  - NL41::battery
  - NL23::battery
  loc_techs_storage_discharge_depth: []
  carriers_reserve_margin_constraint: []
  loc_techs_cost_constraint:
  - NL34::battery
  - NL12::wind_onshore
  - NL21::hvac_transmission:NL13
  - NL23::lost_load
  - NL33::hvac_transmission:NL32
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL42::hydrogen_to_power
  - NL41::hvac_transmission:NL22
  - NL31::lost_load
  - NL23::hvac_transmission:NL32
  - NL33::hydrogen_to_power
  - NL41::pv_rooftop
  - NL22::ccgt
  - NL31::ccgt
  - NL33::lost_load
  - NL42::hvac_transmission:NL41
  - NL13::ccgt
  - NL13::hvac_transmission:NL21
  - NL23::hvac_transmission:NL21
  - NL31::curtailment
  - NL22::hvac_transmission:NL41
  - NL31::hvac_transmission:NL32
  - NL21::wind_onshore
  - NL23::curtailment
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL21::hvac_transmission:NL22
  - NL41::battery
  - NL12::hydrogen_to_power
  - NL31::hvac_transmission:NL33
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::curtailment
  - NL23::hvac_transmission:NL12
  - NL22::pv_farm
  - NL13::lost_load
  - NL11::battery
  - NL42::lost_load
  - NL21::hvac_transmission:NL23
  - NL32::hvac_transmission:NL23
  - NL22::wind_onshore
  - NL42::ccgt
  - NL22::lost_load
  - NL41::ccgt
  - NL12::pv_farm
  - NL33::ccgt
  - NL34::ccgt
  - NL41::hvac_transmission:NL42
  - NL41::pv_farm
  - NL22::battery
  - NL21::ccgt
  - NL33::pv_rooftop
  - NL32::wind_onshore
  - NL12::ccgt
  - NL33::hvac_transmission:NL31
  - NL42::curtailment
  - NL21::hydrogen_to_power
  - NL32::battery
  - NL42::pv_farm
  - NL21::curtailment
  - NL21::battery
  - NL23::ccgt
  - NL13::hvac_transmission:NL11
  - NL32::hvac_transmission:NL31
  - NL32::hydrogen_to_power
  - NL34::wind_offshore
  - NL13::hydrogen_to_power
  - NL42::wind_onshore
  - NL13::curtailment
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL23::wind_offshore
  - NL34::pv_farm
  - NL11::hvac_transmission:NL13
  - NL12::curtailment
  - NL34::curtailment
  - NL12::lost_load
  - NL41::lost_load
  - NL12::battery
  - NL11::pv_rooftop
  - NL23::hydrogen_to_power
  - NL12::hvac_transmission:NL23
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL42::pv_rooftop
  - NL32::wind_offshore
  - NL41::curtailment
  - NL11::ccgt
  - NL13::battery
  - NL23::pv_rooftop
  - NL31::battery
  - NL22::curtailment
  - NL22::pv_rooftop
  - NL34::pv_rooftop
  - NL32::hvac_transmission:NL33
  - NL33::hvac_transmission:NL41
  - NL11::lost_load
  - NL22::hvac_transmission:NL21
  - NL41::hvac_transmission:NL34
  - NL33::battery
  - NL11::pv_farm
  - NL32::lost_load
  - NL32::ccgt
  - NL34::hydrogen_to_power
  - NL34::lost_load
  - NL31::wind_onshore
  - NL34::hvac_transmission:NL41
  - NL33::curtailment
  - NL13::wind_onshore
  - NL11::hydrogen_to_power
  - NL12::hvac_transmission:NL11
  - NL32::pv_rooftop
  - NL11::curtailment
  - NL41::hvac_transmission:NL33
  - NL42::battery
  - NL31::pv_rooftop
  - NL41::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL11::hvac_transmission:NL12
  - NL22::hydrogen_to_power
  - NL21::lost_load
  - NL23::battery
  - NL33::wind_offshore
  loc_techs_cost_investment_constraint:
  - NL34::battery
  - NL12::wind_onshore
  - NL21::hvac_transmission:NL13
  - NL33::hvac_transmission:NL32
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL42::hydrogen_to_power
  - NL41::hvac_transmission:NL22
  - NL23::hvac_transmission:NL32
  - NL33::hydrogen_to_power
  - NL41::pv_rooftop
  - NL22::ccgt
  - NL31::ccgt
  - NL42::hvac_transmission:NL41
  - NL13::hvac_transmission:NL21
  - NL13::ccgt
  - NL23::hvac_transmission:NL21
  - NL22::hvac_transmission:NL41
  - NL31::hvac_transmission:NL32
  - NL21::wind_onshore
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL21::hvac_transmission:NL22
  - NL12::hydrogen_to_power
  - NL41::battery
  - NL31::hvac_transmission:NL33
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL23::hvac_transmission:NL12
  - NL22::pv_farm
  - NL11::battery
  - NL21::hvac_transmission:NL23
  - NL32::hvac_transmission:NL23
  - NL22::wind_onshore
  - NL42::ccgt
  - NL41::ccgt
  - NL12::pv_farm
  - NL33::ccgt
  - NL34::ccgt
  - NL41::hvac_transmission:NL42
  - NL41::pv_farm
  - NL22::battery
  - NL21::ccgt
  - NL33::pv_rooftop
  - NL32::wind_onshore
  - NL12::ccgt
  - NL33::hvac_transmission:NL31
  - NL21::hydrogen_to_power
  - NL32::battery
  - NL42::pv_farm
  - NL21::battery
  - NL23::ccgt
  - NL13::hvac_transmission:NL11
  - NL32::hvac_transmission:NL31
  - NL32::hydrogen_to_power
  - NL34::wind_offshore
  - NL13::hydrogen_to_power
  - NL42::wind_onshore
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL23::wind_offshore
  - NL34::pv_farm
  - NL11::hvac_transmission:NL13
  - NL12::battery
  - NL11::pv_rooftop
  - NL23::hydrogen_to_power
  - NL12::hvac_transmission:NL23
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL42::pv_rooftop
  - NL32::wind_offshore
  - NL11::ccgt
  - NL13::battery
  - NL23::pv_rooftop
  - NL31::battery
  - NL22::pv_rooftop
  - NL32::hvac_transmission:NL33
  - NL34::pv_rooftop
  - NL33::hvac_transmission:NL41
  - NL22::hvac_transmission:NL21
  - NL41::hvac_transmission:NL34
  - NL33::battery
  - NL11::pv_farm
  - NL32::ccgt
  - NL31::wind_onshore
  - NL34::hydrogen_to_power
  - NL34::hvac_transmission:NL41
  - NL13::wind_onshore
  - NL12::hvac_transmission:NL11
  - NL11::hydrogen_to_power
  - NL32::pv_rooftop
  - NL41::hvac_transmission:NL33
  - NL42::battery
  - NL31::pv_rooftop
  - NL41::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL11::hvac_transmission:NL12
  - NL22::hydrogen_to_power
  - NL23::battery
  - NL33::wind_offshore
  loc_techs_cost_var_constraint:
  - NL34::battery
  - NL12::wind_onshore
  - NL23::lost_load
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL42::hydrogen_to_power
  - NL31::lost_load
  - NL33::hydrogen_to_power
  - NL41::pv_rooftop
  - NL22::ccgt
  - NL31::ccgt
  - NL33::lost_load
  - NL13::ccgt
  - NL31::curtailment
  - NL21::wind_onshore
  - NL23::curtailment
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL12::hydrogen_to_power
  - NL41::battery
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::curtailment
  - NL22::pv_farm
  - NL13::lost_load
  - NL11::battery
  - NL42::lost_load
  - NL22::wind_onshore
  - NL42::ccgt
  - NL22::lost_load
  - NL41::ccgt
  - NL12::pv_farm
  - NL33::ccgt
  - NL34::ccgt
  - NL41::pv_farm
  - NL22::battery
  - NL21::ccgt
  - NL33::pv_rooftop
  - NL32::wind_onshore
  - NL12::ccgt
  - NL42::curtailment
  - NL21::hydrogen_to_power
  - NL32::battery
  - NL42::pv_farm
  - NL21::curtailment
  - NL21::battery
  - NL23::ccgt
  - NL32::hydrogen_to_power
  - NL34::wind_offshore
  - NL13::hydrogen_to_power
  - NL42::wind_onshore
  - NL13::curtailment
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL23::wind_offshore
  - NL34::pv_farm
  - NL12::curtailment
  - NL34::curtailment
  - NL12::lost_load
  - NL41::lost_load
  - NL12::battery
  - NL11::pv_rooftop
  - NL23::hydrogen_to_power
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL42::pv_rooftop
  - NL32::wind_offshore
  - NL41::curtailment
  - NL11::ccgt
  - NL13::battery
  - NL23::pv_rooftop
  - NL31::battery
  - NL22::curtailment
  - NL22::pv_rooftop
  - NL34::pv_rooftop
  - NL11::lost_load
  - NL33::battery
  - NL11::pv_farm
  - NL32::lost_load
  - NL32::ccgt
  - NL34::hydrogen_to_power
  - NL34::lost_load
  - NL31::wind_onshore
  - NL33::curtailment
  - NL13::wind_onshore
  - NL11::hydrogen_to_power
  - NL32::pv_rooftop
  - NL11::curtailment
  - NL42::battery
  - NL31::pv_rooftop
  - NL41::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL22::hydrogen_to_power
  - NL21::lost_load
  - NL23::battery
  - NL33::wind_offshore
  loc_carriers_update_system_balance_constraint: []
  loc_tech_carriers_export_balance_constraint: []
  loc_techs_update_costs_var_constraint: []
  loc_tech_carriers_export_max_constraint: []
  loc_techs_storage_capacity_constraint:
  - NL21::battery
  - NL34::battery
  - NL13::battery
  - NL32::hydrogen_to_power
  - NL31::battery
  - NL11::battery
  - NL13::hydrogen_to_power
  - NL33::battery
  - NL42::hydrogen_to_power
  - NL12::hydrogen_to_power
  - NL34::hydrogen_to_power
  - NL11::hydrogen_to_power
  - NL33::hydrogen_to_power
  - NL22::battery
  - NL42::battery
  - NL41::hydrogen_to_power
  - NL12::battery
  - NL21::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL32::battery
  - NL23::hydrogen_to_power
  - NL22::hydrogen_to_power
  - NL41::battery
  - NL23::battery
  loc_techs_energy_capacity_storage_constraint_old: []
  loc_techs_energy_capacity_storage_equals_constraint: []
  loc_techs_energy_capacity_storage_min_constraint: []
  loc_techs_energy_capacity_storage_max_constraint:
  - NL21::battery
  - NL34::battery
  - NL13::battery
  - NL31::battery
  - NL11::battery
  - NL33::battery
  - NL22::battery
  - NL42::battery
  - NL12::battery
  - NL32::battery
  - NL41::battery
  - NL23::battery
  loc_techs_resource_capacity_constraint: []
  loc_techs_resource_capacity_equals_energy_capacity_constraint: []
  loc_techs_resource_area_constraint: []
  loc_techs_resource_area_per_energy_capacity_constraint: []
  locs_resource_area_capacity_per_loc_constraint: []
  loc_techs_energy_capacity_constraint:
  - NL34::battery
  - NL11::demand_electricity
  - NL32::demand_electricity
  - NL33::demand_electricity
  - NL12::wind_onshore
  - NL21::hvac_transmission:NL13
  - NL23::lost_load
  - NL33::hvac_transmission:NL32
  - NL12::wind_offshore
  - NL33::pv_farm
  - NL42::hydrogen_to_power
  - NL41::hvac_transmission:NL22
  - NL31::lost_load
  - NL23::hvac_transmission:NL32
  - NL42::demand_electricity
  - NL33::hydrogen_to_power
  - NL41::pv_rooftop
  - NL22::ccgt
  - NL31::ccgt
  - NL33::lost_load
  - NL42::hvac_transmission:NL41
  - NL13::ccgt
  - NL13::hvac_transmission:NL21
  - NL23::hvac_transmission:NL21
  - NL31::curtailment
  - NL22::hvac_transmission:NL41
  - NL31::hvac_transmission:NL32
  - NL21::wind_onshore
  - NL21::demand_electricity
  - NL23::curtailment
  - NL23::pv_farm
  - NL33::wind_onshore
  - NL21::hvac_transmission:NL22
  - NL12::hydrogen_to_power
  - NL41::battery
  - NL31::hvac_transmission:NL33
  - NL11::wind_onshore
  - NL13::pv_rooftop
  - NL21::pv_rooftop
  - NL21::pv_farm
  - NL32::curtailment
  - NL23::hvac_transmission:NL12
  - NL22::pv_farm
  - NL13::lost_load
  - NL11::battery
  - NL42::lost_load
  - NL21::hvac_transmission:NL23
  - NL32::hvac_transmission:NL23
  - NL22::wind_onshore
  - NL42::ccgt
  - NL22::lost_load
  - NL41::ccgt
  - NL12::pv_farm
  - NL13::demand_electricity
  - NL33::ccgt
  - NL34::ccgt
  - NL41::hvac_transmission:NL42
  - NL41::pv_farm
  - NL22::battery
  - NL21::ccgt
  - NL33::pv_rooftop
  - NL32::wind_onshore
  - NL12::demand_electricity
  - NL12::ccgt
  - NL33::hvac_transmission:NL31
  - NL42::curtailment
  - NL21::hydrogen_to_power
  - NL32::battery
  - NL42::pv_farm
  - NL21::curtailment
  - NL21::battery
  - NL34::demand_electricity
  - NL23::ccgt
  - NL13::hvac_transmission:NL11
  - NL32::hvac_transmission:NL31
  - NL32::hydrogen_to_power
  - NL34::wind_offshore
  - NL13::hydrogen_to_power
  - NL42::wind_onshore
  - NL23::demand_electricity
  - NL13::curtailment
  - NL23::wind_onshore
  - NL12::pv_rooftop
  - NL32::pv_farm
  - NL34::wind_onshore
  - NL41::wind_onshore
  - NL23::wind_offshore
  - NL34::pv_farm
  - NL11::hvac_transmission:NL13
  - NL12::curtailment
  - NL41::demand_electricity
  - NL34::curtailment
  - NL12::lost_load
  - NL41::lost_load
  - NL12::battery
  - NL11::pv_rooftop
  - NL23::hydrogen_to_power
  - NL12::hvac_transmission:NL23
  - NL13::pv_farm
  - NL31::pv_farm
  - NL11::wind_offshore
  - NL42::pv_rooftop
  - NL32::wind_offshore
  - NL41::curtailment
  - NL11::ccgt
  - NL13::battery
  - NL23::pv_rooftop
  - NL31::battery
  - NL22::curtailment
  - NL22::pv_rooftop
  - NL34::pv_rooftop
  - NL31::demand_electricity
  - NL32::hvac_transmission:NL33
  - NL11::lost_load
  - NL22::demand_electricity
  - NL33::hvac_transmission:NL41
  - NL33::battery
  - NL22::hvac_transmission:NL21
  - NL41::hvac_transmission:NL34
  - NL11::pv_farm
  - NL32::lost_load
  - NL32::ccgt
  - NL34::hydrogen_to_power
  - NL34::lost_load
  - NL31::wind_onshore
  - NL34::hvac_transmission:NL41
  - NL33::curtailment
  - NL13::wind_onshore
  - NL11::hydrogen_to_power
  - NL12::hvac_transmission:NL11
  - NL32::pv_rooftop
  - NL11::curtailment
  - NL41::hvac_transmission:NL33
  - NL42::battery
  - NL31::pv_rooftop
  - NL41::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL11::hvac_transmission:NL12
  - NL22::hydrogen_to_power
  - NL21::lost_load
  - NL23::battery
  - NL33::wind_offshore
  techs_energy_capacity_systemwide_constraint:
  - ccgt
  loc_tech_carriers_carrier_production_max_constraint:
  - NL21::pv_farm::electricity
  - NL32::hvac_transmission:NL33::electricity
  - NL42::pv_rooftop::electricity
  - NL34::ccgt::electricity
  - NL33::hvac_transmission:NL31::electricity
  - NL23::wind_offshore::electricity
  - NL31::battery::electricity
  - NL21::hvac_transmission:NL13::electricity
  - NL12::pv_farm::electricity
  - NL12::ccgt::electricity
  - NL32::battery::electricity
  - NL33::pv_farm::electricity
  - NL13::wind_onshore::electricity
  - NL23::hvac_transmission:NL12::electricity
  - NL23::hydrogen_to_power::electricity
  - NL21::ccgt::electricity
  - NL41::ccgt::electricity
  - NL13::battery::electricity
  - NL23::wind_onshore::electricity
  - NL42::battery::electricity
  - NL22::hvac_transmission:NL21::electricity
  - NL11::pv_rooftop::electricity
  - NL12::hvac_transmission:NL23::electricity
  - NL13::hydrogen_to_power::electricity
  - NL34::pv_farm::electricity
  - NL41::hydrogen_to_power::electricity
  - NL11::hvac_transmission:NL13::electricity
  - NL31::lost_load::electricity
  - NL22::lost_load::electricity
  - NL33::battery::electricity
  - NL12::hvac_transmission:NL11::electricity
  - NL22::hvac_transmission:NL41::electricity
  - NL13::pv_rooftop::electricity
  - NL33::lost_load::electricity
  - NL34::battery::electricity
  - NL42::lost_load::electricity
  - NL31::pv_farm::electricity
  - NL42::pv_farm::electricity
  - NL21::hvac_transmission:NL23::electricity
  - NL41::pv_farm::electricity
  - NL11::hvac_transmission:NL12::electricity
  - NL23::ccgt::electricity
  - NL11::pv_farm::electricity
  - NL32::ccgt::electricity
  - NL13::hvac_transmission:NL21::electricity
  - NL32::wind_offshore::electricity
  - NL41::lost_load::electricity
  - NL33::pv_rooftop::electricity
  - NL12::pv_rooftop::electricity
  - NL32::pv_rooftop::electricity
  - NL13::hvac_transmission:NL11::electricity
  - NL32::pv_farm::electricity
  - NL11::ccgt::electricity
  - NL31::hvac_transmission:NL33::electricity
  - NL34::wind_offshore::electricity
  - NL13::pv_farm::electricity
  - NL12::battery::electricity
  - NL42::hydrogen_to_power::electricity
  - NL33::hydrogen_to_power::electricity
  - NL21::battery::electricity
  - NL42::ccgt::electricity
  - NL21::hvac_transmission:NL22::electricity
  - NL33::hvac_transmission:NL41::electricity
  - NL11::hydrogen_to_power::electricity
  - NL13::lost_load::electricity
  - NL34::pv_rooftop::electricity
  - NL22::battery::electricity
  - NL21::hydrogen_to_power::electricity
  - NL12::wind_onshore::electricity
  - NL31::hvac_transmission:NL32::electricity
  - NL31::wind_onshore::electricity
  - NL32::wind_onshore::electricity
  - NL11::lost_load::electricity
  - NL12::wind_offshore::electricity
  - NL11::wind_onshore::electricity
  - NL22::wind_onshore::electricity
  - NL33::wind_onshore::electricity
  - NL12::lost_load::electricity
  - NL21::lost_load::electricity
  - NL11::wind_offshore::electricity
  - NL21::wind_onshore::electricity
  - NL23::lost_load::electricity
  - NL32::hvac_transmission:NL23::electricity
  - NL22::ccgt::electricity
  - NL41::wind_onshore::electricity
  - NL41::hvac_transmission:NL34::electricity
  - NL33::hvac_transmission:NL32::electricity
  - NL22::pv_farm::electricity
  - NL34::hydrogen_to_power::electricity
  - NL34::lost_load::electricity
  - NL31::pv_rooftop::electricity
  - NL23::pv_farm::electricity
  - NL41::hvac_transmission:NL33::electricity
  - NL34::hvac_transmission:NL41::electricity
  - NL34::wind_onshore::electricity
  - NL33::wind_offshore::electricity
  - NL32::hvac_transmission:NL31::electricity
  - NL42::hvac_transmission:NL41::electricity
  - NL31::ccgt::electricity
  - NL41::pv_rooftop::electricity
  - NL31::hydrogen_to_power::electricity
  - NL23::pv_rooftop::electricity
  - NL32::hydrogen_to_power::electricity
  - NL42::wind_onshore::electricity
  - NL22::pv_rooftop::electricity
  - NL22::hydrogen_to_power::electricity
  - NL23::battery::electricity
  - NL32::lost_load::electricity
  - NL21::pv_rooftop::electricity
  - NL23::hvac_transmission:NL32::electricity
  - NL12::hydrogen_to_power::electricity
  - NL13::ccgt::electricity
  - NL41::hvac_transmission:NL22::electricity
  - NL33::ccgt::electricity
  - NL23::hvac_transmission:NL21::electricity
  - NL11::battery::electricity
  - NL41::hvac_transmission:NL42::electricity
  - NL41::battery::electricity
  loc_tech_carriers_carrier_production_min_constraint: []
  loc_tech_carriers_carrier_consumption_max_constraint:
  - NL32::curtailment::electricity
  - NL12::battery::electricity
  - NL32::hvac_transmission:NL33::electricity
  - NL42::hydrogen_to_power::electricity
  - NL41::hvac_transmission:NL33::electricity
  - NL34::battery::electricity
  - NL33::hydrogen_to_power::electricity
  - NL21::battery::electricity
  - NL33::hvac_transmission:NL31::electricity
  - NL34::hvac_transmission:NL41::electricity
  - NL21::hvac_transmission:NL22::electricity
  - NL11::demand_electricity::electricity
  - NL33::hvac_transmission:NL41::electricity
  - NL11::hydrogen_to_power::electricity
  - NL21::demand_electricity::electricity
  - NL33::curtailment::electricity
  - NL22::battery::electricity
  - NL12::curtailment::electricity
  - NL13::demand_electricity::electricity
  - NL21::hydrogen_to_power::electricity
  - NL31::battery::electricity
  - NL21::hvac_transmission:NL13::electricity
  - NL31::demand_electricity::electricity
  - NL32::hvac_transmission:NL31::electricity
  - NL31::hvac_transmission:NL32::electricity
  - NL22::demand_electricity::electricity
  - NL42::hvac_transmission:NL41::electricity
  - NL21::hvac_transmission:NL23::electricity
  - NL11::hvac_transmission:NL12::electricity
  - NL32::battery::electricity
  - NL31::hydrogen_to_power::electricity
  - NL13::hvac_transmission:NL21::electricity
  - NL34::demand_electricity::electricity
  - NL23::hvac_transmission:NL12::electricity
  - NL41::hvac_transmission:NL34::electricity
  - NL31::curtailment::electricity
  - NL32::demand_electricity::electricity
  - NL34::curtailment::electricity
  - NL32::hydrogen_to_power::electricity
  - NL23::hydrogen_to_power::electricity
  - NL11::curtailment::electricity
  - NL22::hydrogen_to_power::electricity
  - NL13::battery::electricity
  - NL23::battery::electricity
  - NL42::battery::electricity
  - NL42::demand_electricity::electricity
  - NL23::hvac_transmission:NL32::electricity
  - NL41::curtailment::electricity
  - NL21::curtailment::electricity
  - NL12::hydrogen_to_power::electricity
  - NL32::hvac_transmission:NL23::electricity
  - NL22::hvac_transmission:NL21::electricity
  - NL12::hvac_transmission:NL23::electricity
  - NL13::hydrogen_to_power::electricity
  - NL41::demand_electricity::electricity
  - NL41::hvac_transmission:NL22::electricity
  - NL41::hydrogen_to_power::electricity
  - NL23::curtailment::electricity
  - NL22::curtailment::electricity
  - NL11::hvac_transmission:NL13::electricity
  - NL13::curtailment::electricity
  - NL23::hvac_transmission:NL21::electricity
  - NL33::demand_electricity::electricity
  - NL11::battery::electricity
  - NL13::hvac_transmission:NL11::electricity
  - NL23::demand_electricity::electricity
  - NL33::hvac_transmission:NL32::electricity
  - NL41::hvac_transmission:NL42::electricity
  - NL42::curtailment::electricity
  - NL33::battery::electricity
  - NL41::battery::electricity
  - NL12::demand_electricity::electricity
  - NL34::hydrogen_to_power::electricity
  - NL31::hvac_transmission:NL33::electricity
  - NL12::hvac_transmission:NL11::electricity
  - NL22::hvac_transmission:NL41::electricity
  loc_techs_resource_max_constraint: []
  loc_tech_carriers_ramping_constraint:
  - NL34::ccgt::electricity
  - NL12::ccgt::electricity
  - NL21::ccgt::electricity
  - NL41::ccgt::electricity
  - NL23::ccgt::electricity
  - NL32::ccgt::electricity
  - NL11::ccgt::electricity
  - NL42::ccgt::electricity
  - NL22::ccgt::electricity
  - NL31::ccgt::electricity
  - NL13::ccgt::electricity
  - NL33::ccgt::electricity
  loc_techs_storage_max_constraint:
  - NL21::battery
  - NL34::battery
  - NL13::battery
  - NL32::hydrogen_to_power
  - NL31::battery
  - NL11::battery
  - NL13::hydrogen_to_power
  - NL33::battery
  - NL42::hydrogen_to_power
  - NL12::hydrogen_to_power
  - NL34::hydrogen_to_power
  - NL11::hydrogen_to_power
  - NL33::hydrogen_to_power
  - NL22::battery
  - NL42::battery
  - NL41::hydrogen_to_power
  - NL12::battery
  - NL21::hydrogen_to_power
  - NL31::hydrogen_to_power
  - NL32::battery
  - NL23::hydrogen_to_power
  - NL22::hydrogen_to_power
  - NL41::battery
  - NL23::battery
  loc_techs_unit_commitment_milp_constraint: []
  loc_techs_unit_capacity_milp_constraint: []
  loc_tech_carriers_carrier_production_max_milp_constraint: []
  loc_techs_carrier_production_max_conversion_plus_milp_constraint: []
  loc_tech_carriers_carrier_production_min_milp_constraint: []
  loc_techs_carrier_production_min_conversion_plus_milp_constraint: []
  loc_tech_carriers_carrier_consumption_max_milp_constraint: []
  loc_techs_energy_capacity_units_milp_constraint: []
  loc_techs_storage_capacity_units_milp_constraint: []
  loc_techs_energy_capacity_max_purchase_milp_constraint: []
  loc_techs_energy_capacity_min_purchase_milp_constraint: []
  loc_techs_storage_capacity_max_purchase_milp_constraint: []
  loc_techs_storage_capacity_min_purchase_milp_constraint: []
  loc_techs_update_costs_investment_units_milp_constraint: []
  loc_techs_update_costs_investment_purchase_milp_constraint: []
  techs_unit_capacity_systemwide_milp_constraint: []
  loc_techs_asynchronous_prod_con_milp_constraint: []
  loc_techs_balance_conversion_constraint: []
  loc_techs_cost_var_conversion_constraint: []
  loc_techs_balance_conversion_plus_primary_constraint: []
  loc_techs_carrier_production_max_conversion_plus_constraint: []
  loc_techs_carrier_production_min_conversion_plus_constraint: []
  loc_techs_cost_var_conversion_plus_constraint: []
  loc_techs_balance_conversion_plus_in_2_constraint: []
  loc_techs_balance_conversion_plus_in_3_constraint: []
  loc_techs_balance_conversion_plus_out_2_constraint: []
  loc_techs_balance_conversion_plus_out_3_constraint: []
  loc_techs_symmetric_transmission_constraint:
  - NL13::hvac_transmission:NL11
  - NL32::hvac_transmission:NL31
  - NL21::hvac_transmission:NL13
  - NL33::hvac_transmission:NL32
  - NL41::hvac_transmission:NL22
  - NL23::hvac_transmission:NL32
  - NL11::hvac_transmission:NL13
  - NL42::hvac_transmission:NL41
  - NL13::hvac_transmission:NL21
  - NL23::hvac_transmission:NL21
  - NL22::hvac_transmission:NL41
  - NL31::hvac_transmission:NL32
  - NL12::hvac_transmission:NL23
  - NL21::hvac_transmission:NL22
  - NL23::hvac_transmission:NL12
  - NL32::hvac_transmission:NL33
  - NL33::hvac_transmission:NL41
  - NL22::hvac_transmission:NL21
  - NL21::hvac_transmission:NL23
  - NL41::hvac_transmission:NL34
  - NL32::hvac_transmission:NL23
  - NL34::hvac_transmission:NL41
  - NL12::hvac_transmission:NL11
  - NL41::hvac_transmission:NL42
  - NL41::hvac_transmission:NL33
  - NL33::hvac_transmission:NL31
  - NL11::hvac_transmission:NL12
  - NL31::hvac_transmission:NL33
  techlists_group_share_energy_cap_min_constraint: []
  techlists_carrier_group_share_carrier_prod_min_constraint: []
  techlists_group_share_energy_cap_max_constraint: []
  techlists_carrier_group_share_carrier_prod_max_constraint: []
  techlists_group_share_energy_cap_equals_constraint: []
  techlists_carrier_group_share_carrier_prod_equals_constraint: []
  group_constraints: []
BTLF 1      ��            '�     ��              ���                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OHDRY                                     *       �R           ��     �           
 ������������������������A         _Netcdf4Coordinates                            +        CLASS          DIMENSION_SCALE          NAME          techs +        _Netcdf4Dimid                   �OHDR(                                     *       �R     4       �     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE          NAME          costs   �f| OHDR/                                     *       �R     7       ]�     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE '        NAME          loc_carriers   F���OHDRI                                     *       �R     P       ��     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE A        NAME    '      loc_carriers_system_balance_constraint   =���   ��g�FRHP               ���������.      	i      @                    h                                                         ��      oVh�BTHD      d(��      h       -;��                            _debug_data    �     comments:
  model:
    time:
      function: Applied from override
      function_options:
        resolution: Applied from override
  model_run:
    techs:
      battery:
        essentials:
          parent: From parent tech_group `storage`
          carrier_in: Set from essentials.carrier
      ccgt:
        essentials:
          parent: From parent tech_group `supply`
      curtailment:
        essentials:
          parent: From parent tech_group `demand`
      demand_electricity:
        essentials:
          parent: From parent tech_group `demand`
          carrier_in: Set from essentials.carrier
      export_electricity:
        essentials:
          parent: From parent tech_group `demand`
      hvac_transmission:
        essentials:
          parent: From parent tech_group `transmission`
          carrier_in: Set from essentials.carrier
      hydrogen_to_power:
        essentials:
          parent: From parent tech_group `storage`
          carrier_in: Set from essentials.carrier
      import_electricity:
        essentials:
          parent: From parent tech_group `supply`
      lost_load:
        essentials:
          parent: From parent tech_group `supply`
      pv_farm:
        essentials:
          parent: From parent tech_group `supply`
      pv_rooftop:
        essentials:
          parent: From parent tech_group `supply`
      wind_offshore:
        essentials:
          parent: From parent tech_group `supply`
      wind_onshore:
        essentials:
          parent: From parent tech_group `supply`
    locations: {}
config_initial:
  run:
    backend: pyomo
    bigM: 1000000.0
    cyclic_storage: true
    ensure_feasibility: true
    mode: plan
    objective_options:
      cost_class:
        monetary: 1
      sense: minimize
    objective: minmax_cost_optimization
    operation:
      window:
      horizon:
      use_cap_results: false
    spores_options:
      spores_number: 3
      slack: 0.1
      score_cost_class: spores_score
      objective_cost_class:
        spores_score: 1
        monetary: 0
      slack_cost_group:
      save_per_spore: false
      save_per_spore_path:
      skip_cost_op: false
    relax_constraint:
      demand_share_per_timestep_decision_main_constraint: 0
    save_logs:
    solver_io:
    solver_options:
    solver: cbc
    zero_threshold: 1e-10
  model:
    calliope_version: 0.6.10
    group_share: {}
    name: Stylised Dutch power system at NUTS2 resolution
    random_seed:
    reserve_margin: {}
    subset_time:
    - '2015-03-01'
    - '2015-03-31'
    time:
      function: resample
      function_options:
        resolution: 3H
    timeseries_data_path: model_files\timeseries_data
    timeseries_data:
    timeseries_dateformat: '%Y-%m-%d %H:%M:%S'
    file_allowed:
    - clustering_func
    - energy_con
    - energy_eff
    - energy_prod
    - energy_ramping
    - export
    - force_resource
    - om_con
    - om_prod
    - parasitic_eff
    - resource
    - resource_eff
    - storage_loss
    - carrier_ratios
  tech_groups:
    conversion:
      required_constraints: []
      allowed_constraints:
      - energy_cap_equals
      - energy_cap_equals_systemwide
      - energy_cap_max
      - energy_cap_max_systemwide
      - energy_cap_min
      - energy_cap_min_use
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_con
      - energy_eff
      - energy_prod
      - energy_ramping
      - export_cap
      - export_carrier
      - lifetime
      - units_equals
      - units_equals_systemwide
      - units_max
      - units_max_systemwide
      - units_min
      allowed_group_constraints:
      - demand_share_min
      - demand_share_max
      - demand_share_equals
      - demand_share_per_timestep_min
      - demand_share_per_timestep_max
      - demand_share_per_timestep_equals
      - demand_share_per_timestep_decision
      - carrier_prod_share_min
      - carrier_prod_share_max
      - carrier_prod_share_equals
      - carrier_prod_share_per_timestep_min
      - carrier_prod_share_per_timestep_max
      - carrier_prod_share_per_timestep_equals
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_share_min
      - energy_cap_share_max
      - energy_cap_share_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      - carrier_prod_min
      - carrier_prod_max
      - carrier_prod_equals
      - carrier_con_min
      - carrier_con_max
      - carrier_con_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - export
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_con
      - om_prod
      - purchase
      essentials:
        parent:
      constraints:
        energy_con: true
        energy_prod: true
    conversion_plus:
      required_constraints: []
      allowed_constraints:
      - carrier_ratios
      - energy_cap_equals
      - energy_cap_equals_systemwide
      - energy_cap_max
      - energy_cap_max_systemwide
      - energy_cap_min
      - energy_cap_min_use
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_con
      - energy_eff
      - energy_prod
      - energy_ramping
      - export_cap
      - export_carrier
      - lifetime
      - units_equals
      - units_equals_systemwide
      - units_max
      - units_max_systemwide
      - units_min
      allowed_group_constraints:
      - demand_share_min
      - demand_share_max
      - demand_share_equals
      - demand_share_per_timestep_min
      - demand_share_per_timestep_max
      - demand_share_per_timestep_equals
      - demand_share_per_timestep_decision
      - carrier_prod_share_min
      - carrier_prod_share_max
      - carrier_prod_share_equals
      - carrier_prod_share_per_timestep_min
      - carrier_prod_share_per_timestep_max
      - carrier_prod_share_per_timestep_equals
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_share_min
      - energy_cap_share_max
      - energy_cap_share_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      - carrier_prod_min
      - carrier_prod_max
      - carrier_prod_equals
      - carrier_con_min
      - carrier_con_max
      - carrier_con_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - export
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_con
      - om_prod
      - purchase
      essentials:
        parent:
      constraints:
        energy_con: true
        energy_prod: true
    demand:
      required_constraints:
      - resource
      allowed_constraints:
      - energy_con
      - force_resource
      - resource
      - resource_area_equals
      - resource_scale
      - resource_unit
      allowed_group_constraints:
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - carrier_con_min
      - carrier_con_max
      - carrier_con_equals
      allowed_costs:
      - om_con
      essentials:
        parent:
      constraints:
        energy_con: true
        force_resource: true
        resource_unit: energy
    storage:
      required_constraints: []
      allowed_constraints:
      - charge_rate
      - energy_cap_per_storage_cap_min
      - energy_cap_per_storage_cap_max
      - energy_cap_per_storage_cap_equals
      - energy_cap_equals
      - energy_cap_equals_systemwide
      - energy_cap_max
      - energy_cap_max_systemwide
      - energy_cap_min
      - energy_cap_min_use
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_con
      - energy_eff
      - energy_prod
      - energy_ramping
      - export_cap
      - export_carrier
      - force_asynchronous_prod_con
      - lifetime
      - storage_cap_equals
      - storage_cap_max
      - storage_cap_min
      - storage_cap_per_unit
      - storage_initial
      - storage_loss
      - storage_time_max
      - storage_discharge_depth
      - units_equals
      - units_equals_systemwide
      - units_max
      - units_max_systemwide
      - units_min
      allowed_group_constraints:
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_share_min
      - energy_cap_share_max
      - energy_cap_share_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      - storage_cap_min
      - storage_cap_max
      - storage_cap_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - export
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_prod
      - purchase
      - storage_cap
      essentials:
        parent:
      constraints:
        energy_con: true
        energy_prod: true
        storage_cap_max: inf
    supply:
      required_constraints: []
      allowed_constraints:
      - energy_cap_equals
      - energy_cap_equals_systemwide
      - energy_cap_max
      - energy_cap_max_systemwide
      - energy_cap_min
      - energy_cap_min_use
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_eff
      - energy_prod
      - energy_ramping
      - export_cap
      - export_carrier
      - force_resource
      - lifetime
      - resource
      - resource_area_equals
      - resource_area_max
      - resource_area_min
      - resource_area_per_energy_cap
      - resource_min_use
      - resource_scale
      - resource_unit
      - units_equals
      - units_equals_systemwide
      - units_max
      - units_max_systemwide
      - units_min
      allowed_group_constraints:
      - demand_share_min
      - demand_share_max
      - demand_share_equals
      - demand_share_per_timestep_min
      - demand_share_per_timestep_max
      - demand_share_per_timestep_equals
      - demand_share_per_timestep_decision
      - carrier_prod_share_min
      - carrier_prod_share_max
      - carrier_prod_share_equals
      - carrier_prod_share_per_timestep_min
      - carrier_prod_share_per_timestep_max
      - carrier_prod_share_per_timestep_equals
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_share_min
      - energy_cap_share_max
      - energy_cap_share_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      - resource_area_min
      - resource_area_max
      - resource_area_equals
      - carrier_prod_min
      - carrier_prod_max
      - carrier_prod_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - export
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_con
      - om_prod
      - purchase
      - resource_area
      essentials:
        parent:
      constraints:
        energy_prod: true
        resource: inf
        resource_unit: energy
    supply_plus:
      required_constraints: []
      allowed_constraints:
      - charge_rate
      - energy_cap_per_storage_cap_min
      - energy_cap_per_storage_cap_max
      - energy_cap_per_storage_cap_equals
      - energy_cap_equals
      - energy_cap_equals_systemwide
      - energy_cap_max
      - energy_cap_max_systemwide
      - energy_cap_min
      - energy_cap_min_use
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_eff
      - energy_prod
      - energy_ramping
      - export_cap
      - export_carrier
      - force_resource
      - lifetime
      - parasitic_eff
      - resource
      - resource_area_equals
      - resource_area_max
      - resource_area_min
      - resource_area_per_energy_cap
      - resource_cap_equals
      - resource_cap_equals_energy_cap
      - resource_cap_max
      - resource_cap_min
      - resource_eff
      - resource_min_use
      - resource_scale
      - resource_unit
      - storage_cap_equals
      - storage_cap_max
      - storage_cap_min
      - storage_cap_per_unit
      - storage_initial
      - storage_loss
      - units_equals
      - units_equals_systemwide
      - units_max
      - units_max_systemwide
      - units_min
      allowed_group_constraints:
      - demand_share_min
      - demand_share_max
      - demand_share_equals
      - demand_share_per_timestep_min
      - demand_share_per_timestep_max
      - demand_share_per_timestep_equals
      - demand_share_per_timestep_decision
      - carrier_prod_share_min
      - carrier_prod_share_max
      - carrier_prod_share_equals
      - carrier_prod_share_per_timestep_min
      - carrier_prod_share_per_timestep_max
      - carrier_prod_share_per_timestep_equals
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_share_min
      - energy_cap_share_max
      - energy_cap_share_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      - resource_area_min
      - resource_area_max
      - resource_area_equals
      - carrier_prod_min
      - carrier_prod_max
      - carrier_prod_equals
      - storage_cap_min
      - storage_cap_max
      - storage_cap_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - export
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_con
      - om_prod
      - purchase
      - resource_area
      - resource_cap
      - storage_cap
      essentials:
        parent:
      constraints:
        energy_prod: true
        resource: inf
        resource_eff: 1.0
        resource_unit: energy
    transmission:
      required_constraints: []
      allowed_constraints:
      - energy_cap_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_per_unit
      - energy_cap_scale
      - energy_con
      - energy_eff
      - energy_eff_per_distance
      - energy_prod
      - force_asynchronous_prod_con
      - lifetime
      - one_way
      allowed_group_constraints:
      - cost_max
      - cost_min
      - cost_equals
      - cost_var_max
      - cost_var_min
      - cost_var_equals
      - cost_investment_min
      - cost_investment_max
      - cost_investment_equals
      - energy_cap_min
      - energy_cap_max
      - energy_cap_equals
      - net_import_share_min
      - net_import_share_max
      - net_import_share_equals
      allowed_costs:
      - depreciation_rate
      - energy_cap
      - energy_cap_per_distance
      - interest_rate
      - om_annual
      - om_annual_investment_fraction
      - om_prod
      - purchase
      - purchase_per_distance
      essentials:
        parent:
      constraints:
        energy_con: true
        energy_prod: true
  techs:
    battery:
      constraints:
        energy_cap_per_storage_cap_max: 0.25
        energy_eff: 0.98
        lifetime: 22.5
        storage_initial: 0
      costs:
        monetary:
          interest_rate: 0.1
          om_annual_investment_fraction: 0.57
          om_prod: 0.002
          storage_cap: 885
      essentials:
        carrier: electricity
        color: '#33F6FF'
        name: Battery storage
        parent: storage
    ccgt:
      constraints:
        energy_cap_max_systemwide: 10000
        energy_eff: 0.57
        energy_ramping: 0.8
        lifetime: 25
        resource: inf
      costs:
        monetary:
          energy_cap: 904.7795
          interest_rate: 0.1
          om_annual_investment_fraction: 3.3392
          om_con: 0.1
          om_prod: 0.00455
      essentials:
        carrier_out: electricity
        color: '#AB2C18'
        name: Combined cycle gas turbine
        parent: supply
    curtailment:
      constraints:
        force_resource: false
        resource: -100000.0
      costs:
        monetary:
          om_con: 0
      essentials:
        carrier_in: electricity
        color: '#6F6C7C'
        name: Electricity curtailment
        parent: demand
    demand_electricity:
      constraints:
        force_resource: true
        resource: file=electricity_demand_nuts2.csv
      essentials:
        carrier: electricity
        color: '#072486'
        name: Electricity demand
        parent: demand
    export_electricity:
      constraints:
        force_resource: false
        resource: -100000.0
      costs:
        monetary:
          om_con: -0.1
      essentials:
        carrier_in: electricity
        color: '#D800FF'
        name: Electricity export
        parent: demand
    hvac_transmission:
      constraints:
        energy_eff: 0.96
        lifetime: 60
      costs:
        monetary:
          energy_cap: 175
          interest_rate: 0.1
          om_annual_investment_fraction: 0.015
      essentials:
        carrier: electricity
        color: '#CF74B2'
        name: Transmission intra-zonal electricity
        parent: transmission
    hydrogen_to_power:
      constraints:
        energy_eff: 0.542
        lifetime: 15
        storage_initial: 0
      costs:
        monetary:
          energy_cap: 3069.866
          interest_rate: 0.1
          om_annual_investment_fraction: 4
          om_prod: 0
          storage_cap: 22.982
      essentials:
        carrier: electricity
        color: '#9958D6'
        name: Hydrogen-to-power storage
        parent: storage
    import_electricity:
      constraints:
        energy_prod: true
        force_resource: false
        lifetime: 40
        resource: 100000.0
        resource_eff: 1
      costs:
        monetary:
          om_prod: 0.1
      essentials:
        carrier_out: electricity
        color: '#FF009E'
        name: Electricity import
        parent: supply
    lost_load:
      constraints:
        energy_prod: true
        force_resource: false
        lifetime: 20
        resource: 100000.0
      costs:
        monetary:
          om_prod: 10000.0
      essentials:
        carrier_out: electricity
        color: '#030303'
        name: Lost load
        parent: supply
    pv_farm:
      constraints:
        force_resource: true
        lifetime: 37.5
        resource: file=pv_nuts2.csv
        resource_unit: energy_per_cap
      costs:
        monetary:
          energy_cap: 676.5703
          interest_rate: 0.1
          om_annual_investment_fraction: 1.7275
          om_prod: 0
      essentials:
        carrier_out: electricity
        color: '#FFE400'
        name: Photovoltaic power farm-scale
        parent: supply
    pv_rooftop:
      constraints:
        force_resource: true
        lifetime: 37.5
        resource: file=pv_nuts2.csv
        resource_unit: energy_per_cap
      costs:
        monetary:
          energy_cap: 880.0251
          interest_rate: 0.1
          om_annual_investment_fraction: 1.2567
          om_prod: 0
      essentials:
        carrier_out: electricity
        color: '#FFB600'
        name: Photovoltaic power distributed
        parent: supply
    wind_offshore:
      constraints:
        force_resource: true
        lifetime: 30
        resource: file=windoff_nuts2.csv
        resource_unit: energy_per_cap
      costs:
        monetary:
          energy_cap: 1139.8826
          interest_rate: 0.1
          om_annual_investment_fraction: 2.3741
          om_prod: 0
      essentials:
        carrier_out: electricity
        color: '#275FB0'
        name: Off-shore wind power
        parent: supply
    wind_onshore:
      constraints:
        force_resource: true
        lifetime: 28.5
        resource: file=wind_nuts2.csv
        resource_unit: energy_per_cap
      costs:
        monetary:
          energy_cap: 1139.8826
          interest_rate: 0.1
          om_annual_investment_fraction: 1.2347
          om_prod: 0
      essentials:
        carrier_out: electricity
        color: '#27B09F'
        name: On-shore wind power
        parent: supply
  locations:
    NL11:
      coordinates:
        lat: 53.151875
        lon: 6.8779375
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_offshore:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
    NL12:
      coordinates:
        lat: 53.130320000000005
        lon: 5.94212
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_offshore:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
    NL13:
      coordinates:
        lat: 52.79966
        lon: 6.69054
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
    NL21:
      coordinates:
        lat: 52.41295
        lon: 6.442433333333334
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
    NL22:
      coordinates:
        lat: 51.94764
        lon: 6.012
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
    NL23:
      coordinates:
        lat: 52.60066666666666
        lon: 5.672633333333333
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_offshore:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
    NL31:
      coordinates:
        lat: 52.1608
        lon: 4.9873
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
    NL32:
      coordinates:
        lat: 52.36538333333333
        lon: 4.748033333333333
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_offshore:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
    NL33:
      coordinates:
        lat: 51.95356666666667
        lon: 4.452383333333334
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_offshore:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
    NL34:
      coordinates:
        lat: 51.4261
        lon: 4.2185
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_offshore:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
    NL41:
      coordinates:
        lat: 51.573025
        lon: 5.135325
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
    NL42:
      coordinates:
        lat: 51.1524
        lon: 5.9052
      techs:
        battery:
        ccgt:
        curtailment:
        demand_electricity:
        hydrogen_to_power:
        lost_load:
        pv_farm:
          constraints:
            energy_cap_max: 2500
        pv_rooftop:
          constraints:
            energy_cap_max: 5000
        wind_onshore:
          constraints:
            energy_cap_max: 5000
  links:
    NL11,NL12:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 3.4401
            energy_cap_min: 0.6882
          distance: 78.08059088268635
    NL11,NL13:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 15.3276
            energy_cap_min: 3.0655
          distance: 51.40669619092387
    NL12,NL23:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 3.4401
            energy_cap_min: 0.6882
          distance: 77.01279250805582
    NL13,NL21:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 15.3276
            energy_cap_min: 3.0655
          distance: 57.68592103711268
    NL21,NL22:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 11.8867
            energy_cap_min: 2.3773
          distance: 74.3546324021931
    NL21,NL23:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 15.3276
            energy_cap_min: 3.0655
          distance: 70.1574152900598
    NL22,NL41:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 11.8867
            energy_cap_min: 2.3773
          distance: 91.64766157833785
    NL23,NL32:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 16.9811
            energy_cap_min: 3.3962
          distance: 84.8212339513288
    NL31,NL32:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 11.8867
            energy_cap_min: 2.3773
          distance: 34.96977818838089
    NL31,NL33:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 1.1886
            energy_cap_min: 0.2377
          distance: 54.0333446482031
    NL32,NL33:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 11.8867
            energy_cap_min: 2.3773
          distance: 62.54522684034896
    NL33,NL41:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 11.8867
            energy_cap_min: 2.3773
          distance: 79.05131602490407
    NL34,NL41:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 11.8867
            energy_cap_min: 2.3773
          distance: 81.91534737849409
    NL41,NL42:
      techs:
        hvac_transmission:
          constraints:
            energy_cap_max: 23.7734
            energy_cap_min: 4.7547
          distance: 88.7810048549968
  config_path: model_files/model.yaml
  overrides:
    fix-design-to-cost-optimal:
      links:
        NL11,NL12:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 3.4401
        NL11,NL13:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 15.3276
        NL12,NL23:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 3.4401
        NL13,NL21:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 15.3276
        NL21,NL22:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 11.8867
        NL21,NL23:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 15.3276
        NL22,NL41:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 11.8867
        NL23,NL32:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 16.9811
        NL31,NL32:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 11.8867
        NL31,NL33:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 1.1886
        NL32,NL33:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 11.8867
        NL33,NL41:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 11.8867
        NL34,NL41:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 11.8867
        NL41,NL42:
          techs:
            hvac_transmission:
              constraints:
                energy_cap_equals: 23.7734
      locations:
        NL11:
          techs:
            battery:
              constraints:
                energy_cap_equals: 127.09184
            ccgt:
              constraints:
                energy_cap_equals: 304.22954
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 140.33621
            pv_farm:
              constraints:
                energy_cap_equals: 629.84064
            pv_rooftop:
              constraints:
                energy_cap_equals: 0.0
            wind_offshore:
              constraints:
                energy_cap_equals: 0.0
            wind_onshore:
              constraints:
                energy_cap_equals: 1428.2441
        NL12:
          techs:
            battery:
              constraints:
                energy_cap_equals: 99.121138
            ccgt:
              constraints:
                energy_cap_equals: 313.78618
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 55.922518
            pv_farm:
              constraints:
                energy_cap_equals: 511.61749
            pv_rooftop:
              constraints:
                energy_cap_equals: 0.0
            wind_offshore:
              constraints:
                energy_cap_equals: 136.3746
            wind_onshore:
              constraints:
                energy_cap_equals: 698.23042
        NL13:
          techs:
            battery:
              constraints:
                energy_cap_equals: 107.19873
            ccgt:
              constraints:
                energy_cap_equals: 215.02311
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 36.012937
            pv_farm:
              constraints:
                energy_cap_equals: 426.31301
            pv_rooftop:
              constraints:
                energy_cap_equals: 0.0
            wind_onshore:
              constraints:
                energy_cap_equals: 735.12399
        NL21:
          techs:
            battery:
              constraints:
                energy_cap_equals: 436.37272
            ccgt:
              constraints:
                energy_cap_equals: 527.62263
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 155.26227
            pv_farm:
              constraints:
                energy_cap_equals: 1775.0946
            pv_rooftop:
              constraints:
                energy_cap_equals: 0.0
            wind_onshore:
              constraints:
                energy_cap_equals: 2508.6146
        NL22:
          techs:
            battery:
              constraints:
                energy_cap_equals: 784.24952
            ccgt:
              constraints:
                energy_cap_equals: 862.49851
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 357.58266
            pv_farm:
              constraints:
                energy_cap_equals: 2500.0
            pv_rooftop:
              constraints:
                energy_cap_equals: 85.884373
            wind_onshore:
              constraints:
                energy_cap_equals: 4942.1074
        NL23:
          techs:
            battery:
              constraints:
                energy_cap_equals: 108.53832
            ccgt:
              constraints:
                energy_cap_equals: 150.43812
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 66.184744
            pv_farm:
              constraints:
                energy_cap_equals: 564.33006
            pv_rooftop:
              constraints:
                energy_cap_equals: 0.0
            wind_offshore:
              constraints:
                energy_cap_equals: 91.355656
            wind_onshore:
              constraints:
                energy_cap_equals: 775.56923
        NL31:
          techs:
            battery:
              constraints:
                energy_cap_equals: 861.19127
            ccgt:
              constraints:
                energy_cap_equals: 830.62373
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 308.71258
            pv_farm:
              constraints:
                energy_cap_equals: 2220.4564
            pv_rooftop:
              constraints:
                energy_cap_equals: 0.0
            wind_onshore:
              constraints:
                energy_cap_equals: 4870.3419
        NL32:
          techs:
            battery:
              constraints:
                energy_cap_equals: 1478.7403
            ccgt:
              constraints:
                energy_cap_equals: 2390.3088
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 500.8108
            pv_farm:
              constraints:
                energy_cap_equals: 2500.0
            pv_rooftop:
              constraints:
                energy_cap_equals: 1405.178
            wind_offshore:
              constraints:
                energy_cap_equals: 874.07251
            wind_onshore:
              constraints:
                energy_cap_equals: 5000.0
        NL33:
          techs:
            battery:
              constraints:
                energy_cap_equals: 1142.1747
            ccgt:
              constraints:
                energy_cap_equals: 2057.6826
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 681.68808
            pv_farm:
              constraints:
                energy_cap_equals: 2500.0
            pv_rooftop:
              constraints:
                energy_cap_equals: 4932.0761
            wind_offshore:
              constraints:
                energy_cap_equals: 1309.9393
            wind_onshore:
              constraints:
                energy_cap_equals: 5000.0
        NL34:
          techs:
            battery:
              constraints:
                energy_cap_equals: 153.92107
            ccgt:
              constraints:
                energy_cap_equals: 111.62968
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 116.39162
            pv_farm:
              constraints:
                energy_cap_equals: 632.98721
            pv_rooftop:
              constraints:
                energy_cap_equals: 0.0
            wind_offshore:
              constraints:
                energy_cap_equals: 0.0
            wind_onshore:
              constraints:
                energy_cap_equals: 947.38497
        NL41:
          techs:
            battery:
              constraints:
                energy_cap_equals: 927.90216
            ccgt:
              constraints:
                energy_cap_equals: 1619.7311
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 333.83025
            pv_farm:
              constraints:
                energy_cap_equals: 2500.0
            pv_rooftop:
              constraints:
                energy_cap_equals: 1025.2478
            wind_onshore:
              constraints:
                energy_cap_equals: 5000.0
        NL42:
          techs:
            battery:
              constraints:
                energy_cap_equals: 380.49455
            ccgt:
              constraints:
                energy_cap_equals: 616.42596
            hydrogen_to_power:
              constraints:
                energy_cap_equals: 106.45379
            pv_farm:
              constraints:
                energy_cap_equals: 1309.1188
            pv_rooftop:
              constraints:
                energy_cap_equals: 0.0
            wind_onshore:
              constraints:
                energy_cap_equals: 2557.1844
    low_gas_price:
      techs:
        ccgt:
          costs:
            monetary:
              om_con: 0.05
    res_2h:
      model:
        time:
          function: resample
          function_options:
            resolution: 2H
    res_3h:
      model:
        time:
          function: resample
          function_options:
            resolution: 3H
    res_6h:
      model:
        time:
          function: resample
          function_options:
            resolution: 6H
    weather_2015:
      model:
        subset_time:
        - '2015-01-01'
        - '2015-01-31'
    weather_2015_summer:
      model:
        subset_time:
        - '2015-07-01'
        - '2015-07-31'
  scenarios:
    2015_weather_low_gas_price:
    - weather_2015
    - low_gas_price
GCOL                                                                                                                                  	               
                                                                                                                                                                                                                                                                             hvac_transmission:NL32                hvac_transmission:NL33                hvac_transmission:NL34                hvac_transmission:NL41                hvac_transmission:NL42                 hydrogen_to_power       !              import_electricity      "       	       lost_load       #              pv_farm $       
       pv_rooftop      %              wind_offshore   &              wind_onshore    '              hvac_transmission:NL12  (              hvac_transmission:NL13  )              hvac_transmission:NL21  *              hvac_transmission:NL22  +              hvac_transmission:NL23  ,              hvac_transmission:NL31  -              export_electricity      .              hvac_transmission       /              hvac_transmission:NL11  0              curtailment     1              demand_electricity      2              ccgt    3              battery 4               5               6              monetary7               8               9               :               ;               <               =               >               ?               @               A               B               C               D              NL23::electricity       E              NL21::electricity       F              NL22::electricity       G              NL13::electricity       H              NL42::electricity       I              NL34::electricity       J              NL12::electricity       K              NL33::electricity       L              NL31::electricity       M              NL41::electricity       N              NL11::electricity       O              NL32::electricity       P               Q               R               S               T               U               V               W               X               Y               Z               [               \               ]              NL23::electricity       ^              NL21::electricity       _              NL22::electricity       `              NL13::electricity       a              NL42::electricity       b              NL34::electricity       c              NL12::electricity       d              NL33::electricity       e              NL31::electricity       f              NL41::electricity       g              NL11::electricity       h              NL32::electricity       i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �       $       NL32::hydrogen_to_power::electricity    �               �               OHDR8    L       L                          *       �R     i       ��     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE 0        NAME          loc_tech_carriers_con   �,�OHDR1    v       v                          *       P�     L       P      W            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE +        _Netcdf4Dimid                �TOHDR,    �       �                          *       �R     �            Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE $        NAME    
      loc_techs   !l�OHDRF                                     *       8!           8A     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE >        NAME    $      loc_techs_balance_demand_constraint   o�DOHDR    �       �                          *       	C            [m     O            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE   �e��ÆBTHD      d(/�      h       ��3�FSHD  k                             P x          �<     H       H       9{ cBTLF �?�    wm-   " �8 8  ' �!2 ]
   �P� {  + oK	 �	   t�	 �
   �2� 7  ! �B� �  - �=] �  $ 1�� �  6 vv�   1 ~�W �	    ͯ� �  ! +˾ �   ( ���  �  # �s�# T   \mK& �  $ ٽ�* 9  + �u�. �  % aL/ M  " ڞu/ �   �a�/ 
  + »�2 �   ) ��9 A  7 @MNI 
  6 ³�L �  " )m�M �  & y��P -    o�6Q q	  ) ��-S B  , ��S �  ) �`T n    � V �  ' 6�gV �   &�V @  ! F�Y y   .��Z �
   �=H	                                                                                    BTLF              8        -    9        E    :        d   9 ;        �   ( <        �   ) =        �    >        
  6 ?        @  ! @        a  7 A        �  , B        �  $ C          " D        7   E        @
   F        ]
   G        |
   H        �   ���9                                                                                                                                                                                                                                        OCHK    	S     Q       )        NAME          loc_techs_cost   3�~OHDRG    j       j                          *       z[     g       zk     Q            ������������������������A         _Netcdf4Coordinates                        	   +        CLASS          DIMENSION_SCALE ?        NAME    %      loc_techs_cost_investment_constraint   ��t\OHDR<    j       j                          *       kr     �       k�     Q           	 ������������������������A         _Netcdf4Coordinates                        
   +        CLASS          DIMENSION_SCALE 4        NAME          loc_techs_investment_cost   ��?�OHDR4    f       f                          *       \�     S       \�     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE ,        NAME          loc_techs_om_cost   ��M�OHDR2                                     *       �     �       �     Q           	 ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE *        NAME          loc_techs_store   ��OHDR    �       �                 @    *         �    ^�     �            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE $        NAME    
      timesteps   9d�OCHK    ?      @ 4 4�  +        _Netcdf4Dimid                �ɅOCHK    ?      @ 4 4�  +        _Netcdf4Dimid                �ɅOCHK    ?      @ 4 4�  +        _Netcdf4Dimid                �'OCHK    ?      @ 4 4�  +        _Netcdf4Dimid                �ɅOCHK    ?      @ 4 4�  +        _Netcdf4Dimid                �eOHDR                                     *       �           #�     N            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE   x�OHDR.                                     *       �           Z�
     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE &        NAME          coordinates   i�=OHDR1    L       L                          *       �           ��
     u            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE +        _Netcdf4Dimid                jV$OHDR1    v       v                          *       �
     ]       ��
     t            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE +        _Netcdf4Dimid                ���OHDR;                                     *       ��
     V       ��
     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE 3        NAME          loc_tech_carriers_demand   �'rHOHDRG                                     *       ��
     �       �
     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE ?        NAME    %      loc_tech_carriers_ramping_constraint   �R�sOHDR?    B       B                          *       ��
     �       V�
     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE 7        NAME          loc_tech_carriers_supply_all   V�kOHDR1    B       B                          *       ��
     <       �     h            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE +        _Netcdf4Dimid                3`�OHDR1                                     *       /     >       /!     e            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE +        _Netcdf4Dimid                ��w�OHDRF    6       6                          *       /     n       �!     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE >        NAME    $      loc_techs_balance_supply_constraint   5n�OHDR1                                     *       E%     k       E5     j            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE +        _Netcdf4Dimid                �C|JOHDR<    �       �                          *       o7     
       oG     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE 4        NAME          loc_techs_cost_constraint   �i�XOHDR@    f       f                          *       �O     [       �_     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE 8        NAME          loc_techs_cost_var_constraint   ��6OHDR3                                     *       �f     �       ��     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE +        NAME          loc_techs_demand   V�"�OHDR1    �       �                          *       �f     �       �     e            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE +        _Netcdf4Dimid                ���OHDR1                                     *       '�     �       '�     q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE +        _Netcdf4Dimid                QTz1OHDR<    N       N                          *       '�     �       ��     Q            ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE 4        NAME          loc_techs_finite_resource   �U!5OHDRC                                     *       �     7       ��     Q            ������������������������A         _Netcdf4Coordinates                            +        CLASS          DIMENSION_SCALE ;        NAME    !      loc_techs_finite_resource_demand   ��мOHDR    6       6                          *       �     h       /�     a            ������������������������A         _Netcdf4Coordinates                        !   +        CLASS          DIMENSION_SCALE   �ٔ;BTIN I        �
   k        �  - �          1 [k     /�     !�     �)     ـ��                                                                                                                                                                                                                                                                                                                                                                                                                                     BTLF J        �
   K        �
   L        �
  " M           N        .  & O        T   P        s  ! Q        �  $ R        �  " S        S   T          - U        B  , V        n  ' W        n    X        �   Y        �  G Z        �  F [        9  + \        d  7 ]        �  / ^          : _        O  7 `        �  6 a        �  < b        �  , c        �  0 d          # e        A  7 f        x  C g        �  , h          3 i        H  3 j        {  + �r�t       OCHK    :�     Q       ;        NAME    !      loc_techs_finite_resource_supply   ��k�OHDR;    �       �                          *       ��     ?       ��     Q            ������������������������A         _Netcdf4Coordinates                        "   +        CLASS          DIMENSION_SCALE 3        NAME          loc_techs_non_conversion   �^��OHDR1    r       r                          *       ��     �       �
     [            ������������������������A         _Netcdf4Coordinates                        #   +        CLASS          DIMENSION_SCALE +        _Netcdf4Dimid             #   T��&OHDR;    B       B                          *       7     `       7"     Q            ������������������������A         _Netcdf4Coordinates                        $   +        CLASS          DIMENSION_SCALE 3        NAME          loc_techs_om_cost_supply   U�6eOHDR4                                     *       �&     [       �6     Q            ������������������������A         _Netcdf4Coordinates                        %   +        CLASS          DIMENSION_SCALE ,        NAME          loc_techs_ramping   k�OHDR4                                     *       �&     t       �6     Q            ������������������������A         _Netcdf4Coordinates                        &   +        CLASS          DIMENSION_SCALE ,        NAME          loc_techs_storage   X06ROHDRH                                     *       J7            JG     Q            ������������������������A         _Netcdf4Coordinates                        '   +        CLASS          DIMENSION_SCALE @        NAME    &      loc_techs_storage_capacity_constraint   ��p�OHDR1                                     *       J7     >       �G     e            ������������������������A         _Netcdf4Coordinates                        (   +        CLASS          DIMENSION_SCALE +        _Netcdf4Dimid             (   �G·OHDR1                                     *       J7     o        P     a            ������������������������A         _Netcdf4Coordinates                        )   +        CLASS          DIMENSION_SCALE +        _Netcdf4Dimid             )   G]��OHDR3    B       B                          *       aP            a`     Q            ������������������������A         _Netcdf4Coordinates                        *   +        CLASS          DIMENSION_SCALE +        NAME          loc_techs_supply   �7xOHDR7    B       B                          *       aP     �       �`     Q            ������������������������A         _Netcdf4Coordinates                        +   +        CLASS          DIMENSION_SCALE /        NAME          loc_techs_supply_all   z��7OHDRB    B       B                          *       #e     _       #u     Q            ������������������������A         _Netcdf4Coordinates                        ,   +        CLASS          DIMENSION_SCALE :        NAME           loc_techs_supply_conversion_all   F��:OHDR                                     *       �y     ;       ��     �            ������������������������A         _Netcdf4Coordinates                        -   +        CLASS          DIMENSION_SCALE   V�c�    �4�HBTIN ��] O  7 �[�� �  ! [i     &��     'YU     YSOz                                                                                                                                                                                                                                                                                                                                                                                                                                                                     BTLF ���] ~  7 �d �  + O�mi   # FY*j |
   ,{n H  3 o=�n �   �Elo F  8 ̹�p �
  " {�t �  0 ��{ �    F��| �  / �T>}   " �$�� 3	  > O�� X   �lo� �  ) 0d�� �  F M߫�    �<� �   T���    1M7� �  " n�� �    U�� �  > �X� "  $ �N� �	   �(�� x  C �9p� �
   �ԕ� v   %��   : �Fݵ _  2 ��_� 7   J鱷 n  ' �Pr� 	   �t1� �  , �� a  7 �a�� .  & 7���   - ���� #  5 Nr� �  , $��� �  3 ��                                                                         OHDRj                                     *       �y     t      ��     �            ������������������������A         _Netcdf4Coordinates                        .   +        CLASS          DIMENSION_SCALE 1        NAME          loc_techs_transmission +        _Netcdf4Dimid             .     rAW�OHDRX                                     *       ��     '       �9     �            ������������������������A         _Netcdf4Coordinates                        /   +        CLASS          DIMENSION_SCALE         NAME          locs +        _Netcdf4Dimid             /     ���>OHDR,                                     *       ��     @       ��     Q            ������������������������A         _Netcdf4Coordinates                        0   +        CLASS          DIMENSION_SCALE $        NAME    
      resources   ~f�qOHDR/                                     *       ��     E       �     Q            ������������������������A         _Netcdf4Coordinates                        1   +        CLASS          DIMENSION_SCALE '        NAME          techs_demand   ���VOHDRN                                     *       ��     L       S�     Q            ������������������������A         _Netcdf4Coordinates                        2   +        CLASS          DIMENSION_SCALE F        NAME    ,      techs_energy_capacity_systemwide_constraint   �RAOHDR9                                     *       ��     O       ��     Q            ������������������������A         _Netcdf4Coordinates                        3   +        CLASS          DIMENSION_SCALE 1        NAME          techs_non_transmission   i3yOHDR0                                     *       ��     h       ��     Q            ������������������������A         _Netcdf4Coordinates                        4   +        CLASS          DIMENSION_SCALE (        NAME          techs_storage   "L8�OHDR/                                     *       ��     m       F�     Q            ������������������������A         _Netcdf4Coordinates                        5   +        CLASS          DIMENSION_SCALE '        NAME          techs_supply   ��&3OHDR5                                     *       ��     |       ��     Q            ������������������������A         _Netcdf4Coordinates                        6   +        CLASS          DIMENSION_SCALE -        NAME          techs_transmission   �|�OHDR;                                     *       �            �     Q            ������������������������A         _Netcdf4Coordinates                        7   +        CLASS          DIMENSION_SCALE 3        NAME          techs_transmission_names   �}%MNetcdf4Dimid             7   :��FSSE �      �  T    � �    �             
 K �J    �Q�=FSSE 	i       �   �     �	     �   &  �   }�韁���FHDB X�      
  ^��\       techs_transmission_names3�     E       
energy_cap&�     F       carrier_prod��     G       carrier_con�     I       storage_cap��     J       storage��     K       cost_var�     L       cost_investment��     M       unmet_demand�     N       cost_investment_rhsq�     O       cost_var_rhsd�     P       system_balance�     Q       required_resource��     R       capacity_factor~Q     ~       techs_transmission�      FHDB X�        �4.Wr       loc_techs_supply��     s       loc_techs_supply_all�     t       loc_techs_supply_conversion_all+�     u       +loc_techs_symmetric_transmission_constrainty�     v       loc_techs_transmission��     x       	resourcesi�     y       techs_demand��     z       +techs_energy_capacity_systemwide_constraintܩ     {       techs_non_transmission6�     |       techs_storage{�     }       techs_supply��     �       resource9�     on�       FHDB X�        � ��h        loc_techs_finite_resource_demandϊ     i        loc_techs_finite_resource_supply�     j       loc_techs_non_conversion��     k       loc_techs_non_transmissionג     l       loc_techs_om_cost_supply�     m       loc_techs_ramping[�     n       loc_techs_storage��     o       %loc_techs_storage_capacity_constraintۗ     p       $loc_techs_storage_initial_constraint/�     q        loc_techs_storage_max_constraintl�     H       cost)�      FHDB X�        ���^       'loc_tech_carriers_supply_conversion_all1~     _       $loc_techs_balance_storage_constraintn     a       )loc_techs_balance_transmission_constraint��     b       loc_techs_cost_constraint:�     c       loc_techs_cost_var_constraint��     d       loc_techs_demand΅     e       $loc_techs_energy_capacity_constraint�     f       0loc_techs_energy_capacity_storage_max_constraintJ�     g       loc_techs_finite_resource��     �       colors�     FHDB X�        /��aC       loc_techs_store�q     D       	timesteps�r     S       carriers|U     W       carrier_tiers�u     X       coordinates�v     Y       4loc_tech_carriers_carrier_consumption_max_constraint�w     Z       3loc_tech_carriers_carrier_production_max_constrainty     [       loc_tech_carriers_demandLz     \       $loc_tech_carriers_ramping_constraint�{     ]       loc_tech_carriers_supply_all�|     `       #loc_techs_balance_supply_constraint��     FHDB X�          p�        techs'�     8       costs��     9       loc_carriers��     :       &loc_carriers_system_balance_constraint��     ;       loc_tech_carriers_con�b     <       loc_tech_carriers_prodd     =       	loc_techsHe     >       #loc_techs_balance_demand_constraint�f     ?       loc_techs_cost�g     @       $loc_techs_cost_investment_constraint�m     A       loc_techs_investment_cost�n     B       loc_techs_om_costEp     w       locs�      FHIB X�         !�     !�     !�     !�     !�     !�     �}
     �     k�MFHDB �          ,_@     run_config    J     backend: pyomo
bigM: 1000000.0
cyclic_storage: true
ensure_feasibility: true
mode: plan
objective_options:
  cost_class:
    monetary: 1
  sense: minimize
objective: minmax_cost_optimization
operation:
  window:
  horizon:
  use_cap_results: false
spores_options:
  spores_number: 3
  slack: 0.1
  score_cost_class: spores_score
  objective_cost_class:
    spores_score: 1
    monetary: 0
  slack_cost_group:
  save_per_spore: false
  save_per_spore_path:
  skip_cost_op: false
relax_constraint:
  demand_share_per_timestep_decision_main_constraint: 0
solver: cbc
zero_threshold: 1e-10
                                                                                                                                                                                                                                                                                                                                                                                                FHDB �       @   ��5 	    defaults    �
     carrier_ratios:
charge_rate:
energy_cap_per_storage_cap_min: 0
energy_cap_per_storage_cap_max: .inf
energy_cap_per_storage_cap_equals:
energy_cap_equals:
energy_cap_equals_systemwide:
energy_cap_max: .inf
energy_cap_max_systemwide: .inf
energy_cap_min: 0
energy_cap_min_use: 0
energy_cap_per_unit:
energy_cap_scale: 1.0
energy_con: false
energy_eff: 1.0
energy_eff_per_distance: 1.0
energy_prod: false
energy_ramping:
export_cap: .inf
export_carrier:
force_asynchronous_prod_con: false
force_resource: false
lifetime:
one_way: false
parasitic_eff: 1.0
resource: 0
resource_area_equals:
resource_area_max: .inf
resource_area_min: 0
resource_area_per_energy_cap:
resource_cap_equals:
resource_cap_equals_energy_cap: false
resource_cap_max: .inf
resource_cap_min: 0
resource_eff: 1.0
resource_min_use: 0
resource_scale: 1.0
resource_unit: energy
storage_cap_equals:
storage_cap_max: .inf
storage_cap_min: 0
storage_cap_per_unit:
storage_discharge_depth: 0
storage_initial: 0
storage_loss: 0
units_equals:
units_equals_systemwide:
units_max:
units_max_systemwide: .inf
units_min:
cost_energy_cap: 0
cost_energy_cap_per_distance: 0
cost_export: 0
cost_interest_rate: 0
cost_om_annual: 0
cost_om_annual_investment_fraction: 0
cost_om_con: 0
cost_om_prod: 0
cost_purchase: 0
cost_resource_area: 0
cost_resource_cap: 0
cost_storage_cap: 0
cost_depreciation_rate: 1
transmission_node: false
coordinates: {}
available_area:
techs: None
exists: true
group_demand_share_min: 0
group_demand_share_max: .inf
group_demand_share_equals:
group_demand_share_per_timestep_min: 0
group_demand_share_per_timestep_max: .inf
group_demand_share_per_timestep_equals:
group_demand_share_per_timestep_decision:
group_carrier_prod_share_min: 0
group_carrier_prod_share_max: .inf
group_carrier_prod_share_equals:
group_carrier_prod_share_per_timestep_min: 0
group_carrier_prod_share_per_timestep_max: .inf
group_carrier_prod_share_per_timestep_equals:
group_net_import_share_min:
group_net_import_share_max:
group_net_import_share_equals:
group_carrier_prod_min:
group_carrier_prod_max:
group_carrier_prod_equals:
group_carrier_con_min:
group_carrier_con_max:
group_carrier_con_equals:
group_cost_min:
group_cost_max:
group_cost_equals:
group_cost_var_min:
group_cost_var_max:
group_cost_var_equals:
group_cost_investment_min:
group_cost_investment_max:
group_cost_investment_equals:
group_energy_cap_share_min: 0
group_energy_cap_share_max: .inf
group_energy_cap_share_equals:
group_energy_cap_min: 0
group_energy_cap_max: .inf
group_energy_cap_equals:
group_storage_cap_min: 0
group_storage_cap_max: .inf
group_storage_cap_equals:
group_resource_area_min: 0
group_resource_area_max: .inf
group_resource_area_equals:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           FHDB �           ��cz     termination_condition          optimal     objective_function_value  ?      @ 4 4�                '���/=A     solution_time  ?      @ 4 4�                ���YKH@     time_finished          2025-03-19 14:21:47     calliope_version          0.6.10     applied_overrides          res_3h 	    scenario          res_3h     allow_operate_mode                                model_config         calliope_version: 0.6.10
name: Stylised Dutch power system at NUTS2 resolution
subset_time:
- '2015-03-01'
- '2015-03-31'
time:
  function: resample
  function_options:
    resolution: 3H
timeseries_data_path: model_files\timeseries_data
timeseries_dateformat: '%Y-%m-%d %H:%M:%S'
     _NCProperties    "      version=2,netcdf=4.8.1,hdf5=1.12.2                                                                                                                                                                            FHIB �           v�     v�     ��������������������������������������������������������������������������������v�     �������������������������d3S   �R     3      �R     2      �R     0      �R     1      �R     -      �R     .      �R     /      �R     '      �R     (      �R     )      �R     *      �R     +      �R     ,      �R           �R           �R           �R           �R           �R            �R     !   	   �R     "      �R     #   
   �R     $      �R     %      �R     &      �R     6      �R     O      �R     N      �R     M      �R     J      �R     K      �R     L      �R     D      �R     E      �R     F      �R     G      �R     H      �R     I      �R     h      �R     g      �R     f      �R     c      �R     d      �R     e      �R     ]      �R     ^      �R     _      �R     `      �R     a      �R     b      P�     K      P�     J   )   P�     I   $   P�     G   )   P�     H      P�     B   $   P�     C      P�     D   )   P�     E   )   P�     F   )   P�     9   %   P�     :   )   P�     ;   $   P�     <   %   P�     =      P�     >      P�     ?      P�     @   %   P�     A   $   P�     &      P�     '   )   P�     (   %   P�     )   )   P�     *   )   P�     +   %   P�     ,   )   P�     -   )   P�     .   )   P�     /      P�     0   $   P�     1   )   P�     2   %   P�     3   )   P�     4   )   P�     5      P�     6   %   P�     7      P�     8   $   �R     �   $   P�           P�        $   P�           P�           P�           P�        %   P�        )   P�           P�     	      P�     
   $   P�        )   P�        )   P�        )   P�        $   P�        %   P�        )   P�        $   P�           P�           P�        )   P�           P�        )   P�        %   P�           P�        )   P�        %   P�        )   P�        )   P�           P�           P�           P�         %   P�     !   $   P�     "   )   P�     #   )   P�     $   )   P�     %   x^K��8}�i{ *�   ��     N   OCHK   O�     R      +        _Netcdf4Dimid                  m��OCHK   \�     �       +        _Netcdf4Dimid                  v̠OCHK    �     �       +        _Netcdf4Dimid                  �5
OCHK    ��     �       +        _Netcdf4Dimid                  ���uGCOL                  $       NL23::hydrogen_to_power::electricity                  NL11::curtailment::electricity         $       NL22::hydrogen_to_power::electricity                  NL13::battery::electricity                    NL23::battery::electricity                    NL42::battery::electricity             %       NL42::demand_electricity::electricity          )       NL23::hvac_transmission:NL32::electricity       	              NL41::curtailment::electricity  
              NL21::curtailment::electricity         $       NL12::hydrogen_to_power::electricity           )       NL32::hvac_transmission:NL23::electricity              )       NL22::hvac_transmission:NL21::electricity              )       NL12::hvac_transmission:NL23::electricity              $       NL13::hydrogen_to_power::electricity           %       NL41::demand_electricity::electricity          )       NL41::hvac_transmission:NL22::electricity              $       NL41::hydrogen_to_power::electricity                  NL23::curtailment::electricity                NL22::curtailment::electricity         )       NL11::hvac_transmission:NL13::electricity                     NL13::curtailment::electricity         )       NL23::hvac_transmission:NL21::electricity              %       NL33::demand_electricity::electricity                 NL11::battery::electricity             )       NL13::hvac_transmission:NL11::electricity              %       NL23::demand_electricity::electricity          )       NL33::hvac_transmission:NL32::electricity              )       NL41::hvac_transmission:NL42::electricity                     NL42::curtailment::electricity                NL33::battery::electricity                     NL41::battery::electricity      !       %       NL12::demand_electricity::electricity   "       $       NL34::hydrogen_to_power::electricity    #       )       NL31::hvac_transmission:NL33::electricity       $       )       NL12::hvac_transmission:NL11::electricity       %       )       NL22::hvac_transmission:NL41::electricity       &       $       NL21::hydrogen_to_power::electricity    '              NL31::battery::electricity      (       )       NL21::hvac_transmission:NL13::electricity       )       %       NL31::demand_electricity::electricity   *       )       NL32::hvac_transmission:NL31::electricity       +       )       NL31::hvac_transmission:NL32::electricity       ,       %       NL22::demand_electricity::electricity   -       )       NL42::hvac_transmission:NL41::electricity       .       )       NL21::hvac_transmission:NL23::electricity       /       )       NL11::hvac_transmission:NL12::electricity       0              NL32::battery::electricity      1       $       NL31::hydrogen_to_power::electricity    2       )       NL13::hvac_transmission:NL21::electricity       3       %       NL34::demand_electricity::electricity   4       )       NL23::hvac_transmission:NL12::electricity       5       )       NL41::hvac_transmission:NL34::electricity       6              NL31::curtailment::electricity  7       %       NL32::demand_electricity::electricity   8              NL34::curtailment::electricity  9       )       NL21::hvac_transmission:NL22::electricity       :       %       NL11::demand_electricity::electricity   ;       )       NL33::hvac_transmission:NL41::electricity       <       $       NL11::hydrogen_to_power::electricity    =       %       NL21::demand_electricity::electricity   >              NL33::curtailment::electricity  ?              NL22::battery::electricity      @              NL12::curtailment::electricity  A       %       NL13::demand_electricity::electricity   B              NL34::battery::electricity      C       $       NL33::hydrogen_to_power::electricity    D              NL21::battery::electricity      E       )       NL33::hvac_transmission:NL31::electricity       F       )       NL34::hvac_transmission:NL41::electricity       G       $       NL42::hydrogen_to_power::electricity    H       )       NL41::hvac_transmission:NL33::electricity       I       )       NL32::hvac_transmission:NL33::electricity       J              NL12::battery::electricity      K              NL32::curtailment::electricity  L               M               N               O               P               Q               R               S               T               U               V               W               X               Y               Z               [               \               ]               ^               _               `               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL21::battery::electricity      �              NL42::ccgt::electricity �       )       NL21::hvac_transmission:NL22::electricity       �       )       NL33::hvac_transmission:NL41::electricity       �       $       NL11::hydrogen_to_power::electricity    �              NL13::lost_load::electricity    �              NL34::pv_rooftop::electricity   �              NL22::battery::electricity      �       $       NL21::hydrogen_to_power::electricity    �              NL12::wind_onshore::electricity �       )       NL31::hvac_transmission:NL32::electricity       �              NL31::wind_onshore::electricity �              NL32::wind_onshore::electricity �              NL11::lost_load::electricity    �               NL12::wind_offshore::electricity�              NL11::wind_onshore::electricity �              NL22::wind_onshore::electricity �              NL33::wind_onshore::electricity �              NL12::lost_load::electricity    �              NL21::lost_load::electricity    �               NL11::wind_offshore::electricity�              NL21::wind_onshore::electricity �              NL23::lost_load::electricity    �       )       NL32::hvac_transmission:NL23::electricity       �              NL22::ccgt::electricity �              NL41::wind_onshore::electricity �       )       NL41::hvac_transmission:NL34::electricity       �       )       NL33::hvac_transmission:NL32::electricity       �              NL22::pv_farm::electricity      �       $       NL34::hydrogen_to_power::electricity    �              NL34::lost_load::electricity    �              NL31::pv_rooftop::electricity   �              NL23::pv_farm::electricity      �       )       NL41::hvac_transmission:NL33::electricity       �       )       NL34::hvac_transmission:NL41::electricity       �              NL34::wind_onshore::electricity �               NL33::wind_offshore::electricity�       )       NL32::hvac_transmission:NL31::electricity       �       )       NL42::hvac_transmission:NL41::electricity       OCHK   ��     �       1        NAME          loc_tech_carriers_prod   ����        O   )        N           L           M   )        H            I           J   )        K           A           B           C           D           E   )        F   $        G           2           3           4           5           6   )        7           8   )        9   $        :           ;   $        <   )        =           >           ?           @   )           )                                                                             )                      )                               !           "   )        #            $           %           &           '           (   )        )           *           +   )        ,            -           .           /   $        0   $        1      P�     �      P�     �   )   P�     �   )   P�     �   $   P�     �      P�     �      P�     �      P�     �   $   P�     �      P�     �   )   P�     �      P�     �      P�     �      P�     �       P�     �      P�     �      P�     �      P�     �      P�     �      P�     �       P�     �      P�     �      P�     �   )   P�     �      P�     �      P�     �   )   P�     �   )   P�     �      P�     �   $   P�     �      P�     �      P�     �      P�     �   )   P�     �   )   P�     �      P�     �       P�     �   )   P�     �   )   P�     �                         $                      $                                 $                   	           
              )           $                      )                      )                      )                      GCOL                        NL31::ccgt::electricity               NL41::pv_rooftop::electricity          $       NL31::hydrogen_to_power::electricity                  NL23::pv_rooftop::electricity          $       NL32::hydrogen_to_power::electricity                  NL42::wind_onshore::electricity               NL22::pv_rooftop::electricity          $       NL22::hydrogen_to_power::electricity    	              NL23::battery::electricity      
              NL32::lost_load::electricity                  NL21::pv_rooftop::electricity          )       NL23::hvac_transmission:NL32::electricity              $       NL12::hydrogen_to_power::electricity                  NL13::ccgt::electricity        )       NL41::hvac_transmission:NL22::electricity                     NL33::ccgt::electricity        )       NL23::hvac_transmission:NL21::electricity                     NL11::battery::electricity             )       NL41::hvac_transmission:NL42::electricity                     NL41::battery::electricity             )       NL12::hvac_transmission:NL11::electricity              )       NL22::hvac_transmission:NL41::electricity                     NL13::pv_rooftop::electricity                 NL33::lost_load::electricity                  NL34::battery::electricity                    NL42::lost_load::electricity                  NL31::pv_farm::electricity                    NL42::pv_farm::electricity             )       NL21::hvac_transmission:NL23::electricity                     NL41::pv_farm::electricity             )       NL11::hvac_transmission:NL12::electricity                      NL23::ccgt::electricity !              NL11::pv_farm::electricity      "              NL32::ccgt::electricity #       )       NL13::hvac_transmission:NL21::electricity       $               NL32::wind_offshore::electricity%              NL41::lost_load::electricity    &              NL33::pv_rooftop::electricity   '              NL12::pv_rooftop::electricity   (              NL32::pv_rooftop::electricity   )       )       NL13::hvac_transmission:NL11::electricity       *              NL32::pv_farm::electricity      +              NL11::ccgt::electricity ,       )       NL31::hvac_transmission:NL33::electricity       -               NL34::wind_offshore::electricity.              NL13::pv_farm::electricity      /              NL12::battery::electricity      0       $       NL42::hydrogen_to_power::electricity    1       $       NL33::hydrogen_to_power::electricity    2              NL21::ccgt::electricity 3              NL41::ccgt::electricity 4              NL13::battery::electricity      5              NL23::wind_onshore::electricity 6              NL42::battery::electricity      7       )       NL22::hvac_transmission:NL21::electricity       8              NL11::pv_rooftop::electricity   9       )       NL12::hvac_transmission:NL23::electricity       :       $       NL13::hydrogen_to_power::electricity    ;              NL34::pv_farm::electricity      <       $       NL41::hydrogen_to_power::electricity    =       )       NL11::hvac_transmission:NL13::electricity       >              NL31::lost_load::electricity    ?              NL22::lost_load::electricity    @              NL33::battery::electricity      A              NL12::pv_farm::electricity      B              NL12::ccgt::electricity C              NL32::battery::electricity      D              NL33::pv_farm::electricity      E              NL13::wind_onshore::electricity F       )       NL23::hvac_transmission:NL12::electricity       G       $       NL23::hydrogen_to_power::electricity    H       )       NL33::hvac_transmission:NL31::electricity       I               NL23::wind_offshore::electricityJ              NL31::battery::electricity      K       )       NL21::hvac_transmission:NL13::electricity       L              NL42::pv_rooftop::electricity   M              NL34::ccgt::electricity N       )       NL32::hvac_transmission:NL33::electricity       O              NL21::pv_farm::electricity              OCHK  
 �6           +        _Netcdf4Dimid                  �e�0   8!          8!          8!          8!          8!          8!          8!          8!          8!          8!     
     8!          8!          8!          8!          8!          8!          8!       
   8!       
   8!     �      8!     �      8!     �   
   8!     �      8!     �      8!     �      8!     �      8!     �      8!           8!          8!          8!          8!          8!          8!          8!          8!          8!     	     8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �   
   8!     �      8!     �   
   8!     �      8!     �      8!     �   
   8!     �   
   8!     �      8!     �      8!     �      8!     �   
   8!     �      8!     �      8!     �      8!     �   
   8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �   
   8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �   
   8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �   
   8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �      8!     �   GCOL                                                                                                                                   	               
                                                                                                                                                                                                                                                                                                                                                          !               "               #               $               %               &               '               (               )               *               +               ,               -               .               /               0               1               2               3               4               5               6               7               8               9               :               ;               <               =               >               ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P               Q               R               S               T               U               V               W               X               Y               Z               [               \               ]               ^               _               `               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL34::demand_electricity�       
       NL23::ccgt      �              NL13::hvac_transmission:NL11    �              NL32::hvac_transmission:NL31    �              NL32::hydrogen_to_power �              NL34::wind_offshore     �              NL13::hydrogen_to_power �              NL42::wind_onshore      �              NL23::demand_electricity�              NL13::curtailment       �              NL23::wind_onshore      �              NL12::pv_rooftop�              NL32::pv_farm   �              NL34::wind_onshore      �              NL41::wind_onshore      �              NL23::wind_offshore     �              NL34::pv_farm   �              NL11::hvac_transmission:NL13    �              NL12::curtailment       �              NL41::demand_electricity�              NL34::curtailment       �              NL12::lost_load �              NL41::lost_load �              NL12::battery   �              NL11::pv_rooftop�              NL23::hydrogen_to_power �              NL12::hvac_transmission:NL23    �              NL13::pv_farm   �              NL31::pv_farm   �              NL11::wind_offshore     �              NL42::pv_rooftop�              NL32::wind_offshore     �              NL41::curtailment       �       
       NL11::ccgt      �              NL13::battery   �              NL23::pv_rooftop�              NL31::battery   �              NL22::curtailment       �              NL22::pv_rooftop�              NL34::pv_rooftop�              NL31::demand_electricity�              NL32::hvac_transmission:NL33    �              NL11::lost_load �              NL22::demand_electricity�              NL33::hvac_transmission:NL41    �              NL33::battery   �              NL22::hvac_transmission:NL21    �              NL41::hvac_transmission:NL34    �              NL11::pv_farm   �              NL32::lost_load �       
       NL32::ccgt      �              NL34::hydrogen_to_power �              NL34::lost_load �              NL31::wind_onshore      �              NL34::hvac_transmission:NL41    �              NL33::curtailment       �              NL13::wind_onshore      �              NL11::hydrogen_to_power �              NL12::hvac_transmission:NL11    �              NL32::pv_rooftop�              NL11::curtailment       �              NL41::hvac_transmission:NL33    �              NL42::battery   �              NL31::pv_rooftop�              NL41::hydrogen_to_power �              NL31::hydrogen_to_power �              NL11::hvac_transmission:NL12    �              NL22::hydrogen_to_power �              NL21::lost_load �              NL23::battery   �              NL33::wind_offshore     �              NL11::wind_onshore      �              NL13::pv_rooftop�              NL21::pv_rooftop�              NL21::pv_farm   �              NL32::curtailment       �              NL23::hvac_transmission:NL12    �              NL22::pv_farm   �              NL13::lost_load �              NL11::battery   �              NL42::lost_load �              NL21::hvac_transmission:NL23    �              NL32::hvac_transmission:NL23    �              NL22::wind_onshore      �       
       NL42::ccgt      �              NL22::lost_load �       
       NL41::ccgt      �              NL12::pv_farm   �              NL13::demand_electricity�       
       NL33::ccgt      �       
       NL34::ccgt      �              NL41::hvac_transmission:NL42    �              NL41::pv_farm   �              NL22::battery   �       
       NL21::ccgt      �              NL33::pv_rooftop�              NL32::wind_onshore      �              NL12::demand_electricity�       
       NL12::ccgt      �              NL33::hvac_transmission:NL31    �              NL42::curtailment       �              NL21::hydrogen_to_power �              NL32::battery   �              NL42::pv_farm   �              NL21::curtailment       �              NL21::battery   �       
       NL31::ccgt      �              NL33::lost_load �              NL42::hvac_transmission:NL41    �       
       NL13::ccgt      �              NL13::hvac_transmission:NL21    �              NL23::hvac_transmission:NL21    �              NL31::curtailment       �              NL22::hvac_transmission:NL41                  NL31::hvac_transmission:NL32                 NL21::wind_onshore                   NL21::demand_electricity             NL23::curtailment                    NL23::pv_farm                NL33::wind_onshore                   NL21::hvac_transmission:NL22                 NL12::hydrogen_to_power              NL41::battery   	             NL31::hvac_transmission:NL33    
             NL33::pv_farm                NL42::hydrogen_to_power              NL41::hvac_transmission:NL22                 NL31::lost_load              NL23::hvac_transmission:NL32                 NL42::demand_electricity             NL33::hydrogen_to_power              NL41::pv_rooftop      
       NL22::ccgt                   NL21::hvac_transmission:NL13                 NL23::lost_load              NL33::hvac_transmission:NL32                 NL12::wind_offshore                  NL33::demand_electricity             NL12::wind_onshore                   NL32::demand_electricity             NL11::demand_electricity             NL34::battery                                                                          !              "              #              $              %              &              '              (              )              *              +              ,              -              .              /              0              1              2              3              4              5             NL21::demand_electricity6             NL23::curtailment       7              OCHK    �O     �       +        _Netcdf4Dimid                  ^��   	C           	C           	C           	C           	C           	C           	C           	C           	C           	C           	C           	C           8!     5     8!     6     	C           	C           	C           	C           	C           	C           	C           	C           	C     	      	C     
   GCOL                        NL41::curtailment                     NL32::curtailment                     NL22::curtailment                     NL31::demand_electricity              NL22::demand_electricity              NL13::demand_electricity              NL33::curtailment                     NL11::curtailment       	              NL12::demand_electricity
              NL42::curtailment                     NL13::curtailment                     NL42::demand_electricity              NL12::curtailment                     NL41::demand_electricity              NL34::curtailment                     NL31::curtailment                     NL32::demand_electricity              NL33::demand_electricity              NL23::demand_electricity              NL11::demand_electricity              NL34::demand_electricity              NL21::curtailment                                                                                                                                                              !               "               #               $               %               &               '               (               )               *               +               ,               -               .               /               0               1               2               3               4               5               6               7               8               9               :               ;               <               =               >               ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P               Q               R               S               T               U               V               W               X               Y               Z               [               \               ]               ^               _               `               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL13::hvac_transmission:NL11    �              NL32::hvac_transmission:NL31    �              NL32::hydrogen_to_power �              NL34::wind_offshore     �              NL13::hydrogen_to_power �              NL42::wind_onshore      �              NL13::curtailment       �              NL23::wind_onshore      �              NL12::pv_rooftop�              NL32::pv_farm   �              NL34::wind_onshore      �              NL41::wind_onshore      �              NL23::wind_offshore     �              NL34::pv_farm   �              NL11::hvac_transmission:NL13    �              NL12::curtailment       �              NL34::curtailment       �              NL12::lost_load �              NL41::lost_load �              NL12::battery   �              NL11::pv_rooftop�              NL23::hydrogen_to_power �              NL12::hvac_transmission:NL23    �              NL13::pv_farm   �              NL31::pv_farm   �              NL11::wind_offshore     �              NL42::pv_rooftop�              NL32::wind_offshore     �               �               OCHK    �     �       +        _Netcdf4Dimid                  �}N:   z[     f      z[     e      z[     d      z[     b      z[     c      z[     ^      z[     _      z[     `      z[     a      z[     V      z[     W      z[     X      z[     Y   
   z[     Z   
   z[     [      z[     \      z[     ]   
   z[     F      z[     G      z[     H      z[     I      z[     J      z[     K      z[     L      z[     M      z[     N      z[     O      z[     P      z[     Q      z[     R      z[     S      z[     T      z[     U      z[     &      z[     '      z[     (      z[     )      z[     *      z[     +      z[     ,      z[     -      z[     .      z[     /      z[     0   
   z[     1      z[     2   
   z[     3      z[     4   
   z[     5   
   z[     6      z[     7      z[     8      z[     9   
   z[     :      z[     ;      z[     <   
   z[     =      z[     >      z[     ?      z[     @      z[     A      z[     B      z[     C      z[     D   
   z[     E      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      	C     �      z[        
   z[           z[           z[           z[           z[           z[           z[           z[     	      z[     
      z[           z[           z[           z[           z[           z[        
   z[           z[           z[           z[           z[           z[           z[           z[           z[           z[           z[           z[           z[           z[           z[           z[            z[     !      z[     "      z[     #      z[     $      z[     %   GCOL                        NL41::curtailment              
       NL11::ccgt                    NL13::battery                 NL23::pv_rooftop              NL31::battery                 NL22::curtailment                     NL22::pv_rooftop              NL34::pv_rooftop	              NL32::hvac_transmission:NL33    
              NL33::hvac_transmission:NL41                  NL11::lost_load               NL22::hvac_transmission:NL21                  NL41::hvac_transmission:NL34                  NL33::battery                 NL11::pv_farm                 NL32::lost_load        
       NL32::ccgt                    NL34::hydrogen_to_power               NL34::lost_load               NL31::wind_onshore                    NL34::hvac_transmission:NL41                  NL33::curtailment                     NL13::wind_onshore                    NL11::hydrogen_to_power               NL12::hvac_transmission:NL11                  NL32::pv_rooftop              NL11::curtailment                     NL41::hvac_transmission:NL33                  NL42::battery                 NL31::pv_rooftop              NL41::hydrogen_to_power                NL31::hydrogen_to_power !              NL11::hvac_transmission:NL12    "              NL22::hydrogen_to_power #              NL21::lost_load $              NL23::battery   %              NL33::wind_offshore     &              NL21::pv_rooftop'              NL21::pv_farm   (              NL32::curtailment       )              NL23::hvac_transmission:NL12    *              NL22::pv_farm   +              NL13::lost_load ,              NL11::battery   -              NL42::lost_load .              NL21::hvac_transmission:NL23    /              NL32::hvac_transmission:NL23    0              NL22::wind_onshore      1       
       NL42::ccgt      2              NL22::lost_load 3       
       NL41::ccgt      4              NL12::pv_farm   5       
       NL33::ccgt      6       
       NL34::ccgt      7              NL41::hvac_transmission:NL42    8              NL41::pv_farm   9              NL22::battery   :       
       NL21::ccgt      ;              NL33::pv_rooftop<              NL32::wind_onshore      =       
       NL12::ccgt      >              NL33::hvac_transmission:NL31    ?              NL42::curtailment       @              NL21::hydrogen_to_power A              NL32::battery   B              NL42::pv_farm   C              NL21::curtailment       D              NL21::battery   E       
       NL23::ccgt      F       
       NL13::ccgt      G              NL13::hvac_transmission:NL21    H              NL23::hvac_transmission:NL21    I              NL31::curtailment       J              NL22::hvac_transmission:NL41    K              NL31::hvac_transmission:NL32    L              NL21::wind_onshore      M              NL23::curtailment       N              NL23::pv_farm   O              NL33::wind_onshore      P              NL21::hvac_transmission:NL22    Q              NL41::battery   R              NL12::hydrogen_to_power S              NL31::hvac_transmission:NL33    T              NL11::wind_onshore      U              NL13::pv_rooftopV              NL31::lost_load W              NL23::hvac_transmission:NL32    X              NL33::hydrogen_to_power Y              NL41::pv_rooftopZ       
       NL22::ccgt      [       
       NL31::ccgt      \              NL33::lost_load ]              NL42::hvac_transmission:NL41    ^              NL12::wind_offshore     _              NL33::pv_farm   `              NL42::hydrogen_to_power a              NL41::hvac_transmission:NL22    b              NL23::lost_load c              NL33::hvac_transmission:NL32    d              NL21::hvac_transmission:NL13    e              NL12::wind_onshore      f              NL34::battery   g               h               i               j               k               l               m               n               o               p               q               r               s               OCHK    f�     �       +        _Netcdf4Dimid             	     ެ�   kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �   
   kr     �   
   kr     �      kr     �      kr     �   
   kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �   
   kr     �   
   kr     �      kr     �   
   kr     �   
   kr     �      kr     �      kr     �      kr     �   
   kr     �      kr     �      kr     �   
   kr     �      kr     �      kr     �      kr     �      kr     �      kr     �   
   kr     \      kr     ]      kr     ^      kr     _      kr     `      kr     a      kr     b      kr     c      kr     d      kr     e      kr     f      kr     g      kr     h      kr     i      kr     j      kr     k      kr     l      kr     m      kr     n      kr     o      kr     p      kr     q      kr     r      kr     s   
   kr     t      kr     u      kr     v      kr     w      kr     x      kr     y      kr     z      kr     {      kr     |      kr     }      kr     ~      kr        
   kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �      kr     �   GCOL                                                                                                                                   	               
                                                                                                                                                                                                                                                                                                                                                          !               "               #               $               %               &               '               (               )               *               +               ,               -               .               /               0               1               2               3               4               5               6               7               8               9               :               ;               <               =               >               ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P               Q               R               S               T               U               V               W               X               Y               Z               [               \       
       NL23::ccgt      ]              NL13::hvac_transmission:NL11    ^              NL32::hvac_transmission:NL31    _              NL32::hydrogen_to_power `              NL34::wind_offshore     a              NL13::hydrogen_to_power b              NL42::wind_onshore      c              NL23::wind_onshore      d              NL12::pv_rooftope              NL32::pv_farm   f              NL34::wind_onshore      g              NL41::wind_onshore      h              NL23::wind_offshore     i              NL34::pv_farm   j              NL11::hvac_transmission:NL13    k              NL12::battery   l              NL11::pv_rooftopm              NL23::hydrogen_to_power n              NL12::hvac_transmission:NL23    o              NL13::pv_farm   p              NL31::pv_farm   q              NL11::wind_offshore     r              NL42::pv_rooftops              NL32::wind_offshore     t       
       NL11::ccgt      u              NL13::battery   v              NL23::pv_rooftopw              NL31::battery   x              NL22::pv_rooftopy              NL32::hvac_transmission:NL33    z              NL34::pv_rooftop{              NL33::hvac_transmission:NL41    |              NL22::hvac_transmission:NL21    }              NL41::hvac_transmission:NL34    ~              NL33::battery                 NL11::pv_farm   �       
       NL32::ccgt      �              NL31::wind_onshore      �              NL34::hydrogen_to_power �              NL34::hvac_transmission:NL41    �              NL13::wind_onshore      �              NL12::hvac_transmission:NL11    �              NL11::hydrogen_to_power �              NL32::pv_rooftop�              NL41::hvac_transmission:NL33    �              NL42::battery   �              NL31::pv_rooftop�              NL41::hydrogen_to_power �              NL31::hydrogen_to_power �              NL11::hvac_transmission:NL12    �              NL22::hydrogen_to_power �              NL23::battery   �              NL33::wind_offshore     �              NL13::pv_rooftop�              NL21::pv_rooftop�              NL21::pv_farm   �              NL23::hvac_transmission:NL12    �              NL22::pv_farm   �              NL11::battery   �              NL21::hvac_transmission:NL23    �              NL32::hvac_transmission:NL23    �              NL22::wind_onshore      �       
       NL42::ccgt      �       
       NL41::ccgt      �              NL12::pv_farm   �       
       NL33::ccgt      �       
       NL34::ccgt      �              NL41::hvac_transmission:NL42    �              NL41::pv_farm   �              NL22::battery   �       
       NL21::ccgt      �              NL33::pv_rooftop�              NL32::wind_onshore      �       
       NL12::ccgt      �              NL33::hvac_transmission:NL31    �              NL21::hydrogen_to_power �              NL32::battery   �              NL42::pv_farm   �              NL21::battery   �              NL13::hvac_transmission:NL21    �       
       NL13::ccgt      �              NL23::hvac_transmission:NL21    �              NL22::hvac_transmission:NL41    �              NL31::hvac_transmission:NL32    �              NL21::wind_onshore      �              NL23::pv_farm   �              NL33::wind_onshore      �              NL21::hvac_transmission:NL22    �              NL12::hydrogen_to_power �              NL41::battery   �              NL31::hvac_transmission:NL33    �              NL11::wind_onshore      �              NL41::hvac_transmission:NL22    �              NL23::hvac_transmission:NL32    �              NL33::hydrogen_to_power �              NL41::pv_rooftop�       
       NL22::ccgt      �       
       NL31::ccgt      �              NL42::hvac_transmission:NL41    �              NL12::wind_offshore     �              NL33::pv_farm   �              NL42::hydrogen_to_power �              NL21::hvac_transmission:NL13    �              NL33::hvac_transmission:NL32    �              NL12::wind_onshore      �              NL34::battery   �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �                                                                                                                                              	              
                                                                                                                                                                                                                                                                                                                                   !              "              #              $              %              &              '              (              )              *              +              ,              -              .              /              0              1      
       NL23::ccgt      2             NL13::hvac_transmission:NL11    3             NL32::hvac_transmission:NL31    4             NL32::hydrogen_to_power 5             NL34::wind_offshore     6             NL13::hydrogen_to_power 7             NL42::wind_onshore      8             NL23::wind_onshore      9             NL12::pv_rooftop:             NL32::pv_farm   ;             NL34::wind_onshore      <             NL41::wind_onshore      =             NL23::wind_offshore     >             NL34::pv_farm   ?             NL11::hvac_transmission:NL13    @             NL12::battery   A             NL11::pv_rooftopB             NL23::hydrogen_to_power C             NL12::hvac_transmission:NL23    D             NL13::pv_farm   E             NL31::pv_farm   F             NL11::wind_offshore     G             NL42::pv_rooftopH             NL32::wind_offshore             OCHK   �	     �       +        _Netcdf4Dimid             
     p�h�   \�     R      \�     Q      \�     O      \�     P      \�     L      \�     M      \�     N      \�     E      \�     F      \�     G      \�     H   
   \�     I   
   \�     J      \�     K      \�     8   
   \�     9      \�     :      \�     ;      \�     <      \�     =      \�     >      \�     ?      \�     @      \�     A      \�     B      \�     C      \�     D      \�           \�           \�            \�     !      \�     "      \�     #      \�     $      \�     %      \�     &   
   \�     '   
   \�     (      \�     )   
   \�     *   
   \�     +      \�     ,      \�     -      \�     .   
   \�     /      \�     0      \�     1   
   \�     2      \�     3      \�     4      \�     5      \�     6      \�     7   
   kr     1     kr     2     kr     3     kr     4     kr     5     kr     6     kr     7     kr     8     kr     9     kr     :     kr     ;     kr     <     kr     =     kr     >     kr     ?     kr     @     kr     A     kr     B     kr     C     kr     D     kr     E     kr     F     kr     G     kr     H  
   \�           \�           \�           \�           \�           \�           \�           \�           \�     	      \�     
      \�           \�        
   \�           \�           \�           \�           \�           \�           \�           \�           \�           \�           \�           \�           \�           \�           \�           \�           \�        GCOL                 
       NL11::ccgt                    NL13::battery                 NL23::pv_rooftop              NL31::battery                 NL22::pv_rooftop              NL32::hvac_transmission:NL33                  NL34::pv_rooftop              NL33::hvac_transmission:NL41    	              NL22::hvac_transmission:NL21    
              NL41::hvac_transmission:NL34                  NL33::battery                 NL11::pv_farm          
       NL32::ccgt                    NL31::wind_onshore                    NL34::hydrogen_to_power               NL34::hvac_transmission:NL41                  NL13::wind_onshore                    NL12::hvac_transmission:NL11                  NL11::hydrogen_to_power               NL32::pv_rooftop              NL41::hvac_transmission:NL33                  NL42::battery                 NL31::pv_rooftop              NL41::hydrogen_to_power               NL31::hydrogen_to_power               NL11::hvac_transmission:NL12                  NL22::hydrogen_to_power               NL23::battery                 NL33::wind_offshore                   NL13::pv_rooftop              NL21::pv_rooftop               NL21::pv_farm   !              NL23::hvac_transmission:NL12    "              NL22::pv_farm   #              NL11::battery   $              NL21::hvac_transmission:NL23    %              NL32::hvac_transmission:NL23    &              NL22::wind_onshore      '       
       NL42::ccgt      (       
       NL41::ccgt      )              NL12::pv_farm   *       
       NL33::ccgt      +       
       NL34::ccgt      ,              NL41::hvac_transmission:NL42    -              NL41::pv_farm   .              NL22::battery   /       
       NL21::ccgt      0              NL33::pv_rooftop1              NL32::wind_onshore      2       
       NL12::ccgt      3              NL33::hvac_transmission:NL31    4              NL21::hydrogen_to_power 5              NL32::battery   6              NL42::pv_farm   7              NL21::battery   8              NL13::hvac_transmission:NL21    9       
       NL13::ccgt      :              NL23::hvac_transmission:NL21    ;              NL22::hvac_transmission:NL41    <              NL31::hvac_transmission:NL32    =              NL21::wind_onshore      >              NL23::pv_farm   ?              NL33::wind_onshore      @              NL21::hvac_transmission:NL22    A              NL12::hydrogen_to_power B              NL41::battery   C              NL31::hvac_transmission:NL33    D              NL11::wind_onshore      E              NL41::hvac_transmission:NL22    F              NL23::hvac_transmission:NL32    G              NL33::hydrogen_to_power H              NL41::pv_rooftopI       
       NL22::ccgt      J       
       NL31::ccgt      K              NL42::hvac_transmission:NL41    L              NL12::wind_offshore     M              NL33::pv_farm   N              NL42::hydrogen_to_power O              NL21::hvac_transmission:NL13    P              NL33::hvac_transmission:NL32    Q              NL12::wind_onshore      R              NL34::battery   S               T               U               V               W               X               Y               Z               [               \               ]               ^               _               `               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �               �               �                       OCHK   2�
     �       +        _Netcdf4Dimid                  ���{   �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �   
   �     �   
   �     �      �     �   
   �     �      �     {      �     |      �     }      �     ~      �           �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     b      �     c      �     d      �     e   
   �     f      �     g   
   �     h      �     i   
   �     j   
   �     k      �     l      �     m   
   �     n      �     o      �     p   
   �     q      �     r      �     s      �     t      �     u      �     v      �     w   
   �     x      �     y      �     z      �     /      �     0      �     1      �     2      �     3      �     4      �     5      �     6      �     7      �     8      �     9      �     :      �     ;      �     <      �     =      �     >      �     ?      �     @      �     A      �     B      �     C      �     D      �     E   
   �     F      �     G      �     H      �     I      �     J      �     K      �     L      �     M      �     N      �     O      �     P   
   �     Q      �     R      �     S      �     T      �     U      �     V      �     W      �     X      �     Y      �     Z      �     [      �     \      �     ]      �     ^      �     _      �     `      �     a   GCOL                                                                                                                                   	               
                                                                                                                                                                                                                                                                                                                                                          !               "               #               $               %               &               '               (               )               *               +               ,               -               .               /              NL13::hydrogen_to_power 0              NL42::wind_onshore      1              NL13::curtailment       2              NL23::wind_onshore      3              NL12::pv_rooftop4              NL32::pv_farm   5              NL34::wind_onshore      6              NL41::wind_onshore      7              NL23::wind_offshore     8              NL34::pv_farm   9              NL12::curtailment       :              NL34::curtailment       ;              NL12::lost_load <              NL41::lost_load =              NL12::battery   >              NL11::pv_rooftop?              NL23::hydrogen_to_power @              NL13::pv_farm   A              NL31::pv_farm   B              NL11::wind_offshore     C              NL42::pv_rooftopD              NL32::wind_offshore     E              NL41::curtailment       F       
       NL11::ccgt      G              NL13::battery   H              NL23::pv_rooftopI              NL31::battery   J              NL22::curtailment       K              NL22::pv_rooftopL              NL34::pv_rooftopM              NL11::lost_load N              NL33::battery   O              NL11::pv_farm   P              NL32::lost_load Q       
       NL32::ccgt      R              NL34::hydrogen_to_power S              NL34::lost_load T              NL31::wind_onshore      U              NL33::curtailment       V              NL13::wind_onshore      W              NL11::hydrogen_to_power X              NL32::pv_rooftopY              NL11::curtailment       Z              NL42::battery   [              NL31::pv_rooftop\              NL41::hydrogen_to_power ]              NL31::hydrogen_to_power ^              NL22::hydrogen_to_power _              NL21::lost_load `              NL23::battery   a              NL33::wind_offshore     b              NL13::lost_load c              NL11::battery   d              NL42::lost_load e              NL22::wind_onshore      f       
       NL42::ccgt      g              NL22::lost_load h       
       NL41::ccgt      i              NL12::pv_farm   j       
       NL33::ccgt      k       
       NL34::ccgt      l              NL41::pv_farm   m              NL22::battery   n       
       NL21::ccgt      o              NL33::pv_rooftopp              NL32::wind_onshore      q       
       NL12::ccgt      r              NL42::curtailment       s              NL21::hydrogen_to_power t              NL32::battery   u              NL42::pv_farm   v              NL21::curtailment       w              NL21::battery   x       
       NL23::ccgt      y              NL32::hydrogen_to_power z              NL34::wind_offshore     {              NL31::curtailment       |              NL21::wind_onshore      }              NL23::curtailment       ~              NL23::pv_farm                 NL33::wind_onshore      �              NL12::hydrogen_to_power �              NL41::battery   �              NL11::wind_onshore      �              NL13::pv_rooftop�              NL21::pv_rooftop�              NL21::pv_farm   �              NL32::curtailment       �              NL22::pv_farm   �              NL33::hydrogen_to_power �              NL41::pv_rooftop�       
       NL22::ccgt      �       
       NL31::ccgt      �              NL33::lost_load �       
       NL13::ccgt      �              NL33::pv_farm   �              NL42::hydrogen_to_power �              NL31::lost_load �              NL23::lost_load �              NL12::wind_offshore     �              NL12::wind_onshore      �              NL34::battery   �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL33::hydrogen_to_power �              NL22::battery   �              NL42::battery   �              NL41::hydrogen_to_power �              NL12::battery   �              NL21::hydrogen_to_power �              NL31::hydrogen_to_power �              NL32::battery   �              NL23::hydrogen_to_power �              NL22::hydrogen_to_power �              NL41::battery   �              NL23::battery   �              NL13::hydrogen_to_power �              NL33::battery   �              NL42::hydrogen_to_power �              NL12::hydrogen_to_power �              NL34::hydrogen_to_power �              NL11::hydrogen_to_power �              NL32::hydrogen_to_power �              NL31::battery   �              NL11::battery   �              NL13::battery   �              NL34::battery   �              NL21::battery   �              He     �              d     �              d     �              �r     �              �b     �              �b     �              �r     �              ��     �              ��     �              �g     �              �q     �              �q     �              �q     �              �r     �              ��     �              ��     �              Ep     �              ��     �              Ep     �              �r     �              ��     �              ��     �              �n     �              ��     �              ��     �              �r     �              ��     �              ��     �              �m     �              ��     �              ��     �              Ep     �              ��     �              Ep     �              �r     �              ��     �              ��     �              �r     �              �f     �              �f     �              �r     �              �r     �              �r     �              d     �               �               �              electricity     �              |U     �              |U     �              '�     �              |U     �              |U     �              ��     �              |U     �              ��     �              '�     �              |U     �              |U                   ��                                                            in                   out                                               	             lon     
             lat                                                                                                                                                                                                                                                                                                                          !              "              #              $              %              &              '              (              )              *              +              ,              -              .              /              0              1              2              3              4              5              6              7              8              9              :              ;              <              =              >              ?              @              A              B              C              D              E              F              G              OCHK   q�     �       +        _Netcdf4Dimid                  �؋%   �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �      �     �   x^U�}LUu�?Nf0h�����ȑ\��	�-Z.q"�����H�K� KIP@�5����|9�t�m�7�pq�j�2b�Ţ�/tZ�l�����>�����=�}�u��A��0я~�庠�S��kgu^�̆�}�iV��i/�3�;f��q&��&�QC��V�t�_P���?�L�����J���'u��6]�e7��c%8���B�5���SQVX�.����NMW��]oV�^ʫ�N�M�GC���W�s�\�7��;3]�<=U!����D��#fS/އ6hm��N�#l�+�+'E�6Ȋ�U��Q�� <G�/�rW��ְJpw�j�;S�N~�;a�~& /%�����A��?߭h}L�S_��ۏ��5ܭ�h�3�d����Z>�� 0��~��{ G�]۪i?��4s��l�	E �v��n�	Y`��Ð\����T*�ÏDGo�i-���#C��`�h�ϥ筷�d����-�Ȃ�t��0��IЬ'����(SK�h�7�d�	�hxS' V�]^!��t@�7Oȃ��U��|��~�N���6ذ���H2�����@��5e&'P�#4i%}��W�(����kF�\���à��1Q?�7;6:^�{JDug�����֊v���3xA�QPO��ucA(��p���{EvT�-d@u j��^���N��z=�����}a�8��߫ܢ6��G��ڂ�*}���]%��/B��/W�{JE�WBݍ���s�4t�$����C�V��u�&�	B!:JZuo�H؄E�k:�����&Ijl,8xI��\#����"����Z�
-g�7�,5\��x�����X�#$ޢ�l���Ra>g��-='r����}1Χ$Z��t 1U�RW	�{*�\��E�OX\,_�'=࿋��EvI��z�J�8B��v�`	���_�e�2�(<��h+�,x^%�1AQ ��1!���D(��dQ��Q&��zB6=�h0�A2z�2YP��A|>�Ż����r̬�:�O�7x�J�]\3ؕ;�4��ة�-E�6HC��K�xVp+��p���Z�CG�|�E�<,gG��$�CyA`�^`�4���A�:,`�B ��?d��5)xx^{��&/:缴yM����O�;�\�1�$�jz�.�쬤P>���0�E�<Xb���'�G�-�Qr�|g<���|����Y�r.��K�\�K�{?I�}XQ�qM�Ρ�Ӥ��]�X�:@��lV�P`�T]zȽ�^ɹ�� �t����'�\8r��f w��k�����	���� R-U=x^[�� �9�l�:�r��:��=�㻣�$�����Z0���Э���i�!b� 	�'��U��z?] �-�O���`K�S�����kҀ�'fg~�nI���sz�;��񷋀��=�?9�IxM��ຮ~����܀�?�|��r��K�
*K����c�첷�{$��?� ��Ui   �          �          �     
     �     	     ��     K      ��     J      ��     I   x^c`�`��Q0��
�G(  �%�x^c`\�?@�@ t��޾��A � !{ w�Ix^c`\�P�  �"i      OCHK   �     B      +        _Netcdf4Dimid                :        units          hours since 2015-03-01 00:00:001    	    calendar          proleptic_gregorian  ���                      	                                                        !       $       '       *       -       0       3       6       9       <       ?       B       E       H       K       N       Q       T       W       Z       ]       `       c       f       i       l       o       r       u       x       {       ~       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                                          #      &      )      ,      /      2      5      8      ;      >      A      D      G      J      M      P      S      V      Y      \      _      b      e      h      k      n      q      t      w      z      }      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                        
                                                "      %      (      +      .      1      4      7      :      =      @      C      F      I      L      O      R      U      X      [      ^      a      d      g      j      m      p      s      v      y      |            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      x^��1    �Om	O�                       >]     �     �     OHDR�    �       �           ?      @ 4 4�     +         �                   ��     R            ������������������������A         _Netcdf4Coordinates                           D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           L        DIMENSION_LIST                              �     �      `�;�OCHK    ,�     s       7    
    is_result                               ���                        &�             9� [TREE  �����������������                      ��             �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDR$    v       �       v       �           ?      @ 4 4�     +         �                   ��     v   �           ������������������������E         _Netcdf4Coordinates                              D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           \        DIMENSION_LIST                              �     �      �     �   +        _Netcdf4Dimid                P5�OCHK    ?      @ 4 4�  +        _Netcdf4Dimid                ]ʰN          �С OCHK    �     �       D        _FillValue  ?      @ 4 4�                      �    �?!z              �            �S�TTREE  ����������������!                                          v       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OHDR�$    L       �       L       �           ��     S          +         �                   "     L   �           ������������������������E         _Netcdf4Coordinates                              D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           \        DIMENSION_LIST                              �     �      �     �       ��
OCHK    ,�     �      l     0   REFERENCE_LIST 6     dataset        dimension                         �             9�ۚOCHK    ��     _       D        _FillValue  ?      @ 4 4�                      �    �n��              ��            �7            8HgOHDR�$           �              �           |P     S          +         �                   �        �           ������������������������E         _Netcdf4Coordinates                              D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           \        DIMENSION_LIST                              �     �      �     �       ��w�OCHK    ZS            l     0   REFERENCE_LIST 6     dataset        dimension                         )�            ٵ��OHDR�                      ?      @ 4 4�     +         �                   �P     R            ������������������������A         _Netcdf4Coordinates                           D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           L        DIMENSION_LIST                              �     �      dC~�OCHK    ?�     �       D        _FillValue  ?      @ 4 4�                      �    �V��                             x^�y<U��?��)�1�P"�!ɘd�T
!�ʐ"C���PRȐ(T���H($�!T
�ɐJ�w�>�^ץ���~޿��zzܳ�^{�}����{���� ��7��5�t�F�����U�H{���!���ヴ�X�7���ٰB�S|Z!�6��ҋ�����\��d��{-�iq5��Vnt=5��^ǷA*�:W�FY�AH�������O�NDk�(�?�ᐏ���/�w��ч�A0?��k%�9��B��RgH?�(���W����ط	+ 0���&`����@��$��]�S0)�Qpi�	L:����Z7|�Fx���B��0W[ۉyCmkf��u�:.�#�<�D۾���ܾζ�m���x�.��KVzڦ%2Sl�Ѡ��UdO��A+�u��Ӹ0�m��}�s��[[��K@[k�r`=& ��y�Z����Z��V�r�mlZ�<)Μ�\j&����R������q�*�a&�0I��l�	L�E�蓋����dO��h�����A�y>���+������Uź\�U�k�|�b���9~~ck��E\��{[��\���ۨ�}�:�6
�{���g�%ݷoK~|�٢�eU�sɥu)�%ݜ��w/�p �u�3��]WĶ�}U+&lb��}I#G�p��k�5���,����_S|�y�r��׊vi{>Mk)(����9ߴ�&��6�KU%z,���m�3pX"\��V��JB�|��@�j���G�o[M�#��R�n���쭆�/{�o��& ��N������+x�>:x��(��M$H(c�� ��cT �8��Y='��Z�}���Q�i��نD1��>� ��a$�`��~��$��E�X�(�m�� �I!!r�� 7 ��7��4Aj�!!)j	����#��,����@�܋���rŁ���,I��p;z@z��yH��i�t3[!w��K@j��� �?A�0�.�:���H�@����;H��5+!}��A�=��#�3f�󢾠z��L���
؎���R`^�{}=�r� �l[o�w�m�4E|,��Cl7~�y��p�/7�5��O�+Ӝ���y��}U�D��6�2k��5Β�FuH���uDo�*eE�93��[�)%6j���(θ��A�Z';td�Z���꾿��[b��@+A�X��妞L�O_Ѩj�rq��0�ecT�}�;�1��.G=㈊�����3�ٝk���J����ME��{�㨨(��(��M'��5T�B��2�L�=������Dj7�5E~��T�C���<����>r h�:���b 6�at aVԅB1�����})z�0���;>h�K���< �y���Ih���v�0���"_L�4Ts����%��X��;x�F��Ʈ���h^��#Y�������.n�I�m���7Xs����MzM����Ec
y��������!�ѷ,b)��dW^(����݀a�k��>N���)]�Y�����ґEۅO���|w�tW��������%{�6sZ.X���:B��������t��^/��e��yU��шcpa���w�3�6��2/}��,=��Un���]�S���}��#����k?�WU�?CD��k��g�3��ar�K���-E_���Cb#A�fԌ��re��G����R^�Q�6��*�lr������(ji̍�74,j@��p�q�o����J��>54<2�p3 ���#x��tz�.��mX�o������C�_O\6���v���]���"�V]o��>Y�>���EXk"��T��v�<�b��ߒ���^Zd�U7lh��p�;�ó�g��w���v���,��1Y��s75$C�z��v�t��m�)�Cu9��"�w�m���y3xȍi+Q+�5Q�~i��?�Q�/ʷ�(O�1�(Q5��]� �:TH��b]���s��G;Q��&KEo婉ƍ���Z���m8{�� �Əfί�߬R��r�����N�B͑���EEE�_�Z/ݶ��酣%���9�W�`���˸DE���b����� �=رO�ZQT��K�[�QQ9Q��X�ׇ��;X0�R�>������7�:B�#!���U��<�F�·L����q���5�v_���S��F3A��� �w����bZ`��j��ta��a�Y��%�9 ��SKXB]� �h����X\��yp��$�G� ػ��3&dFqbQL�I�KPB� � �-v@E� �� ������ӈNZ2���B����i4)��3H���*��f���P�I �˩���!�(�����&�jH��rR��y�dh"��p�7C䟏�f��B Ty%%H����̐�e��~YO)UP;(r�-��M���1�R'��'��TqA�'��3���Bzs�A���ܰ�-h�ԟ���|��5 ���CiG��H��7����������H5
N"s�\�\��l�ք���C�#��h.y�8���#��L�x���I�!U��{b�7۬[F��X���\���7YSQ�%����P�~iG���A�{$�P�x��"h4 �&l��C-���쁜l0���cr�����	��O���q�H([ؤ�����I���hTI�r \'��tJ����t ���XO�6���x�u=� ٖI�L���R�ԑlh�ĴK�$�2�5<����v�� �auO�-q���Z-�A���zBJSg�F�q>1 �3�<�T���P	����zt�D�H����.C�M��0��?�?ef*�� dM�S�4V��iڀST����H�¦��o�6�C) �1�)QG�����V��`�.�,�~
:B�g��c�0e*��|^��p�O-ź28�`y3�&�zK	C�����/n ����h~|�����h�
 l&쇇�<5� ��7GD��K���6����=h$�tC��c�"�n�q��c90��1B�@:Xw�D���x6�/�|�C�u��GHǾ��T�I��t�����;��x�1d&��~�ҟ�:��֒)����࿕�){r�v_�F��������r�Vً#��U!]8O(���{
�7m�f+9��L�G�v:S~�5/Ġx��k١�0+��A�5���F,�EHN�{$�Jo�ށ4�U�[Yf���'���2� W?���Pq�W40+����b��u�+B~�/9B0�N�o�T�~�3�JD��N����[�8���i�ΐ~}+�����j�,�/`^���&�bd�	}Z3���6�@x�17Wf��k�$��dJ�o�敖Pu���Mk�M7�A)J�%t{���e���5�W�Ƶ"�!���+=d��W0�f�@*f���@�N���\��e���l�By��1�x7a�fg<|����LI�]^��-G��Ӏ���b՛��Р��q2M���^_���{SV}�
��p��:V�ڒ��z �SI+���44ڇgh4�khx���h��и�&���?��q�KCc�@	qEطb�z�qe�ɸj:8��1d��f�,6���M�U�� ���
�e�0�����t̽.H��qB��GH�_��)ۖu���gt������&{&q������py���L�	��/�|�ۋ3a<"�5�G�t(lC�?2��J¸��1�&� .��A.����lH�Nσ��R�e
ѐƵ ��R�����V��24��T�ݳ8|��y�`��D�= ��'��J��2���^�P>���}���c4�"�����V}�_囟?� �B�������E9[�����>н~Y$G!���
��W)����T櫛��G90
篿+k���η��G(e$�@!��%�պ����{���rQ\NЦ��z0
m��#����kfj�Tv$>��4Q���'�Q��<���#��St��ڡ扟/�'&������	o�Ρ����Ch\�v��)<ːM����4��j�{!�?z��qyA�4���#$���x($���7'Cڬ��i�<	d�����U���S��OR��_�$|�A�zv�v�x���Є7}�/���,q���7枀T�����W�B�f�|X���s�xzݼ�#�k�R�C�Ŗmzo ��q�~�������XH��Z���ID����/�����D��0~%�!!�_��[BZ�"��=tO2������n�|g?����5���s:�C�;�]\�%(x����|~��b���	-+)�<S���j��.��+�!o���Y����,�X����~h���������2�+���,B�$��N_�7S#�p�}�ӥh��c�xT@���I��2�O0�5Q���%�-�3D~R)��|�@�я�/$���3s�h���U.g��N��[Ƿ.v[�>�h�U��N�?��t��7�Q��m�v��mx�&�\�5v=���.��l�mY?�;sF9�nݵ`�Oc�<�Sy;o}�zg�:�+�
��y����,| �>�t����6j��l��~V�� J:�c��t��|a�"�YT��_FM�T<�&Sn�w{�|�Sܲ�ex���d�R�)ti��t|C����V���[[|�9_�AF�i)�*��V1�Tv^�������7l�{xc96��m؎�b�� ?��K�7��/��)���xH��#*h!��A��� -
�@v�*';4,|����f�ie���E���xi�����/��1'~��@��:��n1E��#��M�*�?�빤���Gv���V"3�Lw�$����x12`�S
��Gt�yD$�qi��G%��l�ǥ�IF�Ⱦq'�0c�ln?��x��}"'9�hŦpK�xd�M��:02^�Β	 � ��V!TP��{�O�^@�,�� �M��?�-q&b�i�ZK9�� �C�˂�h�A�!t����00{^��G����d�X@1).��0�d6>��쥌W���e�p��h'�1`@[C�A�z�>�&�\^B |1�&���!�=w��e���R Št�a���%����J,JJ�NJ��{%z#�i1 _�^�R��QRZ$�t�]I���Kɾ�J�V7ձ���~@�RA�ɻ�.%��+�,�\�����kϞRRY~���T��*7U��\I)�A	C��JJs��j>F��p�.dm����+)�y�b���R:?�UR7]�4��R��!l��t��J�AN-���B���Y�w���p�h[��(6R�!@�����[���h�A�ܿi>��ŀt}���E��}(O�+�T�$9T�U���̯�����}��V�`��ː��w����'<�/T��x<.�#�%���)�b(h]�"��%08�	J\�j�]p\Ô� �D!G+�%�C�ŏB���y02��#4o<��O#���vC���\�P�G�C	W#��$1?�Y���U���0������ֺ�C��-o�H���Z���#�3��eܣ]+5[�zv�Y�J�4�#�`���ٞ��Y���+�V����O|F1���5�;�ŮV\��۰=���O�ٙ�G��m��������Q�m���o�����N(�3�`qp-v��a?�?'UTy(Hﰑ�y����1�U}+6.�f��\�%kr�F�8�i��m�Ӫ����6N3��z��ݕ�j�Z�U��㦇��!��8!q(�2��~!�1NM��//6�)�85.J*D<b$���"G+.�Uٴ� �Ղu,)q��DjW�|�� ;��I͙sD�*UW���2�ߔ�z���g����j<w듘��	��FR����u���9J�z��}4:st��>)f�A���:����l�{���K�*����am��ٽ���u-<~�u��o:gQ��j���ϝ���
������>hy��v��k��L[?���f�f��HH[��]���T7=�b(Tme��+y����O������a1�T�'���D�jnSN\|`s9W��«�|�d?v\�u�a���%Qb�t{=R+N�V�ߢ��ek���+[��{H>k[Z׋5��&?���R����޸��-��~|��<wT[�Է���)48������;�o����E}�	���(�z�����ݿ�s�uך�$�����e��}�~����e���=\<�si`-ۅ�])���y��DUk��������e��v�U9f��ϑh�������Û�����I�ׄM�J�E�#���>8^=�Rև��jNe|w����.�}
z�ߍ��03X^:.Qhi��o�ǣ��ُoyg���[��|��~�Iy��,��_��%��M�����k�U�-D9�T���h��ks���_U�K���лQ�7r��,�����5�J�����˜cʿ���7_$7-��DK������Aٺ{�t�����l"4;o`P� ��x�k�
;��q̋,�Z�����Ah�;������qJa�e�X��u�f־->�u@�o�F���^N����E��^��YV�TS�r��Jm�E�;p�|,P:��m鑵�K>j�L���iY_���{H�8���-N���QK�Y�>�{�vٽ��#I�_̙�.� �2�8[���n�^�ˏ��j
�O-;��(�v�ؽ�7Ͷ�J�~��~J[r�(*�w��k�>,�]E[�U.��!`�KP�����l�AV:H�J����c ���췱�х��͡�ѧ���e��Ia_�:���A�S���鿊l��X����?-G��X�퉼n���k��2m��ji;7ڿ�i����,��52�Ub<�$�[>W�Y�;9v'��GGh�R��ƥ~T�49j�{�Ű:<B�iϚi�o�x([�+�����L��7�bܕWWq���ݚ'�"C�w��v񥺕}�/��59�����YK���vL�y�ͬ�3BkmXTj0$vl���S;���6W�j�ﵺ�'!��v����CR/��`d��<�Y������78�{��s�1���wU/yyYT�}���m�C��?��;Ǯ�����B#5y�g���M��}��<���]����r4c�E���j�<رp;�os\U{%����YN����Sy�gۻ���Qcw���vAט�X�֩Ge��N6�4+hm��Wq�I�Ỷ�>�f�T|���w�%N����z����W�s3G������w����4ca�~�p4�;�����1��Y��nW���v�k�~�R��╇?��n���?���������޻��
���|�Y�v1�^����bz.�?��z��o�>���ࡔz�WZ8pAgx��� �p��Xj>i��$S�"\FUO��$��#�j�'�8�i 4 �^�+�ʝ�dMi_� f�phP)�}�"u-�g�
��� n "ƌ��|��eG�bn��r�|��K��*N�4*Ou^�,�~e% ��:�bX2t�?�� �z_P��dl:�k�YoC��J�WǬ['U����4ԌPqv��2xRE�J�J�S����\��˺zh]�ż� ��_�Q�}WEEOC�b���+���F^@H����j����'~]�$C=P{|�^�����vo���`���V�yt3�^|���,�SlW
wd�ޛ����ٻ��Z��>����*}6k�\��{����8�F/��F��}q�e�ڳ�Lb�٢�#�/Z����!M�����n��G�����{R����r��|������e1[��\$�p~�m��f���KxتtƢD�6T��=�ϫx�3tKŌ`O�+m�>��4��������У�e�ӧ[�����)k�ȕ���a6���m�v����%f���t|��j�b�,���/����EY��>05�e�]`G>�?��{��N����x���.L`bɄ�8~ɧ���׀HN�y��/'�>Sb�$:Հ��aj�������2���=f{�#�`΅Eh���3Z�<�rGj���f�ђ����Q�>[Z���*���Ra��Gs3"��;���M�e����Ґ�2aq�,|�ڃ�����2��i�0��a�I��`q|��wq�WP{K׷�C�PC��XJ@w����i�ͅ׽�\r����ώ_���7�2� Z7$������(nD�=Z��4�n����AG(���x�޳M�CQ����xd�����
)Ӣ%(n�m�e���>/jF�U��e_2�[8R��p��Z);�'w
P����TH�K��>w4Ox�0�+�*�n,]��� ����q���*\ i����.bx�mZ?�d:�w-t�O�HU\��:�ӣ�]I9<M���ɜ��Od���Wo)�.(K�S���^'���CPV0�9c� ��f�@|ѤjH-@����t%>���g
HB�HgOn�8�)>B�x�x:@^�@�11՛vKM�����cF����t
$�vq��m?E��x�g�˅╡���J�V~��[���uq��\��Y<�{�\>RŮ�l�a�~�;=X#<�5����:��3CE�R���o~�5�7���p�GaI��ۭ9���;%ϼ����d�^�\|H�ڴq�ͅ�eR��ꇦ弙��Dّ�$S.i�h\qqYYǣS�
I-K�4U;����|�a��j�Nw�,`���Tsߐ��c�[~.���|UI_��I�#(�'f�G���$� ��9%����*��j�뎷�
Sq�)ޝ>q�$\�L���2���n����~�!`j�Hn��D!t_@�/,�ܫ��I����A}f�~�c>L���N�\�d��� ���^���?x��sm� 61��Uu�{��9&��_&g>�J���|� �R��zb|]�5�c;��ʋ���5���7����L�[V�,���w{��s[f�!��L����̔��$�����e
@]����] �d�K�+-�̼ |(�@b&m��=�玡�X4�)�ΙLv"�{�;��K�r�������Eo"�>�.�9��lY�����t�~�����+s�ߦd�����.9m��N�̃A�qn
�l� S�>��).�r�h��ϸr�vO�Mu}��r����!Q5VUv�Rʆ�}��^��Jz+��ΓU�M
��'[g�'N�/���lwkV��b뫺F��Y{=�s���2�[X��_1�_n���E�ucn�����ډ���l\{D.̊�m|�3�;y��5��RĊ�>�/v
&���FՅ7�-�l:�\\c>˘��a�~7x�D ����l�v��ظ��h3w�Y��}�ɀ�;�Ԑ����y	d� ��9�[�q=�6 e0�Bb���~J��z�����4�,� �%`F�x�-������w���

L�!�P I�e`G���DP�R����bRC4(�?����_�D�'� ?"����=D� 8:���>hE\�ѥ��t]EE��W4 KhX5W���N3�{�諨03���{���l����|�4�z��d��r�����&��
�3���6��Ɗ0���c�����e��2��s�:8��H���||�Bq�+�Uo�U|h����fR��tE�{�슙�+*��y,5�s\wM$�4*�m�tN�Я��1��_���d]W��`C���ϗ@�ZpF'r�i^��,�'T�T ���ϓ��P7����$��@�	�3%nQR锷�|�I�1��q��G�m�\�M<}�;3u��� [��o�=�Ŗ�+^~�B���������.�I�{>rF���Y����|��_��,�g�{~L����`f#��<��3�prn� �����%�Z~H��',�F��q9���G�n�- =�ށ/���q�\O룧X��%�d�夅�pe�&"M])�e������"��	R�\KJ��K��Bi�7Lõ�e"�+Y���Ec'SNb�|J��Ȍ������pL�>"-h����hd�� )F �N �/�%E @�؛	�77�"�P��S<���y��_C"A�~�l 'L�׌�K9^u�8��R��$�_�tK&�E��Ɓ�ǟ�n��# ������@�X��T\b��_����c�L����7`�t�E�8U��O��m6W��=���x��Y�z�bH9lc�?�:�&z[$�,в��:�� ��G?�pq�bt⠃���ѣ��6�ݙ�v���M�5��0����ö�ǌƮ]��"�7�^�@o�cVw�'�ӎ��V4�+��\�#�3 ���Y�rʦA�(o�G��M3�jE!U��	�?��| ���>8�7p��>��}�'t�fA��F��q�?�/@�<��/�1�Be���ˑ��_�q���V+���T����A)		�I	����($��10�2�9�K�>����0*��$��9�}F�-i�+z�%a�մy6����թu��<�a9K��P�}�H\���X@�!��`����)�HC-$!��/��)�p��;�� �M�lj&����R������q�*�a&�0I�NfS�L`
.�D�lԠ��:l!�13�嗦���4ܾVQ)��a�׵���˽
�vta�L�k��ʮ;��a]:����v�{=p��X�P�����J!'/�f���M�/����x5���m����vG�]<����n~�p(��)�&3S3��s��y~VdT��Cw$���4A��m�P�㯶����k��d:��Mq�׿r��㚽J���X��p�{e��^qN����_a�ki^���Sa�x���NSVq��S:KBt�׮Qx��@:� ���Sg�q:�XC�����̭D��)�_�@���,����x8�M9�a�,Ɇ�B���	 ���複���rB� L�b���qp5F�@O�I �73En�����o7�� VAfd����#���Lq�7j���/j	����#�� � �Z݃"�ռ���S��#H-S@�`p�{|���8ҏ��dEjb�s?Z���H�Z���S�KF�	(=�^�+e)H�{��L�qh�?)և�Q���y;wM�[��,Ћ���ƍܗ[ˌ�}�_Pl���0t^�N"l��Cs�A�����5A=⾭����$C=a���#D�7ֵ�ц���Յ�,�o�l�pN�%�yo�>_3�S�O����5:Cu���]9 �-%���yW�M����X:�k�4�}܅���o�_׌���xn�Z�].�����YR���^m~﹃e��d)��RR5���1�fx�����TB�p��2Z)� U%%%u�O
A���� �3\�+$����Ql_^��UA
(�3V�#H�$E���\%G �a:�R� ��`j)���]�GyT�0���g$�[�b�{7`4r�/
4߇i��Կ��NoX��(P^���ttLͻS �ʬ���Z����Yw���ݯja�vr�t?��w�Fщ_���0nN�-�9���=�|{�x�����q�r�v���^��l�6bQ�n�<���+"�񮑝�yaɵ�����a���u-k<,ڞ,�Y~��$�ۃ㲋�ݳ)���'�Wlt�a��f�>K����Ƹs5c�>ԹT%�a�>G8�6�4��Δ>���:5��~�u�u�����6oW���*�y',σE��6�<j���U%���]����p/l��ߣÒtttph 0�a�7��� u	��xR%�ʨ󨃜T�K`C6Q�fe�aC�f ������-��A ��.k]�`����ا)KSY���]6�26�3`�άq�lrg!�S���GȞ�&�HW�b��1G�Vb����5��y8��M��W��6%���;��Ga�I\������:cU�E�A���f�XG�zc��fc�cc�u+�3n$'=|��\����=ݿ3�SL���a|���,_c2���naب�*�Ӆ��}�8x�+�S�%�*��������Ɲ[%sZb�y7텀����Շ�����Qo7��2�z�a/Ǩ�ʯ�ꏢ����?\<K��"��z���Sce���k�7�h���Ii����侞-�i���|uuu���BK樫ϐ.���T)?�^6�h���PW�X�S�6>���M��i�w�˺��>�m�J���X���y����3��lةS��6<iT�8�> ,���9�D� 7�a���g�!4&��C�b7Ġ3(�ƿ�A�b݄ߗ���% ����^C Z7aL*;��P"�r����y��{HӒ����zb����[Ay2x�r�.C�0�Acrж	A��'9
H�%��B{�~̀��@��A4	 �/�b@������$���o�x��AjJ��=���43�Ն:O�O]N�'@]9��oS��T5QWC¤��r�L3���LS�	���C���T�Iy���:�7��;����$��.\�"@h.��o�m�h��d9H�G�*��7�p��#;�j�^4V?=��W����6�M�FH��t���"#r3�(A�'�n�T�k2���"��@Ј��Mzh�e��M�6zp#����@4<-�Vt�x۷����!u�Ʈ�y�F'YBz����7�� 3���3���6���G-dW(����	h�!,/���_ڑ~�Ǒ
p	bN��� �UJd�� >��[�8e������8&_/�ٛ��d�?�]@X�UM	eәjv ��LR����wQ���fhh�:)�X�p
`:3��}ȧ�uF�89 �P�2���� d��&ֹ���� X����L#?B���ڈu�S����G�5���pp����y$D'��W��ꕜ��	��T�T�,!?xS)<��D�H�ZBT��	7�?�z��)����N�5QO��X	�g�NQ]x�~Sϖ��-x��F�s+	��  z<�@W(���Ѧ�hZx #د�`����W���Yw�N�ҟ��V ��)s��S����eSm�����@�.�$W �c�&t�8hd+�(<`�]�<O�U��M�>qr�g-��x�^�����Ѷ��=h�̹n7�ݖ8�{Ȅt��	��J���d>�n�sZ7oH?,�:����Ѝ�>�ۍ���H�޸(�wY����a�i��pH��鐟LRV��d%_7���o����#���4r�z3v�𞓽[�.�z������c�#X��z>o���|�͐�^4DQq�2���r�N���&�>�T�a>�Y�c�	g!�6`����V�ϖ�PF��4M�u{%��c�d����^H�1D��I� ����������a	�x<O�w=��bz_��&́}�6~���:�G�֡�0�C��Y���s;mntF�5�\��v{I����B:��`�'��"��`I�kSF�LM��{g������q����е	-�%��=����S��NC�BMT�&���QL��O	4�'�o*@<O���\�7~[d6LQ�lT8��uDؼplW�|�ʭjjZ�5j3��x�(W� ��#��j	�LG�y�@���ڏ�j���e���m�&R�p�Z8_N>�¾��i� p�L�}�YtNMM�YG-�@MMcw�Z���ڭ�45�%���jj��jj^��(�����\}C��d��wQx�P�c�/�O� ��R4��T��~�fW
�<|�"׎Z4���u�)��� �/���d��~�j!&H=>�";��.r?j���XϼH�|��y7/��{|�6�>���I�2����ys}c!]^�	R�XZ�r��|���棈��B�=��$���ބ΢g�@�my`�8˝s6��|����$��G#zj��s~B] `SBy�q�t�2:�s�א&a8��h9Q���oH��S�q��=�o��#�|��W+u�ۦW�h�*\���gÁ�kmE/a�P�vo[HwHH�`bHJbH�O�,A7C����ʓ4!}!�A���z���'ݺ�GCB�B�Qy�m\[�����!{>��S�0CP���[� �I�!}@%O����yd��'���'1&�����3��$�?��?�7a�[��l�.C�&���̵���rSWٚE�^��E�V��l4n	��m�����"˳e	�ۘ�Ѽ�0d��S��E�y��C��B��в+�H^�D=��4���}���YY �f
�c����NPn�+�f�|i
������Vp�rRgI��'=��*�!�!����h�Y��B��u]�.@ؓ�Ut�����S�g�XG:�B]�Љ���J�__+�ȡ��$]	�E 2e�����bʅ>��,��l�!��Oa0���ۙgP	���a)>V��vvv���\}����r��:�뮬���.l�y��t>;��t&��v3>��şZ�XJk�]�;E�ǀ����PeW+Ż/�^�n��zTNB��N�y�x�p�W����K�j�.9E��8e��`�k�8�)K�[�g���R���0���O�=_��y�\��3��FG5�O�<j�v��Ň�n��Xɻ��Pq瀀�?�1�ޕW��B�	���S{�\�Gճ������P靥��m���ʳ�xtlm��m�c|�7$����VZ��䴸�WR��Z~(���`p}�d��9/=;������+�{x�e��2�o�]^IdoN�����ЪWZUIrWW0��^<�}n����|6��j��˲ϸT�
6����p+;;Zg�����/:+^r��G��-��ou��Cv����|	��O��� 5X��ss�~�o��~p����䷠�KߜĐ}���3h��\�O�8+4�`}��T}�U.=|������h_��hr7+��AH/�@�X�3N�B�R�;P���mи�S��R`۵�2H�`=����C�L��$�9:���0z�ʜM��\+��@��U�'nC8aP�2�#���D�p��2f|�"%�w�����W�'�)2���v���u��81G-]��8�c�������H7��%V������
� `�84d
��DP��@�Ȋ� ��'5�� �1NI@�` �������6S��r x'����;i�1�F�8�i���I�K�s��	��3B@'����r �#w�:��'[.�#c�@���E�66��m^'���t������t٘����O���	"6eM66�:%�'�ޱI�����}`B3�z�ؕl�k͵��[�����|�裈շ���W���FѼuۛ!N�3�6�ټ���1�m�� 7N�m�K�7���|�5٩���ml6�CYW)���|63�J0��f�h��0�hq�d���)�ؿ0������(���1����-H~L���u�|�׋!�`�b�(��<�@R]�mBn����"���ܸ�o�����|��X���~���C�g��0�U �jCp|$O�iD�p�Ƿ� E�P��c�I�����N`�3-��N��8H�v�9��
nC�Š1��x�02���H��uē�v�%�vxJO�x���'w���M+��:�9�W*�j��)�m��o����zp7��(��I�w`��X��`~��~��^F�=����n��p�Āg�	��q��:�'��t��p�k���o,�m�������VFɠ�.�#��>b&���Y�T��X��g��8�>z����Y���{������b�V�pG>{\���o��I�>�}On�Ҟ������m�J��#�dM~�n�ˮ��j�F��=j�����=r_ʥ��o�J����+FH�<NHʯ��q�_��@�S��ˋMh
>N���
�Ic����9�g?L�Zw�3P�#[��������ZR�]������������>L���L�q�����iҡ����G60ջ�hݻd6��O�Of2��~���kh:ٜ�F���(w]~t"I<l�X��csx_������y�ގB����FJ�f�ɔ|���W1�C �ɡ��^����I�\�����3��]����v�0��b�^���O:�K�d�����Y��J��`��>�w�]-+ٸ���Hו�O5I����Ԏ?��"ro�������+u��.[��_/8����U��\��Wn��I����R1���%�~�f���j��J�ߕ�}܌^�HgJ��H����W��N<S�u������+�,鎹�P��xa��ŉ"����l{����SK/|��ւ�H�n����G��g���J�N��k�jnr|p8 y,����#ۡ��\ӂE�qȥ64���w�/�e^��3���>����pCjmL���7�޴��Ͼ��$��r���d������"gEf:�j}=q0h@��������'�sR�_�)�ص��Ʈ*��,	<t��Uyƣ�$t��_��,쥸��@a#M��I6�l�fY�D���7�rd����Ϭ��m� �^ў����}ޖ�u̯��-���l�?�#�������Q1a���/�
>�t�zݑZ쪤����n�4����]�G��e�o��.�d�g������K�&���m�Bj����Y�@WPs-A)r�����'u��k.J���~��(w�,���Lt�Ws˽٪߾����9_������K�B?�A���&�qb���Z�y��\3���r�Q�ϗjT��vG�������tw.��<�l����,=���qw3�Q��Q4On�|�3R���YT�.n���AE��%�U�<a3��r��?|��.��f�L�q�N��4�9G�uIf�;�6��ټn��n5~���!bO����}�?]�t��FV�pG۽���9م���JN�����pGJ���9�4ũ4���������VyP�=L�C��oP�aϠ�|Fkk�M�%��W���x%�z�R����@��cgգ�߄�?�����{��������k��:�.)��>ڬ֨�w�c�����R�7���������Pp����熷Ɨ����{&�����dd�^�nfK�c��ܓ�O*l��Z�0vG�ؠy������Yw��<rG�\����{co���?�zl�<{<��(�ؒ�J��"��38��ο��e}D:�?�u�npH���n��������`����\M_b۶F����6��$��jp+�1��s���U�\���?cHZ4��A�Z�����3C���ug�$�l?�BG|kMT��'�*�v7��V+Iȯ鹟gb�]��}���أ�rr�:sF�<|=��V���S�O���΍�|��'/E}u��pEE�؇�G���QR�s.t�iJ:����k��X��(���Y������7e��9�o�L���*�i���վ�>^�uN�����g�s>=}�8��U!�����A�F�ͳ�j60��2��<v��7���q�iE���@@@ �Cn�(�E7���<PLt�<2��kM�Λ�������	�I@7G�?�<O:1bhp���w��\kˇ������i�ߤ�-Orn}P��=�����=/<�n9�fetNsbNN��K�v%�,L���|:g��u��~����E ��98�N��6��\���.��sr��z��W��|"�ieN�դ�99�rr��sr��H�`)�&e���>C��W��O�K�����=���W��u]��{��{��̡q��i�j6�k �)�B<d^���/�_�f+l9zE\�6�iCz �b_k��2�n}��&g?|��N�������������4g<�
�����g?^R������5=Fa�W��(��e�/�,9�����z���>�xK�?/��vCC���U�#���5��O̓����,/r�ck��)�~���12<�D5�C�������q�ɮL`�/]��PR�7�պ�/k̞T�������|�C�΃q���\�ܪ�LT�c���41�8��4x���S�=��W�i|f�� ��c&΂)@�������}�5�!�����w�@���X�M�I��@��ǫ��paK&���K>e-�a%�������/�+L�D'��<Q;L�ت ��K�8Z7ӲTh+�Nr�' ��y�醅_Q���}]�wr�`G�\��)�z?�s:~}'�����vY2�OҒ9c�"Fc6���i0�J=Z�����oG�؁̈���<!]��]o�,�{VgeZ� �ɦ�(nX~��F������tx=�=2�p=��s����=y2����辪9�Ѻ�?������P�}��j�ޔ���eFwH��Aa�s*�!���)��u�~K����P�>י�A���J"�v���N��أ��ޣ�������A�ɸ��(�GoC�|V,R�t�Y߲ #��<�P��"�(��9#�+�����.���u|�����k�%�}}���������!����NU���E�J��ijLfO��� _}"�7��xK�wAY:�"U��:������	\�1�� ?M?�&UCj�`���hv|�!]/�'	�Ξ��q�`4>B�x�x�:���-�j�y��>=	����[�ܬ�%h���h�y������y(���Pl���0݆����s5N���]P�q�����{�ن��t��4��a��L}ڳG|��� (�}����$`�yQ�����-=�DF��M�VF���V����v>����w�1�����.��e�c������F�Z߬�]�dp�'kc��QW�V�keZE�N!����_D�l;e�����c%#��^��Cm�{�R�ٍ���٢�'uA��~���9/	R|O�(�'f�G���$� ��9%���"�������x˩0�А�����I�0.�����L����N:���g4)��W���R�LB�Eġ��.�p���2�y�u�_[[TR� �M�_ڵ}%j�xu�i��T:>���o�bl �5]�V�͂W[��,�. w���Y�SV)j����!0��x ���e��/��T�õ���(i�ۡ���=2�ܽ^���N��,mm-���*����3���>��������{����% �گ���H�֞wSKۺ^���3��x�G�.Ɣ�1m����pI��P8�1l�E�E��?��)���y�����f<��V�;��gG^=O��}�At$u�+�i�Κ��<u�x�mط�o��6+GDi�gۍ0�S�����W��и�PJe��&��c{m��Ƅ��l��@�ʹM^������kA����+6g���?�[����~��g�,s~{Cf��`�2[�������cbVOVfz�u�����\����p���-���޵i%}�s���6��w�.#�m3Re^���wl��i�"����a�s�F�$^�xϠ.�&3�&�?	��P@5 e�X���,ɻ.��`<V�C�K�H���|��+� ģ�(�T�������D�-�oĆM2� "��`8@�'����9 NCV! 
h���'��x"� �Xc���Ǆp�PxP`���P��ps* ;��C�ܐ{��J���O��h�[ @}� ~{���| ,�������� h��ն��^L:���=?�a��姿*�*�ao���n&�X��� ^�Cn\f�L�E�<1�AV���F͊K<��گ��X��>��{�����g탹~iO x�4�b[<0��� ���@�����W�|���-Y��{���m������O�`����[���p��\������o���}���h:S����_V�B �rfw.~ ��p�7i^��,�'֐�@�?R�?���?�T��L��Ԙp�h�%�Ny�ş���FS�<2��*�~�7�uс���f � ��|�y�ﻫ��g�ͧ��%�{_OU���+�PQB̅B�D2�P	"J���$��$2�)��q���D2TRd�B~g�s�u]z����~�?�z{ݳ�^{�}����{���^�A�7�a{���z�;.��C6�X�����ˇLO�rƭ?�ON�q�����C���4jJ��3q���6~=�4 2&��u�\K��ձx��M�>��P�a��)�� ����8�?z�ѿ�rM�OP�"xa a��o������7@���hHM�H�2�@�p���8������s�23�����Y|F�8�8z <���qF���3�B��(��s ZHD���A����Æ]�d<��:7��uK"�����1a��_�o��ǐH�?߄02^�F���m��esi�o
.�aCz ���KE�#6��w^AP���Db7U����bm��S01T�!q�<�� �C=�� 0�tXgg�£�I��хK��oD�0�\��J��v�<��dmm�@H�?Av!Kc��G����w`8W���AH�M&�}�K�'#��~����$/TcD��n���l�����ڍ_Ҍ����;����^�E�+Wއt���TOn2zjo������R.����}����@A$̇�}�9����x�}^�f��O �Z�{�@����88'�~��;@	���7����������~	@L����2�����Q�q'��8Q�.|*@oO��Q,���c����3/��G�"n䜀C�I��������<��<<'�Թ�TY���'y���F]��@�p�!�/���L���W�Ѝ}�+����ÓC���v����7���J<<ǟ{��'�yv���:���j���g��;>AQk����Q>�:��XV�l��	L�E5��u���O�[�s�B6.([i>�hY���#I�m9��|sk��z�W*���� ���W{A���5����Q�Xj����3gë�^-�_hq�MPFc�ʦՖ�)m���V鈹���?�b6���/K8�wgjT�재7�/��Q���ί������y<v��o%~ց�_u&�>�̻�S"Hƕ�������\�Rԭ���^���v��G�f$w\�(Y��q�Wt�_��VǯﲭY�l�f�.N�]?�]��Ź���_��6�8 ��M��`O�K@q*����Ԉ�P�5��Ѡ�&����
�H���R$�WL L�-�L��
��P��5@u���>���(��M	# N\7$�����-(h�>�k��~��TR��l�
X�������XG�ҳ(�w����Fd��M�k��y=�(��C�Ő�OY��T�H=��恶YJ޾��"̏�B��!KH��ס�Kt�l� $&
�?Ge�~�S�:��S�s%m���6h?겯Cȟcۣ �2�g��|���F��k�u�;c?,a��\��|9`�Vϖ��Fv/7��Z={!'��}e�̂�X/�����~��Y�>�Ho)���p�u��~O�g��eN���QKu�6��$7#������Ƽ?��5����-8/}��Hd���{���A�b>6Y;���ܹ��{��ɪ�ѢN��V�7�g��26�qD���5OO�T�[��ƕ�Y��W?���\�2n�蝑�bo�u������m��oBbFdw
�~݌��e�
�G0�t/�B�54�� L���!�_8i�Ӥ�h�P���y��4�_[?l�����<{�zG I&D�51�P ���e[���@*����V-���o��3r\��a�&�R[�lx�I*��!~6�us㞝�<�؉#C?��hw�����K��,�����7�{Z(0f<�? �Cl���,[ד⃧�|�Ț�c�f���&�h�i�KZ�D5�n���\-~��b���+�{t2�nq}��#Ǟ�v>9���Y����w�-9��s�Ξ��3���]��
j�H=��}���N��o��oTO��i�q�e��|'�+�#Ydx_V�L�e/z���'�^�ѭ�k;	R����Ǹ7���lҬ�tۛ�'ǰ��+��By��K���Z3�/� b�T��x�ѫQt�)�*F��#� ����g�����a�4}�O{�/�L�C��WE����Һ��O`�ݫw�:��払^3������(6v}�!p����28E����%f� D��=��r��F���Bu ����ƌ�[	�Yb��H�?U?�dMR�t$ܝ���7�.Oۯ��^p_���ڴ�;��|�����(�pܮY��e	���M�o�Վ��ss�]�>�Qqrﳐ�ۆ�u����m�j<3d?���P��@<�v]w_x���<l�,�N��{�c����Ul���̪� H{��\1y˽�M#��Cl�"M����c㾧��v���X}j��w�U�f���ͭ�3��J���{lh�=����X���خ>Pn�{#`�ׇn�-v�ݤ����u����ҫ�&����3? 036D�ǩ������+W��V4�"�l��}տ�(&a�el��9V1|R��j�ka)� ����8E�OL4!��ւ��op�r��meۍ&��Z�}���-����� ��BkTh ��9�ų̔xN y������5�념�hL�B�J�ְ>�r���.�Y����DB�7�I�)��,\7�
*���	�8P\�5x��p�b���&0�>h�8��u������՗q�̄Z�<T>}9}� };�<tϞC�D��zN��2QMT����Opi��8Nt��P����33�ow�_��ԻH�"@H.��o�P�N%H�:k�4����6dʊj����4ҋ��BF^�����y�#M���P��]����J�Ȭx|8G�Ch�-���+�f7�Q��n^A��^����?��
e�p}
�ʽqm�7W_*�t[� ��~�o�f��*��)��mh�9���3���ݐ)H?p9^o��C�a�$80��� *`����z�_�q��u.	��ۯ��)�O�\cr��T���т����~f#}�_�~.���"��E Ԡ�Y��F@U�K�� ����46��+?/ �D�\u��8��3�p��oMYG�0���܇X�j ́Xd��x��ж�[� �,ZLC�I|R#ܚ��ވ|�u&D'��юZ�_��	���D� ���K �`���c���D9��)�d��,�M �/c�
r"�� d��S�$V��)P�S�����&8��F8]��W��}F@��"�k1����plr��;@�� U�쯰 ?oy; {����A8�`:66�� �0���]���7�J�! D�aZ# l�<Y�E�Ļq��:�1f�H���a�~r��w�"��F����A�\��.���(ŪC�2_Θ]���]/�b!�tK=�[юt��;������NH;?����`l#�`�FԞa�6���*��6�k�_U�|��Ip�8�28�/ܨ�W�8C*�(�,�ߒ�p�0#�Cd�����v؀�;oT;ba\���"��<=p
�æ�C:0���x���,�m��_���r���}��Rt���:����d!u���Y��΢�aC�Zw��]��3Y!�{̝ه �9;����"�o@:Icҕ(_��[�A�Ł�U�Pm30��ndG�Xƀ�ۿ�>���[�1��u��V5�`�	ͭI���"��.�̫�0�DW\��H���Pb�X�삟����hqE����-�����J�%t{ ���xݿi�_B���Ɗcc@�����o�'zp(��P�h$0�K�Y���S�"N�zъ�~f��]�̮��|��:��_��W����� Ԯ\�͗���, �(++[D(�B�4�커1�[����F���Yx���C �5�J=Yܔ���(�d)+����rPYyUW�r�v~��rv�������ZP�SV�k�,uAy<��O=^�!�Ė�[�	ΞX;<
�
}85��/˶Bzj�5�OqxA:���3��nY��3��h�"{�݄�id*�Lw���u���A��dH7uˣ/�r��~*C�D�42-�lA~<�74B��$���>AK�E�F��o����74Z�CT�4��aR�����6�CA24?0^Z0�7��W�bK% .���Sc־�H/4�A�����}��݂$N�ẋFx*j�UV1*;z�lP �٤1���èQ��(w�g��yvM�9�^	�R.\͋fg�Mf�� �����NFFơ��,/�V�/c,��o��{K�7��.@����
�HC{fR9#c3�ZT�%��;Gn�-<�dF/#�L�� ����8(|JqA��է֣�/#�h��'��O0�c ��g-G���xb\�?��?�7�'2;+��#��j�m�:�<�ܽ�X*�|q�]�s������	��5*H��R{�s|�j�!�7��R�^F$��aB��ެ^
�ٞiHL� �!�g��@(W� 9�e%�4��I�O���Ն��(? ����/7 ���7�}�r�Zy<��M��Ë����|��=8��E;Ȣ��}�y��c�r���%(��V��QhAZ��Ű�}�P�NMR�}��L`�_��[b�f�Lfi�ɞ���`(K��P��Eb����� X�f	tim�Z]�]]=Iӫ��
�7᳢���]6X��n��B�*�M��?\=�̋�_ʮW�U]�m��YՏ5�!���	�2��� �y5��i[��T?�؇�)p�f�js��2�[} r)��p�M��y�S8c���`�k"?�	KF{�g���R���0��z
3I���Ν�ν�����B&�
���J���9}i��+X�ж����|��NO�C�BONH3V[�����ƳJ�����XV�eY8�[Sv/�l1���^���bS[��f��:�s���&5�E�<pѵ�a�������]3�MSس�:��}��5b�*k[�|��)�>uJ��{���a�.u��W����}����<�qG$_����RƇ����B�+\j�knUlTf*����{,@�gۅ�3+�@���C�"m��ܭ���]��,�f��4s�R���Ł$�P�B�'��A�|�.t�W� 7����(����Ej�7.:�n�ۼ���Caj��RT/P����<h>qHv"Aڹp.����)�N���́�/�~��\h�������Իt��C����7�,^U��Ò/�`T�@4����.��A�!�w#S�D�P܇
�"O��Q`��'�����1�҄Z�P��LEA�������;��/m�p�F�/,��ۤ����8Än����)�z9�p}��C�\��T<�	RP�� � ����x9�Xfu�`P�ؠ� [�@�ƞ�8�ꗁH@u�G�� +�d�����P��Cq�$��䫀�
��~Α�Y�~� H��	�������,���mO�f����.,?� ���ؽ��`�o׬kg��[�n�f;�\�@��{;	��, <�X5h��:;f��z+S�����+�����2ϳ��ݸ���[��L�^n����΂��
�%����c�7�#���~>�0k�t?�얟�Pfyhgg�ֵ��L�5�p�ېvo? ��^&�M�5��3�3�Lᘚt�����#/6�{Ř�������9�!p�o�O�z1@�d�b�(n�=�@T��$eФǯ���e~]o���7���l�z��X���~Xs�0�ϐ"���7��קA�"w������G�ka"A�&@�����_�}��PAр}S<Ĕ�$8E,=��zV�Ԇp�����јȯ��	����%*�y�9×MCr�t��ݾ�D)Zp��`��5rwX�n�l�����ۭbs1?��ɳC��i��J�@G�^��u����9��MP�^P�?�-2R��ƾ���-��
$�w���N
c��Y�j�P��*��I�!WX�gt��]KؾR���ǜo����/�,�b���ܻ���M�sU�����N�^$�j:2�F~�Qg�������[So�����!�~RA��}\;M2���:|�\'�9��'t���)��~�R@�N�qB��~;T���E���yjL�y�1]��Ѫ�B�#&A�\�rCwg����?�55�_��h�5֖��st���\(^ �ݺ������)������\y_�n�������_�k�8mq��`���w���z��4���fo����eABI����U��{v�iiw��m:C��s���.I1���^���v��׶}y��g���Ky�X�y�'O��\R��DR�=r�=T�q��������?w��������M��:���?�����>��?+P�LT��hvv߱�AZw�YŬ���yq��Ъ� Dl��'�w��~�Lk;�0�Ǟug��-�%/#�����2�'��C��Tn}��;)� ���-)������p�T����x�k-�ʞ�=2���������9��Y���ȴC"}R��>��Z{���\a�Vk�������O�_���䊹�)��ǗML)]�_�y��Y	��ծX{]��Y�ku�.��)Io��/n�m��n9�a>�n�K��e����2�H��"���rX�Yc
�����-3�T�GB������F0�R���k;绤^���.^�)�k�R��ܛw�����W�����߅k>�d�.�YWj�#4�X{Y��K��Y2���o�U9�βOk<�x�|_�5�e�?���KT�-c��O�ƭK�{_�F2��r���4�4��^P�gᮻ_]�we	�j땓������4b��5���\�qIX����	�+a?��dx�'"q	���wl��'����3���Yֶ_O1����j���`z�ήx�����}*�H7��R��u�m�|`�^O^�-,Q<n�!v��_�3�3q��q> ��qw��[�g��4��Jh�_���yg���t���HՋ,z��R�z���=��
��kD'��)z�l�TX��#��+n۞�-7ؗ�ig�����F�U�|.�4ҁ�����oF{�l��$�s��M��w�8��5^h����O����KR���YO�]�;�G�9��͋�����)S9��_���"�}&$�G4wmW��i�O�_�G���2��60�k2e��p����s�KYy.*q��^yS�'�̫�O�s�Mn��f��P�}���,�b��� �s~��ʇG.O=��Z����!C������o�̩-ؗU��͇��=M�?�`����E����|��{�W<t��c������ms�1��r�!�֙�/8N~���a��D����S�o�\t�U�Qy�Y#3�|���rs�>Hh\�Q��&X��1�����i��ʗ�亭Ͳ�]����;�՟ke��\�"���C1�����]����r둝3tT��N�w�27n�Œ3K:_u���ZȐοe����E����ĩ|W�;�>g�v�:<%��aRw�[�S�[|�ı���!סG��L�?S�X`owG��[��Хw��xuڌd�rH�l�x d��èF�ןz�>?&�ȿ;T�y>�� �Ҥ��-C�SJ�^+-	'=m��3Hӗ�WّS؃n����x�zw��� ;�O�����u���+��I墧����?r�Y�̆�.�>��\`of���A�k� ���`x%���E�\>��W�y`4�
 �TPV��|�`-�c�������ts��C���m� n 8���sɐŶbi�*[��ph6á��`O�c���m�{�g\6k@f@�\����x?So���ޞUo�]מ�;���^#K�^�wO� �zO�d%��r4��*eN�>���A	;�,Z�H�ywo�A�����K�3*�����w>��ʢ�w[oW�u��^9��=���vF(Q;^�3-y���QΜdz��WtF/B���+�r%k�hy����y�� �U�r���'��� ��\�ro_�I/�ğ{�V�͢���x
Ƚ��^�b�|�QO�E�����.k�4�X\Y���RH���a��L�y��މU\׻+��͖ca��L.ӯC,�����=���.h�������d�I��O�C6���Z(qo���]�(���3���yrea���n4?��W�X�#�����5Ҟ�b����<�6M�b��׽��4[X�=4p�G7�����[���j<$w�O���}���k.��V6�`q�TaBO��{5���W����sǮ�i@]�����bږͩ���A-��;�QJ�~"#�7��r�z|��_^	�L`lɘ�(~ɧmE ٗp>~��h�x9�zo��D'��<�:L��^Af��eEh����5([� z<�EZо��lސ2}��� ���&�ۄ�e���Ш>�����!ț��؃��ӳ��<F�5��ˮ@�m��mh��_�zH�j4�}�%^"���m
B�e�A�jK�`ڬ���6l:	ipa2;��S|����o�0*|���[�V���I��F^ �y���+�eAz��> �����*ߐ���9���\�[Q7�EωC'�����h()�,A"��(����C���%r~�H~i�4���i �����=['�p�L~ �+������\��h�]e�	a~��	�wG���6�@.~��˯���m�~�@?�g�i7�}�?{���e>M�5���)���XGz4�+%���1�=��_�z��L4��
�=��m�h��8~��ć���p!�i,���|H�Mi��������z@u1�R'�����gh�"�.��I3�����W�S��6�|}HF0�>OW�ŀ��]ǧ�#��,g�"G	>��D��s��q�����S�G��>���vY�/�Z�B�#��E4��-{���-��W�N��wXOG�5%�i�M��bK��&r�_J~�2v��3���K6�z�F jO��LQnf�c�8/D�hl"�z�2�1p���qW��.Sy㜯�װ�)Y�D�=s-6��yM�Cwl�$-n���MSt�̓������a��w~��+������z����~+��T�1��h�����}NȧdG�@�Di@W�=��D\�@C�g��8�����~���)�C���ำ�{8	�~�!  ���yc+�����~a�< ��//	�Jv沱Y2����3?�Mm2�^��'oY'c#b�g�	����L�d J�%����ac���� ����J�j>�7m��%����ܩ?��<Xr �A�'+|�F \%K��m:^��}��qz^�M|��������O��Recc���&[��&��@F:��[��m.g��~���	�osi�<F74M#��6.ń\���͂뮢���#�(�?��?������ ��C�|}<���Wq�d%�>���r9�^�w�-���=��Wmv9�.c����r��d��Q�<W�fTx����M��{�63�����r���w���Q��?�;>��Á�����(��?w&��=�i�c�����-�7���Y���a��n�3^��R-��RlSݽx���G�����ٖ�S��l.����*���8������?o���W}���K��C-��{)��u|��r�s$cj�٬N�L_��H���x��7�H����p��A.8E��)������h�k�8��п5�t^���;�� �ݷO47��)�>�Vʾ� ��In��X?%�̓R��� ��d�bB�S7N�˃ �o�8��;����ń0��XP`b� 	��`v�쫡�s�׀�S�#j��Z���A 
�N���i	�o�QO�rLs����`;6Jń�������`�{>X��ay��ߟ^T��?��7;^��S��4��mY��<v��y��o�B�u�'u�����J}�Q%�To�Bu V����;���k�`sH���/h��S������i�yܟ���?%�ӿS��_|d�?S���GM��ϙ����c�I��T�9��7_!��]ʟ�8m����ej��� �Te�oB�HG�|J��.�@��'L(YzP׏t���Q8]~�w�h?�:@�1� nQJ鄷�=�c���y��P�P���p�L����y��fp ��0�`��$�L�5% �գ"�?#B2�CR���e���71J2Ϲ��kv���Y�}P����yɋ�^JRP�dI.�a�j�58�'���H��Mk��B�$s��d�,ق�׳���3$ך�ľ�,I�(pl
�mnW�FB���	6D�j�5�?A9��� ��4};���	������$�7�B�2��E�¥u2���i������K���a!(�1���9��k9��۪���V3A�X�H��F�`:z�ׁ�m{P��q�a����E��>2������
�x�>�D���FVT�e����C9�}�8&��>���aC46z�,}�0x�vM ���Db��k	��2L�m�'ʌ � �I����� �����( v=��
��4��f�3����2�>���t�L�qm�����g�0^�hو쳏�Z��I���	�ŝ� ���A��h����8i-���u;|��e���	i�3�ݲ�a%���K7�A���}�:j���/���.Aq�s� ����gi��;�@"adA�7�_y}��M����[�u��q��7��Oøs�=�V0����w�����J��? ���1�k*~�/�L��(xm�U�V���^�����(K���I��H�S�I#gH��'�c5�z��ڤ;�IM3�~!���o�D�y@"M:��(:������H�n����|���/}�uZ`��A�4��A�\�r&�$�Ԩ\eG/~�H�Y�&�J�5�ðu�Vq��R|���_m�D�A���w|����h9};�|�	t��,�f�X6}�&࢚��u������y]�iiN�ayay�E��kD{�=:sb��N�����*���M:�yw��7�����&�G�^%䜹{�}�,�7�;�?�4�Z*�0�e"W���Y"=9k���9�xj��Q���O)�Y=�\"_��_q�9��s�3�u�>��'���y����=�W�;}�5}�[���[��=:��A}M�x����M^qC�X��0u��^�U�͛�ݶ���������g�V~zb[��e�.d#;��������Rlַ�����ms_
-� <����x�� �M�Z�<�1,G/E���-�x���#�kWN��n<0�R�"GP�Cp�{��B�8�\��T��c�����kz� z�@OM�8R '{\]D��2��ĵ6X���5Di3���	N��#�{TV�����~|�R��f�9��v�H�F�FC�3`.����8�8�3J�w��1~7����Xy���D������ˆ�0tʑ���d7H�5�?�-�0��9�� }L�Bq���C�
=�Q��wMѾ�>��'�Q<^���H�5{7	�Y�v�t��,цq�Fb����M;W�.��צ߂��%��
ϣǴ��{�ZӇ%L��hh���jް?����S��M��2X�4�wG�Hp]Y�ŵϠ_bGb�\�Z�M��6���	��C����q�h��6��9\�kb���xĵD��+��Kҹ�}_��Brq���W"���x�@�-�k�@����>��y+��pqq�&p!��6��u��~���\oO����G�J|�����&\����Y��|c�Kp_/v�@����0{���� ��{q�~j]�I�;_R��P�>��c``��ʺG�p6��ch���[��j�����r�vY~�۴�E��7}~A٣��;�#�g�6��>��~�b�۩��g�H�Hs�H�G�	�?n����[Q{���1z�	m{?q�[�hZ1{mZ��N��.;��NR�r��Rt���2���WE��䟝hlT=�����J3��ץ%x��n[���յ�q֎:���-q-��f�&I|�r�f���/Z,�=�b�v����l��[�;��N�@�یHF.%���E����2ܖnS�~��lD�PFa������|zQ(u�RWÒjjj(�	L`��@lT����7�����1�<!���ؑ�Ԁ�D�(iX�΢��f�����	w2s�ѳ���YI~�W�� ��9�T�Or��o6ڦ�lo~���Slٹ�L����O'ܽ�a������=���k�]��;D�*�u�2��V��ẝ�܍�����ؔ 1}W��7轟?R�����s9��_��3������/���Q�_���D���(	簜�Ȝλr���q�uJo��Z�*˷��}�� _�%P���^#tD�ha(@�e�z��2e�iʮ3�I���پ�,V��,�re�O�,;��;6�v�����ƾ�eA��,*�,,C��Y�:�Yuaaqfa��/P�f�XޞS6�\�,~&ˆ6o�e��um�(	P_f%�b��²l�v����Pm�
��k*YV��
沰�faј���:N�&&߱0}H���R��\Pm�v.�xv�ǌ�U��s&^��2�@�����ݦ��H�ϛ��0xX�Wb:�����$��w��d(�<e#���EA5�%�=Hkl.F@�]2x701]��@ ��F4���5;�� �@�N�诰�� �T�b�����6 j\��H�D�����B@��aln��.�@�軑�n�B�V�b��ʀ�)0F�4�x�@oR���Ch#���PkC���ʧP
���ۡ��riaN����P0��-s������!����?^q��2.O�����jj%8�?�>O%�._ $j��k�Z~�G�5ٷHs�2���� u��;�(��Z��J.zx���7�z�j=h}�	�58�"+�'ޘ"�hXs�p�o�R\R��]h_ӊ�8L��;HS��0�},Qh���H��h�6�?�=�-���Њ����p�z*�(8���P�VҀ�/�Œ�������r�_
��!4/���_�~���
��(�J�����	W��b���)�A�9����b|�+C��	��������$����x�����zOjJ�&���NcN i��!_�����f�ka�"&��8��ƉK��5�:�< (f>�7c�=p`�����z_�VY����:2p��7��|R#�|"�����N0�QgBt�(�0�R��_�:�f�5>������86��'Q���h��z$H����1���,�&�;	��g��9�����?����������H<O\!&jl����QbM��v��݇_�p �2�W��kck՘�쯀�[�e�H&B;� 7�Xل�����.���U*4�`ׂ���m^(�9+�74F��H�0@��c3ſ�wƜ{�Hn�����^@v.�T	$��j(�x��_����?R�� y|�x?r�����DP4��o_�z��6s��Mw�z�'X������W�X��c8\�^K���*��.\�"���#[j���
�8���t���-�8���H�&H��NC���<'M���>��Rx8������F?՜�D�&l�)�3x��#����T�=0���!H/�բ�.7�.�S�mG^z�W�iC����������1�Ny�g���9���CM���1��z���[�%H]�l�?z<R�n��G�F�T3���F�C��w���E����osFP�c_wC>�?S���ȷ�FS�J��7�*����f��K��u{e%2:��
d:���A���
􌿑�e�����J�%t{�C,��7-��A�4�"�Xql�}�X�M����M���i$0�K�����S�"��'��&�
�%�����2�e~ٻ��f]MkH�T���>a�Rff�@K�%H��2� WY����pX��~��%[�j0ٛ�o��²��@�I�����Ӵ2�ef�-�L���ϟ�is53Sw� !�O�>���O�m�Hf��my�o�n4W`C�Zq�%z��r:h	��=�?r�<�9��t*���_^G|��/ZHkjt#u�Օ6���}�k������,����vۨ@Z���E�s"����	҇w,�w��SkQ=��5����k`P���+�����N�4]��� h#�^o�WT��F���F���(�|�i��j��6��i���=��z,ޏ��S�2��2G�W^�ہzB���"O٤��uY��'��dV�i��sdrz�g弆�����UA��o����]����w����L&W�#oXA&�(;��>���#�A����!�Yq-�������J$��'2y;�:*�e���y�0��b®�G6���	�PCг'�[��)Ŕ�b��>��>����5������m�/ �ϯ�������	L/@�x��"���U,�@�O)r/��]��?�]R�4�{�jH7%�9��)"̧�B��c��?��,�'�=�C�������H?��E�f��	��W�4
����dF�c��� i��X�7(�5�
#O���98?:o�͓s�.�ߋh��L����x!����"�W��#F���r��˖F�}9��'����9/�����2�r*j���S��:
��Ű4�9��$�JP�!2��Z�l���fd�"�d�ZЮ���[F�S��h8�޿K5���^ ��p~=��Y���qUU�ZU��5���e?��|mW�Cmw�	��� �=#VQ���԰Y���d�����N��C���+T!V���Bx}n���V�9���j���'�BF�Lz�q�7z�ң�+m������)��u�O0�5����%�=�3D~\)��|�@�K�$\w��Ŀ۳uMo����[�����2ʋX�Vd�����3���pf>!q��(i�c*�p\�pKz��T��5���%v%��%_�p�^�/�X�kc#�i��'�ѥ}<�5;'U�=��npI�~��H����7�g��3�vD��-��a��A;��|���A#�^����o�S�S;��K��|��.g������N+����JD��ٵ$e�Oߪx3)�3P}�>��:k��эRJ��g�j�~�E#N��I���$l]�0I	};�{��#p�V�ҕ��Wȃ���gn�	d'�S�
���@d`?t�������7�}D�ف2e4�ϭ�쁔����c��]T���z�"��zg��r�->�tR%�@$a�ܣ�#C?Ѱ��Т07	�^$ �#�����ɧ�����:	�A���o���S?m��|3<�gp,j�	Ȯ\���Bo�6:6 �v`=���, �����|hA.ƣ���6AYH~f��D)����`&:G�̔��Sn�~K����[�h�f؊� �1��:��}
у�����챩���	�*����;����� �؜( ,�бg�}H����ز)�GA��gsc�P��l�>��� �� x=�VG���|-ǲ*D8� Gv���V�-�����H�@��YU� �KR'���֪х\�K&��ƒ�H��G���L�!�Z�m�D�o��� Y�ikx����kA�qiϞN%[c2yR����y��Yw�������d�W1�$�&`�����j�YY��K��H���L^�\���2y�'�wX��E��`?Y��zL�^E.�b��O{Oc#0��}�`��.l�:L|�Whm���{Jb%-�D��� ŎIX��es��tK~�vRx*�P*�H!(�%cr� �3P{�2��G�	vw�i\�6N�:�¡������`� nA�-��a3�� <��O��(�4@>�@��mx��x��H���j<�h��$��рf��]�)p��)���T��L̛�����9��?����ěy\�j��T�F9L~ngT<�������׷�-V�=|��ct�W�\�3�n��\���i�yc�C��͓;��:G.��$��ixyҤM�?"tohr��O�~����W���Ć��L��sOq��B��2	��l���	^x��^�Ӑ�UHv�лyU�+zMH�K�Kt[�������$���Q��y�'��,�V-�),���X�����5oYNc�fȝ�-����Jm�n��Ck2��q?��|~�D�yU�F��F�-A��)�<N(��/���~Q����_^lLWHD����j�R�v�d�=��2Ƽ�-,��Tf�[�\�(�������֥��g��:J�0��Yq����O�t?{��=`q{ו�M�*� v@�:��R�L��ʩo�1��oV�Ŭ�s���+k�.߸�m��`�)����*i�j�u�r�f�x��w�>�g�����������������CL��5���0D9.�<������4˟��	$u;_t˻ɤ/27�Y�p��I?k��%���,�?�� ���5�O}�1�,�h�����e�����W�˟Wh�~���d~��2��s������w�|��ߒ�ej�jm�^E����+��O��М��R�o�0�sV���y�s��/���'�0{)���3��UӮQn��o%�r���
�`ٝ�*���5������b�{x�,ɵ+���J�~y�(�J�-�qS��TmI=vltsf�ks����B��U���3�ԇ3(���V��|�t�����)���Q�o_��z��0�O���e)��׿V/{�q>a:B��ح<����QV��r{�A��w�fU��r�NɽS���No��e<��7i2o����Z��Q��;i~�\����.y�[�񕯬���|���K+x��Ŀ>v�ʦ��E�:���#u���`�3�q_��U�^�Y/+dx/Օ��"o?p+�:L�é�b������S�׃P+���^�߮�k�GW��{k��y�p��[�#����e��%���n^+c�ͷ��B+���79�^Ys�6�){i���z�X����^e?>��|�l�=�p��]��I{���t:\�gg�qk���\΁����ٗ�0��tV(��7�X�Z��z-x�$c��[�Z)tF՗�ힴ>{����w"�s54���<`o�x���5�{S�<�f*�?��V�|~������W��"����KWq
<��^�i>{���g�G�*�ٚS�g~ ��Ǿ_����/���g��|ꈌv��ɞ"��u�=��]IjJ��Zv.U���?�mn��,�=$�X"��0-��Sd����ף4�EN�����۬Y}��C�_�Gn����\V��\&yVl[dj��V,u��W���ΰ���%�%o����:j���uMLL�V�\M��Vw��>�q/�#~�m2]~o�F�$��7���Ύ����W�|?W��P��r���¾���N:�t�����o']�M�b�7GKVo�\-"�.>�=kj�ϒU��N]��?���W<���*�6�п�J%���R1CA���b��'N��-7+��*=Y�Т��}WKKv�/�:!�d,�˲{�ʽ�1�=�^G���v4w�J8�a���ħvyst�'����󜚷��q>�6(�ˇ1j����x��֏}u�ѐ2a�Z���t��YW���)��l��p~6d���Op�T�\����w�s���UՋ�NQg<���`��`���,�F�����W���~�J_\َY^�S�{��P3�.�~\�}%��p!��Im�K��Yu�ƹ�,�t|�e�-1�~� ���YT���0%�և��d�+z�c-X&� $L��	�o���j�rn�3۝S�Rl�_yy���f3d�bcc<h����q�+��� ��B��xCPz~��,r��K �[����X�1�q@7G�?�<O9�j�-`� ��U�/j]c`��b} g*z��M~3m�������>�&|Z	��E}��V$<�x���Z���;�T2{h��c(�| �{?����䩊��۾�sN�+8 ��Jo�ti��PWfEj�����=&�FC��-*J�s�芘���y�"l�����ӷW2���"u��ųy�5�-%ٚ�P2�3m����9r�b��P����p�UGw�3����0�h�VC�NU���ϗ�we5�,��r��+S�a�!߰��,<n�`b�xغ涳�3�'.�/u�d�잷!<��1{�6�ˊ/U��Չn���&�܇D�T����^q���#�_�_}�]���\�zKlV\�U�x������`��m	~���4�;|8ɱ��J~�Ui93�G�_=��+�z䋮���|���w��hչ�B�yo�;m�.��ZPs��."i7�py��l��ό�����I!V���OAD� gB����h2���4��2�.�c���B`���(��<֠4����X��	�-���A`L+$������c�EB���%��D'��<�:L��φ��F��@�1 �8�{ڙ�\�}M��ڑ�Q_,n#э� :���_Ј�t�;UH�[�!�9� �粴y#���:V4��~���mE���Na�σ���.��U�������?x���]|0_P���#���vA�n>	�u=C��d��5��.� cP</g[��v���7����C�?������?���k*�3r��~!�]�h����O��/s��sHy�"�}�D �u��9�㞞�B��NH]�g��o����.6)T��\b]��f�^�ϽUd�C���L�+	��>���s��|���D$	�hq�-6�z����!��x�" �9.��u��J�u~+���R����r��ǔțt��uĠG 6E��iz��p�K�BP
v��3�=%M���4����&���1��As-~�g��}���D���"��R;L~I�J����B�rH��(I�]<�eŸs��ٹ�f.G�,���`���+3�A������<|��_�9k��?��ע�v�u�ʷ�2��8�e�	t�6��TY":��~�a6����9�y�:�����ɓ�~�ݽ�𝲎�Q��J��7w���I�oM�tsY��6�[K�6v��,en�~^_�3Ǘ�u�����Js��m۶}w�2�M�l=g>(����7~�Gs�2<._|��}s�VTϒug�3/f�{�0��
g���潷~$�~�Z�3�i���Ya=��o���'i�0O� @�㔒�����I�M �n���(Y����$z�<�����'S�tu	�1I�թWƏ�͗���OQK�=�qP�Ez�H�Ԟˍ����?��_�8*��32ޫ�	I(|n�-���[�B��V���˺9�z��]�6Y}:pG�6�=����]U1$�=�� �B8C:C&�ݗ ����f��]�|ɝ)�aC�
�N ��Y|�.dQnHHP��ʮ�!7%�\�����CH����ᐐ�̵!OW�=f0��Q��O�#�8CB|�
��B�b��0�D^�ir��;'�X�$���&�|{�:&���Jt�G���TL��
	^:(䠔�5E�U�ʅ��S,>_/�z\�Ҡ�\��)+9�Yj�s��^�,\��S�Ve�-"�8�Vg�+N|��p?�a>�<b!�٥�.[�gl����sqѾ=�;������_OQ]r+��C��t���M���:QA9������c�X���p�ܚ���SC�k�.'�a߶�K��]�6E[{�ܓn.R���{���Ͻc}E���Z�hu	�� 穧D�H���X�_K���-\]+<��#��?��T 07����g��+��k�������u8�ɍ t�@	Z(�(�9��8�^!�.������g Q(x(SFg���:��P���V�4�M�\C�ńB��O������Q
L�(�j��bG�"���t�':�KPZ�b� ����1� �A�X��p�$����1�/�u)m����>�*#�~�{j�RS˯�Z�+�����u*͝�j~p#�A����>-A!ۈ����7������OT����IhW�V�D�J�/�(JIm�H"�v
	�Ю�UTTB-�E��93�v���~����|xҼ�Ι3g�Μ�:��3�R��&)�[Kkc�}ߧE�X��l�L>8��rD�� +��߫,�k�KA�ֺW|�E�h5���:r8^+�CK�k����e--&��1�ۂM�a��׊���kʜ�ն$P+3R������n�&n�s.8@�ޢ���V���@�⭛���K��C�<���񔌱4���2�&�i<��&�	��w�|�%�UE�o��X�2k��'���ԋ�5'T���2�p A隁����2�9_�
F7�������d�~��3�a>O�O)��ʋ�5�9m�ӫ�*��T���:-h'���9��E8�g�DJ]lL���
��	�}�9�P��ux�H��+1`)2� �@���|�u���� �'	��U�5�?I�,�ByP�����6���P|��X%DU3u���E�#�~�}{N�G�'���r��m)�cy��ZF!�1���4��
 s�HA� _9B�xFb�M��BT�#(T�o�^W����ЂU4�L6磐���v����[�O��|2%vƽo����qm�Ȏ@�$�ۥ��\����9}د չ��t�}���	��9FY����P�ap!6o <'�'��
k����GD$�^�Ep}*A F�����汬'�S�!��%����0F���q�\����ZE2
4�,�DQ����H|� 'P̙��,Hy���g�K � Rz��ku(�m��8&)��aZ[$����s��J�|����ڕ����V�Ab���g� �����ص��[���~��
� ��I�-��5�S�
�;$��!�����Y���4k�]hW�@�#��&m>��@�'�@;���X�� ��
c�E�: &aR�G	��K�����_��������19/���UC�n�k�|�g�
��d!�p��U��@jEM� O�6���&��o��x��xz�[��Bp�'��f��H�i���X��{����kh8L���>v:��\��y���E�a�4'���讆9xxR$@�2q����(5�O[��m&`<+	_d*6m�&ᢒ�/5(�p���QѼO�S�G��،�1��3�?���EL3�5��1��kr1:WlDJO������bu��O[G�\�$�IͦQ�˧L�\��O1n�G$���ۤӘ9���H�����;"�������y7�t��y�q`��٩2ۭ��GX���,H=u�E��X�D뀛K٠em��)	1�VF���T��=P�`����'��1U>�J���^9ߺz$f�C,4u;c*�O���S�Zi��#���IM<�ک��$�8�_��q}��9c��4�v+7PC5 �����?X���P��d��8�9�(���� ���=�a2�1(�@'�@�M�G��䡥p@��
�0h,0�C%B��Q%��F 8�P��LL�)��	e��[�#�S���+�?��	r������-��D�S�����E��A���v���#��aəh�-�|��/�Ck�i���.��t\7
�:�
��n���2�A~��?�Bj0���_�Uku!�u�
ҫ�1ȯk�v0�t��G��TS�މ��8z)d��"Y��P�ik�-c�0�����z�`�|�d�FcI[�@?���}�p����S��#{_e�<�7s?";�]�[����^��G������G����m甚��4�.����b�{ֶ����6�d�RI.�~��\YS�30��Υ�6v�I�b<�n��u߹8ſ���ߜ�I�����-S�p�E޼�l��Q����VV���W_�� �i\+�(+9���Y���)���cp�\CɁ$Y��Gi��(^j�|"�l��@�y� �rSe��-,C�:��$@kF�'X�?�= 1�8�6�u�M��;L�E��*"�P���E�ʋ��.���	��ɤ�%�N����	<B��+x�2&����3E��90�X����>e������L�Uwj���'������6��S��T�n�~��ʹ�g���;�ZS�յ{¥xջ�WY�qje�_�,��K��|߲�q����ܳ�yc#~N�ij�ldsK S�¦~���FW]y�.�N�(������q~���ꎜ��:�$銭N�e����%�9����/?�Y����N��Ձ�+/�.?zԶ��΅�k�B�GYm�|��uT��+F�$�H�s�X=�y��3W�
�;<ߣ���_@,��OQc��!��
�� <T�_�Je�i%�� e�M0l�:��f�K�2�P�\6{�}�jK�ǰ�ċ����F�Ϲ���v,����L9֛�R����u-%�D;�&�����B�>gΥ�����~L�I|���١��E�}% ����	%���ջ"�A��{�;6Y��]n��KRZ,����)���t[��t���;�զ�)�&�)to��� 3F_����g����R��C7Ő���g�),���5v4�����2Ǽ����,�g������'�@�9��>={�f����3�W�0(_�P��O�B��T �^h`�&�L�&�?rM�)|�V��u��;����[=����d��H���w:җ��^�0Z�m���k����®��v��-,|ubk��h|a���,�Pa����B��XN/n�������+,�)s���ZX�/R� !ol>�?]	4[ p��9��}3�q�ը��Q+b p"�o����:b�JV��!�/� �e�vF���&�WO�8���CP�Z��'h���p�V��V? ʰ�@n��<Zo�a�,�����DL��rho�`� /O&��6�C�p=L��ĳ��v��A$�i2��~��k����4���%���!�(�E�0��6���3�(=��c�萛xC��f=f��f&��Цɠ�i�i�h롤��îg��h�!cB��)jf
Y�D��)��F�!��D�	i2���6�7��E��	��e=�v	.�%����4M��Nˣ�`UGL��Jߡ�p3q"�gC�5�{<�9-Ҏu�� M�ч�&�F�캡�ҧo�Ɔ|`^��iJq:��6T�����ߝ-���5�Ҹn��W.�BqRVOo@�T��
i�\21��!��5Y4�6r��Ƿr~��W5����O��?�Z��������o��!4/���_�~��q�%(>F&���/@έE&'*��f���<!rn *���6���M��.xb�?�]@芫É��&���|'	벴7��E\%(�+� ���m�A�XP�=�i��:�t#T6�+�M���}d?�l���|�GPN{@aF3��X?� Z���M|)cZ��ɋ����H��9��?nO�2�����i�8P�OẌ́�' E�� ��L���B[BT��	3�?�$r���ɝ k��:�qU�?=����?�MA�5��/RǢמ{2
 �<�s�2f����a
�qH=	?'�����b �1 ���k<e( �PQ�Uf
��*t5�o�:�\��Q�����9�=H���\�̠/
 ��09`�/�ҭ�p�Lz=�[o_�D'�+~�~y^�
��nKt�' �>����x=�}{S|!ݑp��{BẀ�W��ZHIk�� �����~T������ѣ�n鈮�t^;��'p_�"�P.�	���)���=�CZ��w�H��3�;��}��x\�����G�#=��gwbdV��5ȷ�y��;?~�t�:�G�s7�C:�d� ����!M�\��h��Š�3#���q^H݃P;�Y#�u����W1^���<�Q9�ˢ�<��)M��Z�i�)�ʷx���������F�!�)t�[+<K��Ӝ�;P{��@�׬3���vDE�t�磸��C4�
�:��Ht�%X��:���$@�c�~ r4��㿑��SA]�rI�� �xٿ��o�A� �AC���_�lg#�B���Ƌc�@��h3��o�'�]���T��C%��\��~Y6ܣ�h |�9� �w7�w�>n�g��rǗs�]6μ�>p�%-�k-���3��R���ۆ��Az�#�xYi=IO����$e���?�ź�]�m+�qs�}��Na��>3��;e7w��wj+v�<nn�������z���:,C��/��am\��\Ɔ�ƃ�_�ںi��m��$B�[ �|�������m<����gR�{.����[3E�ς$7��(=R���26�7�_͍��m	+�p�w�}6��������b�%���:i =����"���X��%�����e�����Bj1x���x�1���͍�!��bN����AqW�\�P-��؝�;��)t�	��F�E��^�ne9mSuG��#�w�._v,`|�nX��d͡&�nF��rF�]��F;��Ċ{��xE��L�es~���8vӥ N��d�3�2`dd�̸m#cr��#��f���x�`<U��p)����j/2��K>V�ad\�HB�\{�r�yU������q�)����N
T��	5���:=2��}��A�!��r4|"�^�x�I:�	���C�,�x|gB�?��?�_B˴� �i�x�]����J4���=:
���Ÿ�����K�G�lz�H��5Fq����'���s�&�|r��ۅƩ14�M�TBf��h\���C붽�t���j/ނ�����.����������~w�Fq����6L���"b)�;#�ˤ��6:�^O�&Y�$��xs� y��1�~!���T�5�p�E��f#`BC2�P��'�r��@"E��#	e"abr뗵��������[F�X�^�t���lm���
�}��|��a��m5�����1�Mr�2p���޺t!#�ٲ��S����Ol6^ژ�? -30 㿗}n��u������]^^kQ�ʁ؂�ǖ�.��7P>�ww�1!9E���nݘ��Nuflw(.����_������O�3�r<A�'�B·;h��\G@���p's���=�����*[�]�*��e|@VC�/B.*�Hh�k�����
/��Z]>�r~�􎘻��;��&��8��[�Ǳ��53��.��U)�v$x��`��Qły�Y<���>���mYχ��,'�2�+F�G���ſf8�Ul.�6�"�.��3t��[˝��4��r��tK�V}T�[��=V��z�QB:��_k}�Z�ƥ����W����ȗ��ƍ�kVM�EQ��<SU�oG�b}�������?ZWx��b=���o)\ȃ��M{�м Y5�#���G��oy��n@j"!��+;��^�X8�3ʺĐ�bu�{��u����N�z�b�P��'����&!}K���u�[�yуnI�޲)���}������7!�W!�,������`d~���WH�H�!%���q��*81Z��:v)*bv����8� X!-��x�DJ4*`��D;�_�:A7.td(`Cu](��9���9fR��a9�ADO H	�����`��asİ��*{٤��]��x�;6"}2�5#��E���B	����_�*��س����t+�#��>B�B~�P3��ۣ�0~�󽀛{��|� y@��k�D�'�w��K��������[~`X�A�w����}��p30�b�Ǯ�Lw��i� t6�0�2��10,�`fP����Ue���&�m0��F�m�3&�2D�p�����A��J����]�����������N�A��5��c�G=�p%�A�g�4}@���s��z}x���pb`8�K�V)��AR�e`��Z����������|>7�F�z_EW�Ǧ�Y��KpC+~��V�ȋ�����p�d;&Ŵ�ё�7�'l��ZT�Hѕ�?��
DA�S���$�U���įˍف��&�#Z�W��SNC�%����w�E(_]�i�HS
�|�7�.��Sa;y<��8&e!�=�"Rh� *1�vj'�BE86��]�(T�� � ��P�	��x�y�c4
q�=�rx $CBP�O�����9��o��0hN
b��Ur|=�C�G��my�+�ko[d����c�{w�����.�V����?(��1�`�
k���uw����l:�}0��m[����T9ۍ�w�(ͭX}8ڽ6����;R{vX�5��no�}���^e�]���������\&|�UE֌G��z�O���VTXm\����yL������_&���T�����~q��������5�H��t㬟�u�Ε5�&Ge��e���wlU��x���k�Щ��œ�y��9Է���r�(����U��'�|�+J�D<b$����eB^���w�vΟ��A�U4��",�[Gn6����*�g4�o�vR{`j�d?mi�F���=�n�/HMQ�.�}�w������/r�E��3�f�`�;?XPy���=5�ӹ6���סK3j^÷��l��!�7I���x�D5�T\�q�w�vM���]j�t��`����%�+{VKo����Ħ�}�<�Ձ9�%��,�*�4b6�~\��c����Cz��o�}})�UZS�7����C�,���2���`�{0�*�������]��O�2aݽ���njs�sO����!��6�-^�ڭ#��eq���2��k!�7����ߒv=e�T��%?M-��ǽ��{lJ#�?��Z)�+���;��^��
y�py�W���������dj��6�r�"�z�!;�3Cz�J��`����6�r�*ivR î�un�UW4�r���Y��}o���,R]��)�V���M��x�1�jh�i�7&2^���7�V�E;�j�דzy�]d����w����?+v-F�
y ���-;���I�5<V�@�YZz�³���]�1%�:5�s�Zv�o`���̜�A����{%�-h8����nY�	)?bet�2��֚7S恕���[�E�j����tZ�i��d���%��K�g$�h�Ou�'�她�ݜ'��f�k�Jaf�������!��&�T��Q#���3l���.f^(������BQ�i������U-Ar��-�Xz�^�T]vִ����9��a�J#''T�>��=��3�":"��T�����TdU�oN��nEJxt�v�G�v;/3Yw"��H��ҏ��z}�57�n~y����+n����9����lR�����2�Â�"ن�ؘ<^�d��ʶQv�w����19�gy�ݿ���g��0P��f��s��6w�$��]Q���7
��r;��d۞>-�m;��f��Ӎ����=U�2�V=<�����Q���9�:�:j�~�Kʕ��|���^�|�@/�qa�A;1�`+ӕcRe2�Og1<ju���z֧7{�h O9��Z�y�r���6���>u[��$6#o������>*_�&�@]�Ԑ�P�׊o|=y�q|oR��/[ ��`�Y{����s�<pjO�l<"a�hNjR�lEw]�6;���gں���9�/[��J�x��%�ú��%�a�F.H�E
��3����ѯ�`�L�бk��&Nk��Խ���hY}�If~��=���{V醱-�Z�`�ХB�"tC�����n��~{���-���Nѩ���$�.]{&�]��/����n-�buR���ɇ����?�_��.&Ϡ��5��{��^��%n�u�z��;?�U.׷z���i\�e��5/Zyx%�}Wľ|'3/e��l�L�M�д�����RҋOy�P�|��l�9={�k�\�n��?jK�z��u���k	3����zs�tהW7�RO/b>3�ӑ�����j�����l��P�8T�K3F�1�3�g�cBy`����gi�r�yfT�/c��Z���->�8��Kc�eOx<?�O��X��r�qΜ>���eg�?|{�">;MJU�����;��7��� �2��H+�w�D�S�4&& ���f6��Ai�%���������4����L�������-��
S�ӳ �h-:bfR�p�~Qц $E���J.؟�~�ф��s��x. B7K�� ���|�Gֺ��,�4�U�f���z�e���|�& .�Mݷ}> 6w�T͗(s��	��v�v���YYV����
�p��k͛����Yf�YY����c���
60[�1�2��w�+�	�^���K������b�B�_{��S��+?��GxUV�~c��qq* ���@� i�2�X�,��m�o��D��cT��/�8K2O����&K��,���!�/M_q�"f��'��;޼���R��Ml�FNM�C�����,/�ٽ_�1�?�^�e�K��'����k�7x��D����9qSw�%j���~�̔2˷�]sG�������m���RdCB��ϖU:��<��=$QxG"wy����%�y�7E���Pl��r��{x��PkzE�`�w{��oJ�s�+C�	:�*]�,Nz/$�����(�3S� 
;B&<�dP��_���E]s6���Q��G~�)�0ȅ<��
ۍ�xq	�*ƪ������K��|�Z:ƾ;��A]������1h1�$:���(����.B�y=��	i�u�?7�@~��i W�֏+��Yl��4�¶���D˗��%�!�l��]��7����0�M�*y���gB;5�s�Fz��^E��>���ۿ�}	���e(����h�V�R���_*!}����j�{'r"�4@��6��o�.����'�ٶ�\�W�S_�E[5ƣ���?�0/��sRYʁ��3;�M��__��{�A�\��!$̊G~���w)�"�c����w��٫�y�WU/��� 6Q�7�0m��'Z��S�����K�)Ú�fH5]|�r1f���ޔ��#��_�G�ؔ�$eVj���}r$�i���,��ؾr*��v|w2�.6��
p��+���h�Q)�A}��Q����O��쉜���g��/0�R�UP��+�7x�xw�A]�8.�Ь� Z�b�7�\���m2::����| 5�\��|��V�q�h����z�}��Τ#��2ow؉iT��hS^khs�G��9S�j�W������~kq�˯2�+���rw��ɩ�3"7���}�?`1S����7;��Ԯڽ�\��ؤ�"*Ϧ�a:���ȹ�g���T|Y�/~�]������Aiܠ��2��&q��Fk=8�}h��;��̹m�j��t�ܜk$g'��ߔ����B�Ĵ��gÆ�FF��g����,�x�~�~�we�'R}��l�g.��'ʑ}{��ݽA�� �j��ZՊ�U�/}��%�!��'f�G��ɤl'��9)����9R�� �y�ZN�ɸ腆�Έ��N(<���s�R�L�J9 �'��#�����߅@G���3�B�Eġ�aǱ���F�ľQ��֭��*Rm �讴�u�=u�B��ը[���}* �IE�  /�?��;�����#6�[Wgwa�n�{�:�=� ��������]j���_ȸ�;�aSN�C�q\]��I�/��f��~�j]��E�E�uuu�uuE��uI�T5����_�|��"�v�uuu������Qp�r$We�����4lp�S3ͩ[}��|)`[O	��?���a�r�wMQ)~*��&���V��j��<�{7���ҁ��z/�F�
���͞�k-��vŇ��k��`4)�m�w���K�ܽ@�wm��t���?�s0ٹ����[�۳9$�?�Utw��8��q��q�M=��#�Vl(L6��l<㳹����trB�G= ''�����u���W�=��,�}z݂}�|��/�jx����_5g�׏/*~�f���݌�2��1�eXܴ�����w��}`�O�>,z}�
.��
�z�{�p\�H�6[��	�"h>�M���@9�b���(�c| ��! X��T���/��N���D}P� �bl��Z~h��N����\��d�Nv��:�#1�-P��0)���w։�1���
���H¶=�Y \�e�+�k�9L-e�'w��/�Lʼa\Y� �\�P�Ǹ�~?��� ��z�9/#���� �:D�������s��H;#����s6��a]���艟��0���H��Ҍǚ�f�22�sn�|¤��` k�-�^|����,ץ�n �珦����T���o��JcT��Ȩ|��Q�����#�TFƟO�ޏ0(}tB ;�c���@�N?�>�(U|mI�#���,Z-�����?}���ud�`2�P�2y^�/�R�9Iɠe�HS�X.c�8dMz�Z�c��i -Ɲ>�����I/����ª�X:���:�s���}�u���f0
��Y nB��W������5~�-����{�M����j��Y�	.q��͟_"���*Y/%@ԉs1}C�����d\�W�&�'|��q�$N�4Ye��v�Y��/���	�9;P���x9��w�a�0 ��������c�FD|�$ѿ
���'ɇ*\���a����Ν��� j(�P	�&�T57�w`�%�x�G����0��*��8�<w�½�*s�Ůh�Z�Ql�Q<$�4+���8\��
x7�� �-Ti��6[�~\��O<8�Qlhܧi�${��&y��
�z������M4�}��/A��D���c��֌cr.��MƁ��σ��*�cL@<)0�耐�C�(�1,�}�
��F�B��� t��w9�<�8O �Pn>�y���h�5���X;�<������`\=WP8���#О�����TQ���F�Ō��t|���B����4���w���<�5C�r��F�e�!;ϧ=>H�10����o���2-��`����kR�=�{� 
�|����-;�y�|��p��]0�O٥� �?F+��_(�E��˹���F�NAj��*��؞�B��r�|e�	�ȇv�?����7 ���v�AL¤*�p����Q�	�����x�@�4cO��R�z��0�d�J�^�=�8�f41��\H/���I�IsH��\����F��H�G\F��> ��eߒ����>'��1p`W}&��H�.���c��$��hR��B$��-I��h�U"�9�棷�W���e��;>AQj,���1>X�L�xV-�6Ʀ���$\T�Y�Y���z�E�ř�eB'xt����<�9�� i�d��9��k���Ul��M.�]r$� #�����{^��r��ov�ѯN�w�����5�a}5�=x�K�h��߿I���W�^/��h��f$�9"�"��.���a,,�ǈE&�03���{��ܘ+pA|��R�̶�o�.مn?����\kA�BP��<4��h���8Q;�e̗��fSY*��bV�3��҇�O��T��R5�nN��oyk�>�;����Gq�@�g���Q��Y��E�۱1�]��Z��] 4Hd�ݠ�Ȃ58n,�^W�]r�O�3��'t�4Z���C3e s�p
c��lr��G��h��9�)�~fX�4�\ G�"�<X�X
��R��_Uۡ���	X���$�M���%pp ��� �
���u�$ �"�h݋e��H������֫�*!��+i�V�,����ȟ���9�M�5P�f��R�<�HУ���v��??p8�i0r��L�5.�uD�ą@�E"!���Ձȿ+W���2捐����9)���<�^�	��H<��	�n��?�@��b�@1��qɲ��4߉iHW�>��p�����E�r�@�9�yõ��E�Ign�K,���9� ĳ��7�s��:?Xy6x�b�6��\�͹�3�w�p�a���Td:������zWn^_�w�n0*Y.���[Ewl�����fY��&:���rsEE0��n�{=ף"7��~��)��ӌ]B��#r�)t���踚����{�:��Cyt��rԮu7�rm������w��q����ʉ�s��c0�y�~y�B6���R���+�`�6�8n�M@��}"�W �Rb��D� \]�ч�JN�l�C�����(�ͷ �،�>xa��i`A���Zt;<>�E���3_P78o��C� ���?z
"�>D�*_ע���7"�˔��ϱ{Ȯ
�㝵H�W��@S���o�;HZ�R�͐�[,@~V2�/���}��Kn�E�xÎ��6[��hsۙ����D뽍�G�y�,/���0���J��a��u��/O�:Io��+R(���|iȼ��x�����c8� _��#N�̭�A�A��;��Ykt7����u8a��վn�pA��)k?��1������~m�n���MB�R��������d��f�\_�{k����E�N�|�]��B�,|���ف�Ef���W���]��a�hB�c:�#������a�+��+��f����w����Ge��Nx�]-�x��_;XD�v>�X�s|鷵_�]�y�I���4�4rAJȍ�	�G� �c{��ݪ�*�w�hw<���0�@��Rm�X'�F�Y�!g��EdQ�6���e�����-��M�C�Σ�����3^^��fc�D�3�e"^�Nyy�vF����ru݌���E~y����wCO�'9�ū�&'6��yU�_��<�k΁�dl([�L��!���-Nz�z|���> ���;�$Z�TIIo�E����ȹ��^�Ѷ^[弼����vM��	nu�����1������Ӿ������/{Q �t�*���>�^ Tg�������W��Մ���&H9f�ƫ��<�L���M=��Z��Q�R*���o�X@'���P$6�w��ߒ�z%5��]1U�_!U��Н��/ׅ�,g�x�a�1�O�Q��w�]Z�z�n�v:�<c�:=55�;�P64)5��=w��өG�S�2`����RS���aCS}���~lpNNݐ!��h$5�]�7��Rj*�m*�3>x�'��@P-�]F���l��B�	c��7���kĜ�5�1�	  U%x'0H�^K8�	L`�=�r$7@����k耓��V�.%�Y2L ɟ�L�,r����@K �,ƸU�)����C^��),O6x�C;1|��b��lB��o:AoR����������tg�@A]D;p��[���|<M�a��}���r�g��ઙI�6�i2(|�|�4�z(i��b(�<YM�Ր1���5���h����|�K#�x�	�˄4��VL��TU����������$_ $J�E���h��%�������E�'ay$��1o39P܄������%8�[�z���葘(������P9&λHO�?R����`m%�����⃞�^�4���sf�Az�\��ht	�yEt~S8���l� =st%�^�y� ]�v/��9U��qg�0�z�R��{f�U�t�bĤ&��PCh^h�?��#����@�2�@pP�&�C�2�O�Qaϸji+U�&�S���0���H߄��'���И�������ՂR�ǖ��(:�.
�&� 3	y�N�/ 	b��@�^w� ��:cM"�����B"&�����G����O������d�䫯S�I�Au�h@$7�o�9<�H��S��P�OẌ́�'���7�o�L���B[BT��	3�?�$r��f
�ɝ k��J#��O�i8Eu�{�	_ FZbL^ �.�́ ���>O�;������@rS> Ml����/a�����}z Ġ!E �>L�D<8�d��X�xٳN���P���@^�8�]�"��V��/��Z�V~��i�L���eVR��B^=r��.�W�YK�66"�K��d�3�)@o��5H��!}N�U<�� 5�z�w�L)n"	i=�ﲭ	�{�x��v�9�D�=�ф|��BT.d/ZW���U^���U�; �7.�!��vp���u�w���G�2�����Zo�������g}�&{4�P-Ȏ�� �g���HR�%��!�X���d_�E��쨾���������~�� u��i��I8��9?��q�U�ܛB�<3T"�r�����k=��r�G:���3��X�wоb�9�GC���� ���ݷ%�lQ{k�̀�Cވ��M�Rs��~���5P�f����D���|Kpa���K�\7qpЬ�����%�����S�� ��4���hꢔKB�UUQxY����F�'qKo�}MQ\]�p�_ R�j�M��;{	��J�y��k2��h`;���n�bX����� ��3�� �
��L�ЬR�w�C�;���n�,t���T��\/�4����xn,C�B1|�}�ˠ���6t\��|4_�?����zt�D[�9F<\��Q}��.�jBB���Ƌc�@��h3��o�'Y�E��
PgSI`8�*� �,
�Q�l4x,�� �'�����Õ���A��ǃ��'e�Hb}5T�q��u����5 ���#-��R�uY�_!��!{�D�v�?��}�e����L{�uv���xxX�kx����(�s�#���ǅ�~��}��#��=<�m�	����qѵu���D,U���/�2����Թz�-���֠���#��v���Q�b��+�)�ȿ�,_����w��+�m��kו]�����'H8 ~�{[���q�S$��n�����X0�+�-�ϻ4�&�ϙ�_E������q�7�UH��a���m��/M;�͹����y��-&�oqy�#�<ț�*O���c�Zݼ;�q�i鹹 �g.RT� �Bq8U��X;�ڥXU�h��N{4�P��U��Ps���
~/2��k�)��<���,_�>�z�qG]������4>��+�c�?�����^j�����9l��ͯ�Y��q1�z���Z��gl�4�|4Zq��R@u�f�6;]�M�}��Q�m#������ 	�@�-�d���=�8�Q�j*�_u�d>9�zh�S���4�����'��'0&��?:�ρ�L(���K8Г�����s�s?b܀Ƶ8}����.Ef�s����������u���.�#��O�Hn�ۆ�5��:)H~���;G�|B�j �6�cG�	�����4���M݄�����C��0s�2(��}�H�hT2Gr�ݣ
D�9i�����8%����7��)+�ɦ���1꾜]�B�<&�Cޘ;x>U��ȇ�Zh���PYO��O��p�B�(��cg�����f�N��F�s�z1�JD ��MH��x��~���Ȟ����j���O-�X4���f"�t�4H;����#��cT@|�$�zH�:_F���#���%͑�/c^������/
��]�[ 	H��Fi���J�@T��QH=��B��4}�-"�XW R�wG���-�H'�b� $P����Dd=���`�����RC�eKc ^d�p�R�^������:�܆��Z\�2H}�fk�T����0�ݓ�@B�)��!cE�n5��C���W�mO(�Z��m�+о�f՘P�ZD}hH�s���!���(��)5ߵu��o��:��.؀�l"����y��9����`�s"?�Is�Z�'��\���pm�ev���I�T�:�#ԢֹT�)Y`��w����Ԝ�x��[�qW����*f�3+D�zU뭎�H�����sN�����e'=NL;�H�(l��I���}��>����`m���������t�y�������b�������G�?�eVGm
�&{?�lƻ�3^�'���c5Q��:Q�#�,��(]��Tf��U�%���1�F�E�r>��?���.yt�R�����罽�Z(�C���������آ�/�Lu<Q����S�{6��Td)JD��W�������!M��F���7��i\a�Y@��
�e�lGn*itGQ}�m��>[���&�On_F�6�C�	�8��gG��+��h�H=[���4����B��^��6{&*'�'���Ŝ�_ �e`��n�P�<�k�4�
�:v��[1z��w���Ks��VҥY�8%����6h�&�@4���bi��E�]�-������c�Џ�+<�`JJ�n����"�N��A"I��A����w'T8��Г�SK�s�Їx<>�+��C�!���E5+�m�3 '�C8 ܸ`D�d@�	�F�O��J@�N }����>k�	���X
dӑw��!ρ$����f� wÞ� �����g����ݺQeX|��V%��{�F,I��i��H���$�2�S�I���}pU� Lr�O"�H���D�
[u3ņĩO �4�G�}3 �$#'K��$Љ�[�{�+5�8fA"���  �DH��to��/$Y>&��1�H�f�
I���2K���<x�Z?�ě��H��i���b�}a�������^@�~xB��|q��H6u9��d@m�g�9�o��Y>~��/�#/�e���'�?8�������7�'l������������4�D��$�U���įˍف��&�#Z�W��SNC�%������ k�ޚ
H� 's�x�'!h��w������ xC��H�A9�
�(J��C�'��!�MTu�T�n��"�pmӅk�҇F�㡎4�F[d c��;?��]D��8��x���u�E¶������-���u���4ݸ֣�nr}��Ys�4����3�[��<)u������l��'��-���=�a��󒷜�Z>2e�y"<�S1���LG���+uխ�<�Ĭ%j�^g�.���l���ۚS��NI��?m6lT���v�6G��������?����һɬ�"K2���>n���*���ۋ׌j��؝��Ţ(�@Ie�l�t_��ܻ+��OD�Y-x�W7$l�Ҷ�k\3?����^�g2�!�L���C�X�_��@�S��˓�k
>N�%g"1��¾8�G�����U^��2E������ҕ+y��+�Ȟ��m�y$l����Tʻ��kNCAzݣ]\]sE��^ɮ�������R�]��!�b�{Z��GS�د]o#������&�p3��ǭ��ӿ�G5]�=|i82vh$�.]N�g�y�w���9;V���n�r��ˌ�3�}�Vl\4[fˡ%�Q��z�+��o�{���p�3G�_��ã�Rh^�p�t��hng_b@�ܚ8]�ci����yb�B��p|�b �e�������!e���N�5�k��:rT(k��,����&_7-y�Ş2E��M��#�����L</<���y�呼�DQy`�ڈ�t�OV-�]b��bL��uWf\��Y�qQEq�Kf�V%g� 7'�����>\MV�xW���$n��k�x��J�+��j���`�0�s���v�`<�~e�)>�l���������ڶ����w�G\�҇Y9������q{�q|炥�W�rY�]��篗xPfo�ct6��}���τV�z�@~&�����3�R�^w�G��l�4�#�ojw�y�F��ɛ��o�������t-l�����r�t�%:7��8���~tA�h�n��������}�n)�r`�Q��+u���3&y��P��iS��_~��(!S�P��v�y�F�C%u��IF������t1�󮟱�Ӌ.\���^��N7���ͺ�]��Y���o�
���վxj�$f\:�5�V(쑘�Z|�����`��Oy4�$�l9��������7��`�Ir�3-���ir{�0X�Ŝ+Wu��� ��5g��"���ABQ�_�Z��o�{����댩V�_���bJ�w�o7����ڥ�ĭsvyh�ܟ�7<���S�}���t�Pơ/�ɤ�c1���k>��ޜ�������A���E�v03y<>iU^v>����Ȑ ���E��Lݙ�<w����d�������8��C�w�&�O�.]}%`��Za�B~��N�N�t�y�lE���7f�2���;Qs�w�]���g0��Zzf&|s������Kf'�cI�.ges�ҙ[<t[j��Z_��ؼ�/.�3�(ֵx��,�Ʋ	���,�n[���ힳ����t���O���@��t��E�a7ϻ�h���up����a5�m'|֞������:�y�'?Ծ�������U����
�-g�+߿H�ܵ�KA#i��Z˰�l�\�),҅�k���ꟋI�=7�[�$v&Ԛi��y�X���q9_峆���L��4ҔN˾`rU�N�}Î�Yw.I�RI�#�+e4d� ���t��;�.$+0�����ހn���E�N!/�f|x�?���umz^�j^�5���d����<�h.�?���9.}ֺ��9���XN�ϒ�1��wx�a��*4��S)X9w�������<�Λ5Ǜ�ݑ�����/6����,%ĕ��a�:@���]�,��җ�Y��zD��l_�6�e��N�~��G����x��M���H���������Z�Wt�����[D��Yxc�������UZ�W|O�)(u�ά�~����F�͟�,m���vE���8:���m�-x�x��<$��`Ai�����q��I����4��Ǚ tq��C����S�+��~ �_Ծ[������eG �n��1���&7�Q����N���4S�i� 'WWdn�%���>��u��97W�^n���ܻ�� Y����r�MҺ�ՋTI���o8���³�D,7�@葇��ù�o_�zb��]{�TKnnT.On`Yn�����r �v�=T-��LaS���>m�̹��a�z=g�eӁ��Fy�����%]9tR�y�ޟ3�F��'�!���2���3�'�(ܣSX'�z���b�a~6�*��ρ6Ƃ��Z�8���ۿ{~�]�J�����^jK��e�?8ǿkjb�Z������{����X9/:m������M�ܬ֟��!��{[��q�kP���C�I��y�Aݛz����ݚ���;+���������W�;Uz�-HM��X1r�����No�J�h�m�;GUU���|6�h���ۓg8^�s��:^��S?m���{5�b/����*�O��>������M�l���M^��n��S�2Q�E��2��S�����_�%���6�L5�n�Id�@�.���:^����q�1��O]�������<U6-ƗD��4Q;ܫ?2��=|�'A��n2/58�tA�h7�rH�?3#��\�HX��z��[c ��ߌ�f�m�_I�9d7_���ϯ>�I�C�B;4��	��\Ð�[��ZU$Y��Op�hG��|��k�o�A\]�u���h!����*�SZ	�����hA�^��ʪ~�V����]�����4!Et]���[w��4�z�u���]���0�8-��E~���2��m'�c?uS���.��Gn_s�9� ���޿�eG΢�G�?�s����~�����G��~�(f��D�*�-:�v�B����kx�`�:>�b5��F�GPQ��"��:���~'JY�9F�6�����|�����v�6�:�uD�Gջ�S�>-&�'r�MP�>��ƛ_a�������#W�o�:������q\ș�#GćL@0q��Ր[�8�&��o>�����ߑ]'=��c�����z���ۗ�X�}w�WL�jUXH���L�����V��O_��<��˻<'{��JV�gBI����p\S�sj�t�]��GW�]����I?�9v�֔l��fC?K}�(�hg�l���e�:���E˛��0��{��z�%ƀ��ֳ���%p�><���6�) ̡:@����ŏ�OH;'nl>�4����y��%��Ɉ��̀����)��׹Eλ�.*�g���W���5�>����`��ۖS���<1�� whCL}PY�s����C�Л�;��Q�}b&y���L�vP=����ɱ*h�G�����c-��d\�BC�wgăOl'���v�zʙ��C)���l�&����#�_�.��(-�:��.* ��;��1Z�z�Iko>���q�ƄC�v���l��nq�.������[�U(��e �[��I���ޗ��q\w�'M�4�ع���cY>dǲVu˼II� o�&���	� I@$�xS$uPv�ؖ��z}uӺI�sҤm��i�$����7�vf�� ,�J�3��v޼7o��,v瞥�{�i�Us�w��^e}���ȃ�3���}��F�濟x�{��7_y��kj�����Ko�]^�:�~��/yC�,?����1���^�����_�ys�Kt0e�'w���K��o~���*��ok~�=x��G���6�4������7x����%��?�2�p���1��>�((y���Rt�ۗ��㝟��"r����?�~�w�X���k��L?i>��/���������/n�]=����hmw��u���k?Ҳ�n���G�?�7r������|?�y�{3�Ysdn���=��`��]�Meo��s���;����W/��Ϸ?����GkGoW��?rU��?9r�.z��{�\|��W��T|������]Y��!oky�м1��5�7��c߽�����k����7��y�#�,���̟���ߨ����_��rP���ZWo7��y��K�!��ٺ��a�d��8rld���ɞ14ؼ��^�����I���� ��G4$�(3��G�1���F�q=��|1W��p6�N��rhp�'����� ��F���qI��`��(�o`� �}���

��o����G#�H��[>�F2����pa� �ʑ@�iQ��ߡ�ǭ��/2��PQ ��PUa�qm����'fb�����>�i����k7mz���d�3׿��R����o?�~���ݽ��߾r/���M�����FzV.=Yj_��Kg�~�a^�����^���7�q��W/l�(�K�w��s�l�U����nӿ�t�ݹɳ{Ӧ��sn�ƻiӿϴ.�*�R~�4���o��ۿ}.��Mɫ������H럏E�j��G޿i��0O_���������J�0E�"$����g���?J�x�k�����@HŒH!J�=�?�44c�["�0�ݯ}�j����y�������8��G�ds���f���}�n��M��_y�6���7�4������3�?y�죿\�����v���Ϗ��7M�_N}�����tx�����j��sD�3�\���d��=70�_��~�v���8$�G8���?�0��\ޕ������$3򔟜�G�lG�yy�pXB�&��ܵ���!�� 2��G���uX�/bP)�>Q=����� ��#̿��c����W�� 0~%0��=���t�����v}'���,?�0����1𷚌��m����?�z#���p�����KI��G�?Ϥ�L��$+.�z�^C⑾��u)P��eTB�)S椖9d�
�o
�o��2�d��RB��r��r<|��e�i��It|����7;+�k�y�^������3�5����y��]�C�	�"�{�9~��>�ϸ>������1�κ���Ѹ��QaTCC��Z?�ʫ���p���?������⚜�㹦ɸ��{�&��I]Sq���8��9���cQ=����v�?1�&:��5>aŴ�;���k�0�j�D����|wA�c�C���>'^~�<>��Y^;0��?ٵ�Fu!��������FcV���"���rӥq�jo��S��kF�@�p�\8(�E\����}hȠ.\�J��a�=j2�[�&y�IW�����!�W�[�&C����Fm�m5�:L�vMGǱ{��*���!u{Cy��i�ho�ɛ���I�)#��Ӧ1(/%Pզ�cP]��"H�W��#_��5�m�u���l�C*�p)9�Y�R�R;)9l�4�EH�;gƋ��	2HA��!CW���N���r�����[�&��b�Z�6���AVZv����������E�ӣ�l�4��V�R���{����Z����N��9�g�ޢ����|Y�Z!��U׵�)�*EK�J�R(�m*EC������,o��};�TTU�WTT��u�fyuE�������2y��h������9߿�hE������C�wm��=���J.//(,�U�LVti[
�ˏW�.��fs�V*[�ä�vuw�t����e"�=#���ebț9
�'^�
����'Ɲ��@��Q��ڼ2�,��O��>)��*z&�a\�����wp�C2�0p�Y��p8j�:=�j�j+4)xi����s_{�����䐯D�����m���o����=99��L����q.��a
u�^�1]�Ø��W݂i������)��pXYzyJ%�i�A���h�A�s�Q�?w�Tz������|a�>;P�R��"�
��q��|#_����%���h�R�
��
�k���h�A|��Ղ��m�ר��U��Ɵ#y�����!��:��i^�Pk!_R�)̝�!A8���<�N�ۨ�p[�]v���`p��N���47�:*}��ewz�N�u[�6�F�����vm�B��x�����١�)�����m��<.go�������x�[����u";��ǬR������M�Ǯ���4�tlN������p[�tv�M��:�f7��p������6�LxohB�hQ�z��
x��Qх��}�A�K �	~<~����R�w;@�	�ɷ`�ý�(�8�pU��5�?Xä��،�������>���u����8����̿8��g~�暝�jH���Vdy��sP�t/�޵����
G���� <1	՘u2jƴq�)Z&& ��Xn����gޑio���@�=K��v�~,�[��AU	������e��SnW7�K���zw�-��_����S��uu�ܮN�U�.���A]]��j5gg���0������Z&��>Q�P��,�c�N�ئ��;~����=R��VSU~����l�ß��׾t�����)�+��52y��������A�XS]�R*��f�b5�56�?���)k(�|�]w�����s��>���౛>��O<�簬�$�Ee��46���HaUu������پ�������=y��Ҳ����V�B�n�;4���;��&�ݎ�c��j�r��v�;\޾�~o����z�#�"ﭷ�z=�G؃ ^1@��&�wK/�oL�_E��U8#�l�fg���f8۩��՜~��c����`ohd��ك�@�珌�=##!_`��?2�������Y,�}��E� ��DB�HEIx$#�������|�������U%��`����"AF5<	G"'�#C����EF���#�~_����t�hL��`�`Ć���s�G$
{|��~��9Qsc���X�<T����x|ra��c���d|a59��:3�X�'VOM��F9<���J,179��zjfu5�Y\^]�_^����%�=�����SN��B<�
�-/'&���=3s(�չU��������\ru2����D�#��<��L�0��c�=�J��F��de~~u�e�>7�s.ι�"T�M�.O���p�"BpR��k�4��]��mC����v�@A�U5��#�8 ���=��>�H�ip��:K9t^W
��(������P
�߂�v"n���=���o�T��Jg+�@�\<q�PN�m�>tcx�?2��F���,�D��>�	�G��#t\��SMx��p4�*��'��I�㸿R��QK>~3v���>l)�f2��Hy
^.��R;<Of��x&KR3i9��Px�h��:�p������uI�)�������4KZzY��!�@����\xnݢ�d���*�
�����ldf#�����x���vha}`O���:+'?�6����h��L���Κl��Zpu�Ԛ����J�Ձ�f�Si6�c����ӻj�qy���)uМ5۬0���v��m+T������T��S���b��oWA=����/��[�֙����O�	2�"���:��M�O~`���ȡ�K�A�{w�֡8H&�pN?$��ǒ��g\SH�w�&�o98]e�0��0�Ӥ����x���Մ��շ��G���x�'\ߝ��Jm����c��:_X��aC�<<FB�8?�G°�9$,G};���1L��
MWh��SF�� 	��x/ר}�0\{��~%��-!DL���#�II2�o?��4��k�ƒ�0�gp�ibJ�H�!�%��dH�	/���2� !E�~'���"%R*��!��-η�u
�l�n�zm����3���I��)=�3���ΥW�AܑB�J��@��8����܆lWV30��8�!Z�'���+8ݼ#�Kps����0O�l�y�F�!�j���3������ ^�ࡨ�J�!l�ӭ��O�`�S�2�O�3=-�}*х�5��g�&g�.����g&� ΅yh
;g`�`hi���4y�S���e��ô�1{��Y��I�<�~,����`������%h�fg� �Mº���˷V� L���fqz��{��t#��Y��-���+�s�0�����Dׄ��t��a��91�u���Є+��p�c�����i�a6�-�m��L }#��Cy<#v����AH�=�����2�+��`�r��T� N������L����p����VYl�Z9�-�|�'���������FE��w��V�g;i�:��u�z���''/"J�t��O\����C:u���>�BU�HP<<���ef�;�|�=�=.����w�$f�y�LO���Lr�c�ˋxN���A�E֭�˧`]kl��C+˰�78��3'�𜸓�0��EX랛�u���$�G��%�����][]�|hy�ݓ���}x>��^�T��w���+��X�y��؋��z��H�P��|�M �%�3�B� ����8����+/�>a�M�#j�Y���5���l�)�fY���p�P�NӪ2��W��r���)1��z�Y�i����L�A�lG/�֬����S����U�-Rk[���\��lқ�%ȾA�7�T��J��B������P�Tsi���v�Y�3�)��h�h�4͇�;Q��n2���E8bh����A���3��j��Z�j����F�_��i���	�h���1�֐�������V�,0�\P_��C�R�
�Wv�!k��jhwk;�@e̯�:`�mR�n�/�v+n��c�X����B�6����x��jޟ�׵���"���������j��ߨ��*q�4�/��Q�Tb��R�������D��|D��0��ə3�OM�,����D�k�ϝ>w~����gN���G�&��F��������` ����b���ϟ>��5�{�����+��-LΝ�O�9��t�<�'iY*�������O�?��?w��;���b�1����fT����dB !�V�R9�Y1��}^O"�%�/{3���ZO ���ī\�Γ���l������x��_] ���37{k*aU|gU�\�e�a=��j�˫�ۅ�������Am��N��]/ߏ顪����KV���,�9�5Юm�8��c�j�{�Z�n-�`�P�T���j`�������{w}���^]�]W����}� {w�<q"�RX_��#~p�V��W���T�R�X�p��[C�iT�"|�a��yb(���K8~>�L�sLN��^���~Z<�����I�GwOs�K�̤ӎn_��W��/�����1��
G=t�ڌ�罳�0�r&��r�xӚ�����9n������Q_yru��ޙy��;GOB�u>/Ў� �_�YZ��}�����N<��o����_8��VCJ�n���ѲM�Put�@"�M����s�(pw����k������������������}C�����u��h�R6�����x\���~�����t�w����~-��vp�;ju�~���k���{�.��TY=]�κ&PUu��t�3#�^)�v�S�X����i�>��!��s��B���c��������446�475�VUWU������5U���w��u�ɂ���#�y�G+�d5�5u�Օ'J�JJ�����-;�NT�?r`ώ'��Ж�6����<�����Jr��?�daQiYYIaAYyYIiq~^��⼼�}�s���z����|h�޽�sr��=�[X�{p���㛿|���C����?��7�p�Μ={rv���w�x㗷<�'g_n��=��HiuuU]u���(����w�.�5��4�7454�뛚[��OԵ)�fI�y�b��@M����/cZ�ײ�hk���}#L	ȌǴ9����d�@} wXaR��{\� �i�Ĵ���
��:X�=j6A�k�O�x�J+g��
㓜&5��^׺x�S����̢��Оƣ8�?�U�p���j#�g^iҖ���k[���x�*�݊�v�5�:�iO2��� ���@�g��M�FO��Qp�x� ��o$=�<��H E���P��*�D/A.�/?�qjr3�\��:�	7|���RٷТ.����f:��6x�*�ن�ƴ�,����LQ
�ߡ���s"e��|�w$7�SWH�=��T4���!c
�����e��܎&�ޠ���X�P������=#C��@�����Cр=
F�h��߁��}ݸsF���h4E�z����ès����M(�z�X/�cZ�Ã�p��=����ɇ�áh4�"E�DB�`	ྋw8��C=/��E�b��p���]�n�銎����>��)j�o�c5.t�,C�
.�����0t�).#�����Jw���'k��uX"���%��f ��$Y�B6�|��ɮ�Z��M�H���8�=KJ�����~��QZ%r�g�E;�ϡ�ʠ/@8�Ŵ0��R�>��P	�� mh���S��j�Q�889��F�-6��^#��**��	�V��%�o��1��.op0����^��˦w�y=����c����k5��v�JoИ]�n�����vZl6�R�Vx�y��n�(5������[~�_Oﭖ�V��m�Π�[�f��j2���l�Zmf�^�Q�j��{�ժd7?�����^^���m���#[�����z��������.{�s䊖��������#��O�ۚW[�L�V[�h��vu{��ںe�]}ހ��w�����B�`��0�s��h=�*�)�,
����~��DY�ک�*ii[���OM��'C�x<>���=<��
�]�F���t8�6��������#A߀��m��2U�U�7��F�J�٩��؝���^�7)Ujmwp�ڤ19z�>���i�t�m���n��Z_�Tʕ�[���L_���V�6�u���{Kd�s�|��\y������"����\��k*T-�{���d�n���)��Z��&����EƆ�ǆ=�Zk�=�M�㱉������T"��N���/��NO�x����~���}���/<���ϞYY|��o\x���.<�����$����S��Ϝ[{��yz�����������7�p��r||"	���Aۍ�������ՙ�X|zieyy�������"`yi&�z"A[��������"cə�x|2�����J��;>��ԅ�_��3k+���������;��Ww�D�GP��d���ٳk�x��g�>��ӋO=����{��g�{��/���ϭ�}��o���7�3��������ɑ`(��FG�'G�+�=��c14��8Mf��������q��A�:2<<���v���uV�����rڬf��n������_�r���:��no�����ׇ�Gz{}(�/0����X*K������l�U�V56*�������衊Fm�Ǯ�FF#�^�"�����v�ͤiQ(��o�븼Ơ�_����jkW_�w`��U�������Hhd�[鏞�@�Q%61���jv:6���D/|x04�F��P0��a���\����r9��^��;0��F��=g��ز�T�s�;����m(�µ���L����7p-V�5��~�{�v�ˏ�~�Jk6j-�r��Z�viw*+4]�����{��ڽy/���_ǖ�il�@8��]�F�ͩ�5��c[��v}�Ke��j�I�R�FB�����d<hom�r��O$�SSSs��S�ӳ�3����ZZ>�0���^��s/���S�"�,�9{��ן>��3�ϝJ��Ó�dՆ��	i������ϭ����M//�\%�щťٓ���p��T��9l��hh�K�^sz��(��������x<�H��Ń.�A�Xx�-G�֧�L�Fbq���P` 8�{:�uF���T�~}���ܸSg��t{�=f�?�m)��F	�DO�m����X9���.<}��I������S/��]|�����x�/>3w���o�� }�7��"�#�谿w`d8��]�.}Gw��;����Er��خ�i�:��a�9��^��hV[{�Jq�+����]��تS5<�����7?T�h+)�i�t;M
��`w�Mm���f�j���i3*��:����`~qY��m۾�C5uC]E�e��<���w:zB�Uu����^�YU�'Wi+j岂���C;7��{jd���Z��j:\]w__ <��6T��ހ5K�P���p4:6�[FPm���@�%�1���c�s=t�e����q<~+�yЅ��#b��b6�|�H���I� ���|p<�xb��T�Ѹ<����Œ3c��Iԩ���Ľ�gf�c���ᙙ���b[$��kf,���A�щDÝ�3S���&93�:�^����x�a�c��Q|:1E����xB183��Lď:��L:�I4���� Lϸȝ����X؍��Gg�щ��'�f���t���LML&bCS�a�?��5����}!rF��yV�1�Ν>wvy���bb���������$�Hlqiz:>�4v��C�?����M,��J�%&�h����;\�h��f��=��+�d���n���1�����R����Ѹ�?��zU��W�R����d�Ag�'��t��M���w�W�iuGb�N��%�PѮwغzTJ}�*G�2��|�Bawu��]�>�#�X�L,���,�i:GGf�Ϝ;w���3�<s��έĦΠA�<�Ms#����k;>/�Գ��s�#��U~~ 3�0���"�..�Wq��cj��\)R泦�)�CD\
Y�B+ȁ�g�+�,�=�p��bM�8�X�>��4L�f�v���&�`J���橓0螞~h����=�ޥy�N�/.����2GC��}�?�;���$��5˝3�,���w~vt'��݅y�?c���⯋���}2>r��=�ҙ_LK�q���:;��#��q<�ی��.�`���y�-��>�(�Y��!�6þ¢�b�NQa�}(E��O_lT�׎��7���r@��
��tK��^�.��\v�n�J���c�Y��N�;�(>���l��o��d�}-2���C�,�����:����R����:�?�Ji5�x��n��^k���zekU1^ƽJ������,8�0�J[�T�)�K�.N��M𩋅��dC*�|)��)5�9�M���L��XB������r���� �ݱ�N�����`n�*]Oc��:%yb�BE�.��r:�N���e����*U���a��4&�V������5��}mUJU���ujU}��^�Z���;J�55՟(,,;^Qv�m����()ʕ�h�'r��V7)��&YueM��^�ݦF�v��?����l.)��O�Uעd��ؗ���}�v��;��7i�V�Zj
���y�`�����ZVU���{s
NT������l鴩M��]�*g�ɛ�KW����a�;\SK�����&x��GE��dx� �'�w3@�|f�S6eB��DQ�n*�d���)W���C`��]�r�!)��%���Y�`��?-��Ǒ��
8��,	����9B�� $�����}�\W��LNēɈ?<����h<��L$���DW ����Q���3<��]�d26�3L<9�J�;�I4�D�'���q�7j�%���0��O$����D|jJaN ����d<���&�I�������L}4�܍�$㣱)��'&��X��d,>5�J�:<��˛L��ao7ݙ�A#{�7��|�1���|!�����wۭ����j5]n��ܖ��TV�РR57�V(uV��]cp��6]}K�AUr��{w�P���/kѵ}ᶽ��V��T������Ю��kU���ʪ������j�Rծ�,(=��'�`�����%Ǟ�V~`o�JW]Y�صw���?e^����n�������Сҙ;5�򦖦�'v��+y��-�>��@~QIQa~q��Dq���Z\.g��R�P�N�������`tl����]Otl���� ����氽x�� ����jHv/n���¶��]tK��P (��!&	�
��.J
���C'��y�\�)���v�;^�cz%�'��DCVAzx߃��S��z��

��)L)@c�.���S�o�]�q:��V���pa���@��}8FT�yx�>�x�
�a�[83^�su_��U����ZÜP6j����0j�6���P�7T!���ܣ��~�Š3���6�Zobvw::MV{u��a5Z��A�E�2���]��k::����&�Q�Z�T&&�bko�:��v{g'�
��P*5[jL�Zs�j��ŸJ28j�M��;lf�������n�̶NM��B�Q�-�&�h%0���R��-�W�<�Hp���f*�	�X(="���A���f,r����,�%��k��kk�Sɳ3��NMx��P-��5�IΎO�^[�_[�_\KN�[;{���򙵵���Ӊ����Sg֦�KK������+���T �t*~���*v�f�N���;�X���%��g9&Ƴ�v�������%�W��}�����L�/��|σ��N;��3��g���O3��|H�P������k�{�_X��zp �
S��:���0�Leg�Swj�KI�aO}>�1ڧ���ުߦ�3U���Qz��I����<�뉳�~M|(�ъ�����R{�*;i/���e'x�,񨘟��SYy��ˎT{�`}j/%ʘ��RO��c��A���ɁS����<=/8(���r���9���Yq#2M�r:��G��˻Q?DQz�� E=9�o�#�Z��K��5V_W�Bd�Ex��,�K1�R�����K)	g��.�T𮁕
 Y�E"
���ͅ����A!�4)Uiț��
.��i��'�dǛ(\JN(��AåvRr�8i`��	�R��T@4�b!C|��������`J!�)�l�<��������R*�W���J��C�c?K��8�,�i@�"F�]>X� ��- ��)�R��.��CB��T�^K����M��B��L��F*�PB�T��|	�I}T���M7�\B^�gE&��%z�J�
��O(�S�SE�q�!J�F��PL�4�Ȼ���
�>�Rb��}@$�&�$N�@���FxcYx)ؔC��
��tV��!���;�oV
R���y*�SH�(����J�d��>�����`� [:���^�-���h�(��B�<%��ǔz�`	����K�P���I+!'N���R�:������$�Cx���'�)(/��Ğ Hj��c��
y�A*K�Yl!x9�R�@j'k|���B&C���	e�>��:�[�a�a��r�����R���R?�X����@� ��nA������i��	\x(q�D@�J"����`S�zy���d��~9�����"(s~�6�N�B��<1���2J.�c$����(���MǙ�@q8	��7��p�� ��\�@2�H2G� +�6L���e;"M�:�ǄJ9���VD��"�p"!_�y�$�p��L����:K����Cy�>[T�]�G��,���Q��~��P��q6@�8��"�|]����;�$�<�$/��W4m<�6�t�N6�4\�Gy�`��@N�H�,��=���`�o��8')_*�8�Iu���s�I&��R�l<@(�|�	�/V�K"���
.lV&���\fؔT����+�GH!�I ���Y���t��I+-��`R�I&�����i�zL~�4� �!��)�����i1�)�,b�`�~`��L1x딧�z$�T����If˹R;�,d�ci|���l`X���x��K�cR=�~��aq! ^�j����hD��%>���N?Ė�\4*�.a8BC���Lr)�z�f�g�( )rQ�D-D�/+�/N�� P%�`>�!-"H��'�R�J�܈r�>-�89�p�:E�}�Si�,���ZJ1� ���,�R�\���/XB�<�@,̇P&�\:9Q��Tv�zX_�ߟ<F�L���D .vH oG�(��@.�TN)�<�����@X�'��x!�<�h6dӓ�i|���Qy���~�+'-0���4O�� K��\�d�A�p����r��J �R`�Q���z|:,�nJ�M�A�q>�M%R�l��x��/�S<�W�z�<�l����#K.��@�^� �O����b�aax=J�p��.c�;8�����*��)�,
�,w�L�ib��������@Da�+x�?���3����������|�!���6�A������u��I# ���C���i�T@�r.	�\P�)�ʿ)�,�J�dʲP8���T�åR$�)�<[8E6=)I0�{��zP<AJe���\Fp[ɝ��-
���4�݂(e��8�|���|a�e����K�5��x-8eq��K��
DVؔ�R?ǋ�b��Đhb,p<�>��{K1�$�\�I&��R�l<�n`����=��ڟr)z����,R���g�?�0 �_
V*� y�`	!�
q�R9e3�;���9�M���%���I$�~LAx�f��O*�j�$�DI�!FJ�C�?�Ȧ�񞷏�?&b�ъ�;o��'�G����9J�4�v	���l��b^�n֟��
,�����E��D�����%�z�;΍�#T ��<� H �2�r
G��x�\���&�l0�z)����H�l`H����3����h�}��z K��`�S�sb	���l�/�>)	M�C��y�!�� 2�K�X?`Ʌ	 ��b�\�(+���P¤��bH '`EE ���%�fBz� "F �*��G��	�\�d/	�}(V
)��X��g���HS&.����0��4-Qz,�81���"p�J���	�W�ނf��H��t9m�KA(!�	Ez<��"����G�K� d��/��{��0"�N�8� � TR���V* )�+,������L<�����j�aS����4�`�<b���4��e����¦�R�2Ki<a(�s�@���O*E�+�	�`��	ؔ��)�S���R��,� ��3@ ���s1TREE  ������������������                              T,             L       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^�	<]��O*�,	))�")EB$�D�H��]�����H�$%EI�%K�H��%�$�T��H����ޙ�n�<��������9�w~s�7sgΜݱ���\�`�H�S�zg�6���E�E���A}� �Yzԑ��=��&��H䠆4�4NQ��{8�|��@'V j�?]���x�J쨷�6 @�Z�A`T���,�\7 <O�	����#�,�, TQ���1��$;b$y�浇v�zH� o,�@�1?U���2
1���P�O�����P^gM��	���������K��&�"���%K���Qσ�N�j�π��{��+F�a�ru3�84|��K�X��W�Qj 8�Kq%����ۍ�}g�i�S@��Y0 �����F����<P��&��҆��,> � Y1E�5">��V��0�G�b�8�쏤�fe��$'F8^&�1�C�8c�q��⃸�7�
q1$�"n4&E���d�o���h�Dġ�o	�tR��
Q�c`zv�n�X�o/�!Z��&�����yN�F��^���b!"�<����� �>7���W0Ή�U��Sò@�5�
��*�lȁ��Ac�,w4r�*'Ǔ�(�t�a�! }c�DN��r,�r"w��ݞ�_b]�GW[��ʝ�߫��ZĹ��;��7'9�C�6C��w�c���u��ڨfm��7�9�c�g=.��6}�kw�m�f����.*�yGe79�~q�療��	��N}\����M._��(����I_�r}w��}Kdy���)���I�8�r��(���e7��U�*�W�e��J��۹�<���t�^i놗Roo�w��ln�����ҫ���`&ۋ�s��3���q���ɺ����>�׫"&����I�<zZ�; �6����Ћ�%�ىB�D�� �R�U�ci>�c�8��q:J=�=�{�P��DrJ����7�ϛ����yU�b�d�����-��I�����\v�f}�U�����z��}��z��%'��j��0��
�~)a���������y�gt�D���z3onwZ�l�ͣ9��<n�'�si.ПwM\��̹����l��7�ܸ�����Q��C��^���q���t��"S�4O�z����4�4������	�{�=>���h<�U_}����<��B�
�E���ڤ�8�������"�g��=d׮6�7el�Ȃ3�ʍc1H�HsQC�nkb�\��tN?{2	T���v�]������>�<^hy�����A��*q�?C\^94%� ��P�Ն�m�@*�C���@��9@�(&�R6�*J�S
���,S xh�$�udcQE�@S#a@Iʺ�u���#\�q�u �E�pI���
���6��o���d���M;���|�Bs�vJ�S�45Qxdk�v��r�o�sxw��*�ߜ~�Ե�u��+�?���_r�j�}+�Cܛ�����?�:�lA�ëi�%U�y�6�W�-s�	��%�gJ\/��lL�7eѕQ�~��J�6vp�H�;�~^ɹU͂�G�"U��/���_��(�!��u|�SʋW��,��cU��Ew\s/0���4�t�l�����FbG�Sw�[>ܥq�S)q�oG�̅�6��$	���+3��ʩ\(�=�-�v�&�?�.�>@���*��HX�b�@�MP����1�M�*�(h�cZπ��P�|�Tk�Z����kA�Zʃ,�	���]�����\ n`�p���	�{�&$�L�: ��c��b�D�=�OB��t�4П�;`v��b�:�}�g^��×:����_垮yv� �@�{Vr���.-He�\��>��e͌���
�{��kEPU}y_������!����y퓔��n���YٗU���� �O�,�ͮ�s]�����}���5�+�������J����9`�{��v����%�KfD���T��z`/S��^!�Ni���&�^�ܖ�H��͝��(Zc����s�l>k�++��,���Vل�ʵ����1��h;2�-<^�!ʦ2����;\!�TڣA�c��/%	�6񲟝�`
VN%G�2��
u�������c@M��A
C֢^&B9i�y�H`,)�¡���b�S�1W���o�IH-�L������^x��"��L�S�_��8P�b]�b�ƺ��V�Y�:Yϳ�˿E�A啕7W=)�t~��c�4��6>� ņ�E��LC"F��W̞�^D{���71�
x^�(6WC�7a�D˗|��.wh��̲U��Z�%�og�8��ڱ�&EF#�R-�����s���LR)��v�@Q5놜i2�2чS�\�]��\�{�Gm�͓BO���ܔ,>��$�nڄ!�S��>����'3��r/�Tu�Q��T@1�/|���AK��2��R�c���l����r�Ł~y�B�&����`᫨����"M�np�).e�E��xt8*��s������u �A|1?D�n��4ĹL��	t8��/����1 ���cr���NS|�y ��s�7�B/U�z���~m?�c1Y@Ŀq�_�Y ��X�N 4��4��3�n�3^��,��I�q��pGf	x�G"��,��z!�C�2ꩠB~o!� �d�_BH������Jq)�����zT�f��U,9Yz�w�Õ�����y4�3��{J8utJ�n{�Qհ�dæ��)Ӈ���"*r�����L�y�M���9��J��xM�HÁ�k]�Xk��廬��&�ڲ9��a�N�>~��T��sW%�{Iڌ|����������:Ƈ6��x�X��<z������D��yI<�[���?g��f��GZF����,�=����r�_�0�{���q-���,Cά�����}Q�'��U����NC�8��ݧ��(�e5ta�%'L�x4������9
l.��U��ПB�ł�D�(@�,@i�!0`	e���E�ĕ�ZbJ1���V�$~p�JVD�E��t{��9�J*)�1�-�.�ځ��LF��D1#��% H���A�y!`���/���x��P�x���Vݲ�20au�Y�<�tZǹ�=6�r[
�+m��;�n9�ֺ�v��C�?��L��X�6�ϣq�S[\B�fs\B�����c�y���|ޔ_w9�a��x��}������ʭ_�>{��`vf����ئ�mU��e�=�=�,1#V<W�������9�.�4�-8.}Ҡ������ۜGe��X�����qG7>�;$d���²m3r7״��v��y�m���s��\j�j�u�5�ʰ�br�FC���C��O��M<�9 A���Q3&6��oo�˸��%��W��d��V��=�-�Od+0Z�<|������o���>4=l
��w��>h�p�-�MzNT���r��o_����I|��׿��u��,���q�E���k\	�SKm��w���b���=�O+�z;\DV��0���x~l�:Oh;�8}��+�Ia��$#�	!�B��v�QL��&e�Ym5HB��l���R�s<f�Q%Ѧj�Fb.�2'čE/tHq�]C\.�x'lX�SL��r�N � �~�<���x�]��-`i7�\W���(���x�L�rN��x(�:R(�9x|����ǹpmj����ӌ�O� �cl�+
60#}��@��PT�DV�
����@���B��e�E���h�ۨ�P��"���=��7W��>�vyf��f�F�BAy��m��n���h���2]��D�`��kS�6���P?�#z��EK,�|k�]��r���w�M����`x���\�w�m.�	XH��n����a��]_6��ޯn����;yc�8�x��k}�ȄgF;p
r)�xv��¼�g�-�(�o�#�´DnM��u��eu�O.Ͼި��C�I�Ywb�}��=aq���lc�w�<\��1q�`ͷ'��w6��0�����(�s��֟��F` ���q W�A�T\Q�,ǆݠ0:��+CJ'� ��8��`;�0��#�S*��w
zFt\y$𿋣Ո����P�6F�¢�a~6�	A`���Q'�W����l�rp(���IS���$c���IP��o@�La)���f=�tYB!I���׮+���4<�zE��{P�'U�t���[����׀>è!+��-�B�$@��C#Q�	� ��A��!o6�  *�ƪ��A����	���~��x�,p���X;���.T��\����� jh���A^^�5�X��D�1��g`�P#�ђ8�}�	��E�����{ �2a1���RR�9�8:8ގ�$���	�b�F����������s����e>�4R�����;3��,�8���V��)�-����}&�FV������~��_�VK����4=f|ڌ͆K8�~���N�@�S,|��
��z�#ڞ����U<Fr�-��]�Z�?O���厣;�Y7�JZv��d�u2r���U��V*��RO8��J��3���|=lrܻ�Mojݼ2�6:�88��Z�����EK3�+�^K;v:g�
���7�8D/�B�:����W���G����5j�"^H!��%� ڮ\|N����R?�] ��	�a����� �J�w�=#�)��*��>^�(���o�X���볿��l���N����}Ȩ���).@�gn|Z@"�������^���}è��O�Dt]`H<N�!�;N�s
�jd. ��OF������Ӽؙ 4P	����+�A� _�!l�Ha5tBT������ ���.�u�⪫9ɇ���J��`�!�]��P���Oq�;�B��GxE`61`�h�����"hDt)��d����3�c��\=��x�Y1� y�\=���C3���ޫe�:�g��#Y��r8*^�E�8հ� �c��##��z�?��=�vK����q�{���;�b�S�)?
�nG��2[��.Wt���N�xd��N�;f?�+4H�����h,e�y�q�c������y}�o"��4֑�����-�Q���cA��]^#6�������5��[~�ri?�r����X�Q���z�e;����u�N|5��V���ms�l<��=0�y�:��ǡ��MA^�D�ud*ؼC"��ƈ[�(��} @��G?��Y�$.
��.�a�~��ܱW� <X�
�L� ?�KxD�(� C�, � �j�7�i��`!mVÀ,�# �9�a���[h6�|#r�������6�8����ú��澝��}����{��N�ל����ѫ�f/ٽ�e��uv�j�h�d�l^���'0q+��|;aa1�I�ߵ���[�rX$[21�RQ�홛�W9-��,W2q���A"��]�:�u���)&�^"����4J�L4g�i�^qώ{�Άl������N۸�I���{�;�j�q��5��0gz���{t|����fw#sz"�g*�����e��,��ۧ�[}P*~�T�i���S�{�&�5~�;���s����~����j��Jh�T��)M�ӇXcr�`l�K 9j�FK�P�@�p��H"���>�.��f���8S-GW>'���ơ����������~
�J�_�}b!Y46�H��o�6~ɮo	ؙ <��Et�����x��\v��&�y���x�A94��}=�T�G,�(�,sPW�H�� �d ���
s�x��p��C��y߃��4+��G!%'�l<�$ "4���-�i)D9r�o���#�h��nu��-�=&�/�0"�l�HD�{`�������)����D4�=��^+i�ME�#�T�������>�|�uϣ.��������?h3�}�����H.H4`�����"��l��g�����<a��u�ߪ�E����g������ͤ���i���\�nJy�<ʜ[pq�����v&�}��pk*�?%���׎NR��]6�j[���"�B�8��D��ѹNǿ-��RR���x�'�=ӆ�B��O�������=�p㴐��ZE)j<ڵ�qp}d����k�ʲN��6���G�Z�S���?��݂?
�Dq���f��ON�&G��d2:QV!�֣E���2�Rd�;�g����h�)�-��8>H	��D~=&��/��D��5��r�eQŐSvp���߂��x�S#HP����i�s����4;I�!��9�vSc)�}A�܆�����{.*�%�꯺K����YL���q�c�uI����u�E�I����5����g/yx�j�S�%��W^ld���Ė�B�x(�rl�	�E~JmW �P������{����fm�l}�I���@f���$�׾�����#o 땰A �?�J��F�Q�1��r|*l�����,4�M��	���������K��&�"���A�`�,��f�G=�;az��?J�z�F��� ѻ\���uSr�1'��0q+����݅Rl$���y ����R��Ѧx")%S��* ���O�(�d3?ȅ�!�#I��
s)۾b j=\Fɾ�&��Sh�epP��'��Hv�B�Ce�|$����;1����k�\�}�;	j����~�y�mY��Z�D���r֤v���	�g�8���r9e�� �ᤘ<9̪C��i�b5�8hL�?Ș�Lad��h�.�!r��_	,@���f�0���
�9ѿ�>e,���P㐫��$�dp�
�[���8��4�a��O��ӡ��8"�J����X/G���i�W��ں}�u�K���2�2Њ�i�3dU9���]�f��vs��t��j,��X�e9N�=͙d?�3�n�L��Hto�۳��Ff=��*�l����S4/o|���;�3T���k���2=��t��˕⯉���R�+��-F��n��0>i�K�
o�EY:�NL_�3���-�f}����Vu�Ր�0��lE�k�K��?�t�]����y��wL�H��d�٢'�^���Ymw�O� �=��6��������~��=���o����d�����	��D!d"^B�f)�*�4�1`���8��5埸'��=��$���y��9��n��:#j暻��ex��_�<h�+V��K
8��XI><��]k�d�o^J��E�Y�%�SL7�-�\�ƩRݵ��[��R�bj�V�gz�|��p�W��|=�	�'�I+��˼s;����������-Xx@����L&��{��my�fM�+��8����#!u뢆N��U�#�ژ�T��J���̲�{Q�U�q����r2�RT�O�iʥ(���p�Э�L�z�f���7w�bݴs�.��¼�� �]d	c���0*�~�V�����k7�5T����wD���o� T��4�.�H%�A;q5����;s�־�E\�D�h9�Nd7e��l�Ch�=ڝ7��4���K�!�A'C
@49� ,���|�����'{,E��ЇsL"��K)+o#G�7p��\b�J��R<n�l)�Y�+S�V%�K�db��!SGZ��g�f?�w��gCR+����{�<���T���/r�Z�_�����F���;_?ʨ�o\_`���hyĝ���v����Q���t��`bZ����u�c�y|g���w~'��o�j��^|�qM��z��7�^
?�r��0�!�/�&ю�w��>y�"�e����q5�ws�6Κ^��>��4/��ٶ[�Mw�yp�����㎭[0��AK��d������)�[v�sD)��l�6�i��C�.�,���<��q6���T��9 <�r�%�(�>�ň6D\��_���%�"�e�`�	�@�[N /�� P���ь�|>l��tʫ?ǃ�n�]�K��
��\�3TTT�=N���c�Xs�;�>U�$A��zC}r:c��G��E���U��h�@����痟j�*m��5�<,s�_��m�e9�m���ܑ���ܹ�N�:�g���r��E�q�7Zg������fq>O$;�����l+�ܔt>�7Aէ���U����]�fh0����W���7�זp���5w�d������dz4��:;d����jnW�ٍL�<%�UGu���Ϻ105/�bj�c�ح���O�S��U�}�[1�ξ[����e�� �t��0�wS���3n�^//�q���H�������G*�Ѡ�1P�����K�x��NF0>��E�2��
u�������c@M��A
C֢^rI�t^�%K��phӭX_.��c���CZ~�4VII1���u������w�����b������k������]��$7_�U�-� �쮅�.^gMY���ݷylɳ�D�+��=3��5}R�����ڠ2Gb��s���G�*^O���a[����{qS��Ւ���4m�J���zEV���|��G�hQh֔3��Բ�M���~&�%�������W�x>��X����u�fy����ٙw���3��L�$"��Y&��,�"�3�-7���X��'P�G�Y�ީ��I�:��"j;-9r�cKi�	B�I�<p�|�*#k�D��t�p�����>�wɩ��RƏ�ä�I�:���ye%���D$� 
T"�̏�.�6���
Ș@�c���h`�Ob*il<� a;�J��h���0��`|3�ۺ)�B�� �#!s1q�!�:��u�0O�����A�XpE����
�B�K�����V B*a<������@=����/^9t�1�{���q:r�o��2��k誠�!{h)]48�����AS��誯#B�Cv�e_4�0�=Ǿb\������j#��?V�c-\4�շ`����ڭk�MMZ칤xe�ށ]>�l�FG�ږ��H]X��� ��GM��'��e�/٨�4��ё┽�X������w�h=<+�9p>�����.�8�Y.(Я[Ua�8��3ի����vP���(R)w��U��[��Rv���&?uwNۛ\�f&��j�ڗ��Rx0õweL���!�� ���3�e�F��\c�����h��3�[�D�.�c.9ar�TV�"�8r��9
l.��U��؟A�ł��{H��ێ����Y K(��ll��H|9�:��Mo5M�.�!%;ȅ�E��w���/4P�N��L��˝�����'�(f�:���������O����W��9Gt�	�cU���:~Ǆhq��gG��V~awP�6��P�-4�Ђ��ڬ6��|�9��k0�P�fFP�`��v>e�7��l}<n���%�|���-¿]j��+��Vx��4�wl���*I�ޞ����n��@��_L�%�q�"��V/�t����t��Q��m	�7����}^L��ҒG�G%b���O�J�r�;�ς�1���>���ö��_|;1k=k���vf�G��=���19����u�L������.�6���C���E�"}N �tR�ERQA�SD�7c�#�F�#�`/��u��]}�q%�Й}�A΅O��_�S�� �L��� ��ﬞ�[����{!�I�c4	O�y�Wk��GOiy;����з �9��Fz��ZBC���QO��h�O�P&0�>9�x��G)t���	<�0�3�jv�1[ �����_��nB�~�B��l>!�,>*`CX�*TϞ�a@@! ���[�u>��� k�e��Pw���N�}��s�����#6s
+7`�u�-95�u"zyl�<J8or�#�i�vZ��R������:�(%ڛ���n ��bD�+�$@����8�Wռ��K8�B�J�D� �!���D�<�z=U%����ٱ�;�CT|
W?'L�������)!_\��iZqi�U��vg��h.��6�x0�#��U�.݁!��K/^lTP�����P��7+�X��gf�WW7kO]M��
��ynŜ��?���9��W�m�ϒ�E�.��k���3�:��ҚKҲ5Ϫ�<y��}hU�Y��ls#�滫�m���]����<��r�\R�(97����/>+�X�'?ٶh1�ģ������|Y������]L�������y�|�=50Y���%G$]N��pt���c֬%�Z��G��8vD��11JnI�� g�b�HD�:�S4LK''���c ��@���AB|q���v a
jQ��)�hO��-��ԥ�`"+�b�����S����^O2��sP��*���8��k��$��%SD����E �B˩�H�#��1�¿�)|�'菵�Sڐ�����Va$�!��^�5�^�ES�k��R��e��_X�l,� Ր�{���8	4��D�&\ Đ�C�l�A��ƪ���yY�o�ς��
���|����� ;6����54UVV"��`�1t�b�%���d?K��9L�4� Gûs�!k ��Iq��Mg��T��	��˖��PW'�v�;����p�G�o�0q>��V��S�]��K�l�c�g����`ݳ���ŵ��Z���91@W��C�C| ��S�h᧧mK���Ջ_�d�~�-u��}����o��~7��J�٫�|[U�%1��m���)G�}�W��5߾���;�r��紴5y2/���dw�R�X��o����3���D6s���>�]�6:�m/ued7qT���Еݷ�࠲w�2�^�Ӛ�&/�g<�T䙰m�;Ӡgmj�ūBk�#J�I��j�"^H!��%� ڮ�v".���CI*�}�R�x��=�80�+�9����D5#����N�t�x���u.�Adז�q�#h��p�ݰ |�E��?Lj:�W8���0%����j��1?����qW�x�7�u��� ]�S�k�a�©��a���`Q~~2JLC.���	M�A**:*[cOh��vЭ+�6��q�q���3�m�`A<��k{����En 7П��"wg��� ��rӚz'������M��W�^�pi�ǈ.e7r��LC��{D��e\��)���~�֋�&����5�'��$��)S>���C��/C1��[��I�u��E]��y0������zoO�&��^���1��CCb���#�mO���Gt+�����0KuCG嵲I��R���n�r����ͣ}���5a).�f�V���l��XxH��▬S�I��Ί�~8��L=�[���R�L��@���#�}35��r�1��ȶO��w��,g��|�����ۛ�/�+�`�8������煑��(��6`���*,�Ǒx�k�"��DnLB�
u
AՊIf�`9O3��JTWA��U�L��01��Q��8�g&��G"�]��g�x1�#@�J!j�\�QF� Պ!���g"��B�⻦�!�:6���*�������� �t�����_�ګ�<�b���;�#�q��SZ|t�w;����kL(���%�-�j�9��q[J���Ǽ	M��,z)P��F���S���~�3�V2��S��zhSsʆ^��	�v��?����l�r���Z�Kù����m>�۬��������:��<�:ڱ�.S��փ�'V�gNgm�-��"?7�C�DLA��Z~���Dv�WYw���:ܜ%�Ɲ�.��,Wu�������<f�yLo�6��sIZ�����zn��٠��o�SS�o��H0��X>�	q�p +��b�@���q	 �A=�T����N*����yʆk1����m��>��9��^Ј6(~��3Іz�hRF�Cu�Y�rd��l�Ƽ�����ٖW���*(���|��{� �gP oG劌�^����v9�nP͡)�ф��	 ���,�L�+�]������0ꗬ~H�A�p�M�Ǌ0�VJ�����`�,Qn`��HD����o2��Rj��J�.L
u�p��YL}����� � �M����tp�� l 8v�(B8���o}���?{����-:�&}2��o�l��]��+��%s^�T���u�\Ί��ro$>%�~���F5�5�+�<_PTg98n�R]�'C��r��\�i�a��'ټ>f���.�>�[]_1᜶E�ϔ�#�q��/��o��)�)�s�c����vΩ��U&��o��:#�J��Ԩ��ςE���T*K4=��ٙr�6�Σ�|��Z2c2}�T�zC@����++rc�;.1�-t_��`�<�����:Y�x��+�\��O�8Q������c�œӡ��)� ��NԂU���蟠���)��!E&�#x<�Ȉ����"�ピ��A��c����H 6�1�P�4!�EC>8L���Oԣ~�:�a�[D��ҧ���� ,��(��$��}�����R��w�Ȼ��?.U�zNǦ^��#��i��:���!�K��p����������*�b%������'�9��~TǳBS�44Ʀkğ�97&p�X�|P�S� XD���C�
w�`L�h�JC����Y��M�@�Z�&��K��}<����� ����R�KQF!�B4���F-�v��pf��l�Q>N	��3�� ���m�MPE��=L�`�,��f�G=�;az��?J�z�F�����^CKl�' ;�bh&4�(��uC���k�'��`/�1����Q��o�����JQ����h=�y�cze�~
��7��uya�UU�6�z>��e���hA������� j)1�q��1�6qߣM?�h{��2�ŐB��ӊ��ݘY��[6#��7Ȃ8��|A:3EF�i�0=�m�~E����ž(�8h4�?�'Y ����՞h�.�!r��_	,@��mc�k`y��_%�r?��dx�q�UP��X�!~���`Y�h�0UN�'�Q��P���^��9:˱^Ȍ�8v�M���pe{��.��Q�3L��欐o� o�������z��Vy�C����n�ԗz�V_b���V��}긘����+����%�����Ώ�ߞV�������.���խ*�R�׻�}�����ؕ�m�����T��ṫ�S�m��=�sj���T/mn�����n߲����p�}�%s��>Z��ď�?���`)J�nt�-��$���M���]�&�=qZiv�7�9{��]�l����-�U���
���Q��O�^L/��P�NB&�%h�R�K��������Ha�Ȏ��^�.&�XejdY���	_���ʴYO��9�%��%�3��{?T&���AVW��N^�+b��ލ���lkY0̴l�c��Y�����%qWʖ�d�����<�a���J	��g��Wdв�����$��q��'D��Z'�f��＂o򗢬٬��,��I��5�^d��1�M�n�-U��J���T�o1� x�ǖ��ʱ3��r��!�Q�|a�
�!���7/��V��,�?l=��4�=�k$n�R~��ê'?��(��6� N�m3�Y�o��\.�	��P�CxQ�³������BuOu^[���YY �&E��I�c��@C1-^�Uh����D&�S�6q�a�D�9 Py��}Z�q����a�QL҃�n!�} �2a�H�^g]�ӯJ�]/�i���1@�Z[濐M�?�-��tP<����-� 41������d��R1σ�^�4n��0�◪*�w�yy��C�]��0w�W�Q�^�ʆ�W��H��V�̥�t�P�guG�r�����K��z��"�e"6B���Ju���0q���l[/���p�T�������ڝR<���p�L8��ж��u���4�o�?-����e���#����}�\�g�$�4�cg!{͚R!��hӢW�s3:��jNS�}�奧}U1�1~-U��0�Y[�9�1GҀ�UM��d��^|:%-�w�u�𵱚T�NC�;J�<�X}���8#��i�����kF�ǳ��Y�QT���Ҡ��� $����7uY)��Zm�iB�6Ձ��ോ9�Wp{z�=N���c��:m�$}�I��� �=�t�4П��}�߃xzĘ.1ɝ~p)`�ם#�`�Wɪ���8�x��q9}H[�|���S�㮃<��Z����0|���չ�Q���U�u4�?{�H�k�������j�l\��Sϥ��YBA;�ȵ�A2m<߲���_��l{㨾ٽ}7��Vo��R�!�Z�J>Eީ�wV;��Ӏ�Cp���=�����c�S}cN�������Z|�K�xobd�u��$օ
�\�u�$�P�E�z2А2��0���.#���28!|y��b���ۑ������G*�Ѡ�1P�����K�x��NF0>��E�2��
u�������c@M��A
C֢^�Dz�"��K$0���vS�q�|���l�+��~�UZe���Ż#���O�S:�oa]���a�+�����E�Юo��,kt�C�ޗ��b52���M)(wI�*����f(o8��3���*�Ç���h'�G����[>��5�m{E��S�~���_)z�U�)�3�/uZH��+�������#���mPX���������s�^snݾ�Y�bg,��V��L�.�S�q=e���+��Vq��kwRki�,�W��4b�<�2zA�c��HŦ�4�C*r%�e��9Gcݟ�@Ugp�ga�{��&��W�	3������)#�-�=&H�&�����E�|�xl�/��9,,=��?6T���aE\���@�Пݢʠ�Q9�������Pt�G(����0�ǃ��9q��?:N�|�Q���BI͡�����+�S�х\)��F�x7^��4����F�)t�%�����L̔��LB,�E<�kY�E��z��U�8���z��*!��I���b�|���s�e�A<T/c�#c����e�Òɂ�DO�!h�UA�C��޵��R6W3�!2��ѝ#��+�k9�5�i�vA�0۶�WzT��X*%-�yC�wg��ݢS��X$?̟p��q�=�)Lߚ�t^��{�VV��G�sS��4��^�����g�����/���;W��\+���?f�;�$>�uJ��Uw�g�o�vN�\�Qd��#�_:NR>f�Ƙ��ۍ�\��nVCk^�O�GsG�K���FCg���y��Z�Ҕ��v���C&*�J-�-�qA>�k)ܹ�*� �~X�:��M�տЏfp>C�U�A��0�&�Ah(�fӝ�a:�pN�ہ!m���?�g�}G� $!�~ it�EH�XB���#q��0�����V�$Cp�)�A.�.�OKr���0�ϾP�v.��@d����A;Ҫ��/�;FEoxPe���@sU�pv�;��M%�9=�цm�Ie�X�C��Q��v:d�#?��q�$gX�����m�ƻ/2�>�`�$�6�8�p�����\�glcV�ji��zu/���k���YO�6�_�α��<%�G�Ӛ���m�d� l�Z�~���Rt�	��0��>�U"`n��u����O�2u!K�-=`�1n�~�eJ�g���;K߽s��+Y�U����ly�#�29ѐ{�E1��y��B����3,s���]3���CW?�̐z�Ol�����I�G+_����1A0 k|5`܍3:q�!����ƴ���U�Żyjr��*�} "�� �5�v>uK�Q����?J�|ٞ�F�9�X;Nbķ�ux�ɳ��-CH��v�����¹'ɱ��F��'�x�f��>���'�8@��54�(w|t�49l�W�$+�A��ߥ�;oR>d��90�q�>����;x���&��DBh��TB�Q ���삆9�	�g��{8(/�^t K�u��Å�L��#!��]�h�ˌ>��h*���ni��ԥ���:x���y:�� X�b(�@a�I�v�� �aE��5t\�ޙ�Th�F��U���;��y(�>�� ��k��v�#��ϣ�Hg���ȫ~ģ��B���\��$2$q��6*`�þ�5P�#�� 4���u�ur�=�b�a#�����z�Of��5�ָ�?���5���R����³��'�'x��������T��&���}�ָ��Ʊ�M�Z��V��m$v��k��-��*����0b��s�N陕mVھ)n�5*�Y_�gu�I�l��M����z��r�+��3��X�8i.m-�y�_OF���E5"�O���|T�/�obl�#�Z���)�t4�~�g�0�۶sJ��aI�������SٟŻ��eʫ�jS;�m^jE,*�pPK1�>Ⱓttt h'����(%	0EQ�8 ��Ĥ�aSd�!b]��'���W�t: :��î�	S�!�L=��� L$ƈl�{��?�n�{�5��
\Me�i�	�;v���	2$)/垲ܗ'?~�m�B����N+� !j�P��(giJ+q���g��߼��c}��N�{COǅio�Gƃ�ҩ������&�ˀz�,��ڔ}/9
��d�_zPC���[��I��h�+ \ ގ��!o6�  �t�Uq�0Ah����Y��jk���_���3��J�d'
7�xR6e��)44t�����іh:ƒ�,jb�0�7��wJ�!ϱ$�Y7�aM�p+�-����D%}��8�/���Hɽ����9뢪�Ҿ�^���Oyw|kS
zn�)��t��fs�\������e�B�pϹyҌ{q�9ay�}gڭ,�.��%��nk����{��ؽgT��^�����<n��c���ڷs�7N����Z}����Gf���(;��q&��BC��Ks��o�p��nyπȷ����o��
�bٓ�V��Dڔ%�/�˨�G-����3m����KN?�ي�{��'^]2��c��찍���w�J����~��F�C�:����W���G����g���B�1/��vE ꁸpZ��eB��� �oӏ�a�g��D*o�7"zL�|ᴒ��˼��;w��c6�hk��.�n}q��"����^�M��_jgJ�W�j䩛�O����・�a���֟����x��_��	;N�C).%6$??%Ɠ6Ť��:��v&hP�����0�fb�I�nA\���nT1�?U1�����#�6p�W�"7WR�2؀�����;�{zn���l[/P�$����s�&\��W�^�p� +D��K�K�K0Z
X���|�K�)80���\��܎%��$�o��<QS%A7��߉�ǥ!Ru?ڣڿ�?#�Q�rɭKVO,z�qc��d�*�z&�}���æ�m��J�M[�eр�mo���C�����r	(Z/V��f(�Tt�$H��,1�S���c���Ǵ�W�����s��?�'?t����\��<�1�j��)_�9��rވeE��ٟ��7&7�ɛ�����Lb��\��TP��~^���Z}�ΰ��s�qu�]d�4��a?�:���������c�Z�{��\���r�/Y����%)�+��n6�j+�ƙ�G���ɠ�8\gfM
?�K����b$G���ש���%P��K��()�l)�o��C�A���=f������&�>��\�4���#���n�*�/��@3S���몞�Xu�iY�n�Y/oޞ9�()d�ۈ��bm�������J|)`Ǵ���K��er��o���x�=tķ律��"՗�B��Lx =����\w<d��^�I�U��f�jα�qo���ʁ�ܵK�p����M�nȁ������>�N�\�ÉEh��Fұ�f�W՛��-����r�,�h|��*/UHqi���MJ�s7�ļ�z�>���Ά��ʼkx.�W�h�d�y)Rf�Jo�]N�M����M��]��)M�ӇXcr�`l�K 9�ڡg�Z���ԡg��迏�(T����bpQ�z��t�s�}���	c�?�g� ڼ�K��U�{�?M�;`�`<B8d��D��^� .YmM4/�z
B�������w���L�����th��u����b%�Q>25F3 �l��ex���G�4�'�_�2�&�+���&���ab�� ��mQ����-F�'���`�#I�M*E�1 ��˾�����Χ��C � *�0=Gh�L�d���uD�7�FӁ��7j9.s��"�����Sk���z�GȖ�mm>+��=f���u��	+�t�7���Tl�ۗ�/�s{W����h[���̑1���3�r8'�,���q�����m�b	q�����u4�K�6~�r�,Y�v�丒�L�8��?W\��?�]�]����V{�j�C�&	r��9/j]�,B����V�<�\�{�|�>��nӷ�L�K��~Sr���7���������c,�k4O��	?���w���������?��ӡ[W�O�>&���.��'�C�#@I�;:<�!O��|�br�(�d�	o��A�h##�~�k�d<�R�7r�_D�I	>��`�ch���T䲨b��);���z�oAUG<r?�w��>-��I0)�Dbb�d�E����XJ��C���ߡh90�vk��t��]���j}��a���B=p�J��&�`���ȧu��e�'T� <�r��
�'���Q�0\p�v�q	0O�(E���'r(�&��E�B�O���W��[:�?`�cI^�=�y�.����yv4�?����T)~��B�!�h0��S�M_������B���5�ѿ�����Z�T�{�ܖ�U$��6�FɒoFz����Z�3�ĩ���h�Q�^�d����ڣ���02����h�qQ�S_2`�~�`�	�p��� XCn�k��pu�4�4��y���T��d��B�К����aYu�?��a��y%���x-	t���>T?[��ѿ+���=1�Q�V@1�]��Z�JC�A���{"�U4�m䳍A]d�h���'���
�@�I�O�2[��}�O7 �8G���P���&�����yN�F������b!"�<����� ��bs�_�c����r0��dx�q�UP�=X�!r@vS[$�,w4r�*'Ǔ�(�t�a���ac�DN��r,�j w���oGU\�Ɖ�賋_1Yr������O\����o���R%�p!�Ur׋�M����,�-,7��`��KY�5_6�Z�p��딚��9'��n��|�Ґ�M���P���ʔ2��w��r\c��ɾEqrU��نZE^��7ڨ��e�w�4i�ubQ�w��/9���gO���^V��'�{���;�ї��iV<�-%�K�XK=<ų�&F|����e��s�K��<k������s=�)<���]?u�Jp����e�X=���o����d�����	��D!d"^B�f)�*�4�1`���8R�N�5��t�����:V�(}Yտ?\HQ�$%�K����}�r%�lӌ������]�����l�5Y�&d�8=ǲ���̤�,���>���_/%��$k���{�D<�mf��51�>�Y���/���V��esx���"ݰ�S�BҒ[�B�{�W�����PW�P��yOj��[�R#U�j2�&����{�-=�o����z�G��R$�M�Fef��T�|��/b�w� e+sn�\p|��s�5-����ħ-J�q��a7�T�u��^�*k���ؿ���d	cJ>�k�����Y}*?�Tv`P��{��^�ev��=��vh�Aq���s$�tTs1�����RB�TR�Z�~� ��	�?Wh -�`����O6�V�'@�[���9�@;g��c 4�k���X�P�;���Hk`�S H���w�ĩxZ�&Q<IϬL�)�s�wk�1y%%c�t�.�9�J���X~����^����;��ާ1�㸨0U��{,mf����+~p`_⣀'�u�T�DJ��v�#R���˓R����Ha�Y].|7�ʐ�ev�`Fc�ȇ�y�un&h�ٺ?�+�;��ٞ��	/�űpǩ1U��Id������,��Z��k��άtX),1=㠵A�O�o���;.�'�:��z�G��Ƿ����5mK��-K o�A�s��W��>�+��z�ެ6��~�D����˴Y$���b}i:V�ʟ�;h��H��W�����8��WC�u5F���3�b|#�_�c˿CO(4�t
��c���%چD>6��R1�p�PC���ف�l<�	�C�g�����=N���c�KPW��O�#ɭ�0;Q�Dߜ�ΘF��A��v�9�1wg��j]vTq8}_���cիm���߱M�?����^����"bA�"��{��"v+ ��"����;HG���{�#6슽�^�o���ٳ��y�s��~����$�I2�g7�L&Y�u]��]3_]9 |t�����
���������(X]�ԙ��P�e�������fӍʫ�IՌ�"�,}}���Y�M���tp�����wA�Ǫ��sv�O
����i�h�ږy�j����}qI'��?4�r���<�j��<�����fqLB<���A'��o�>]����n�^=�e��=�I����xa�`�������o�'NJ�ԦvN�Z�Yc}�$`� �U���������5I�w���z{p��K�E��&���ʸTA9�T"��G��Avт��#��$Xq�-�wRc	��e�"�q�'�Bn�Q�p���7��������Ӝz�n��{DZu���U�g����7EӾ\q[:��6����g}W�98��kSͥ�y	�;�|T�‧o7�*3�y�X�����Wh���vY�����}ʾz���|�c�D~�ӓ�j�
	�]��q��QCU�Ɖ��~/��5A}�-��}�n?8����,��Y�_�˵�h���9�v�W��*g*�]Y�h咯-�����]��)��>���c��N��ߥ::�������ۯ͝�>�-. �����SV�?#���B��W�\�mB�p3���kI�|>���>x���P��|��HQr����%3�+).2�R<��Q{�������0- #Ѝ��k��L�,��HBy�/`v
��6;�X���<�e,J�@Й��(AE* ���ۖ�L�I��ȅ��x��A_x�0��/����q��?��`'fտI� ��ѧC�T��}�)�(��FI`���\1�z�?�'pt�����0#�綽���������c/Ť�
�G���8��i}��{��o��{�JWk��G�N�S����;�)�˝ou>8?S������7�P�X�'����r��D/��J��D.
��Yol�v���=�ʹuq�H�3D~�t��g�r�����7�x��:^��а~}�tް�ԜQ�=�w���y��d���Y�Nȴ�5���t1��q�n���z�����4�����&iŶ�r�3ӌ˯["��eh3P�B{��p��MLs����ś]r#��[�y|mчǾ�}~�0k΋�}����Mjg�/�`��<MO�����6��m��	,�vtC-҃#m�菙�w�y�RQ�����uYi�I�� q��3Y�0���ح��fP�y��p���ٳ��K����`�l��"�.g<�7[�����!~E7[���9��� 0�
��} ��� }]bJ���;I�x���r ��v�'�V���Nri������7秭��G��g���^?6j�cZ�'|���?���p��w�UǛ�y��2����+�;����N����׌�2���3u��َ�+c�|�^U|���c�&�5�z���)��y�*�{��>�o�����9�����"ޥ�#���YG�>��M,�����uf�R�;���%Ϟ:��z��y�H���$�:���l�ڼ�:�~�����1y���Y�k㲮��L�*a��`���N���JD���F��l㉷4n���� �Aq!#r�#Hj����A��`�Z �3N�P����?�!�>���[N�v.��N��z�*��N3���զw?^o�Z�މk�j;�3H�ym�6 [��~�ͼ��4��'�����d4F'^�P`�,l(�v���ʎYx��Qz�a���ж�޿#�r�lp#-�)�Ԅ�1�5�^p���1��7ý�3 [_��@� D�fN�U`��Q�ߧ�����7��Cy���r�nH�bJ�ˎ}	�r tȨ�'�7aV�u �&N�C�+�۰�� `׺���x=���>`r4@[W@�D�p��$H�A���=(�DkL�����I��|�6�46`3�ڝ�!1�t�1$�`����o=f��C1gc+Z/ؘ����G����;�-�?���$V���{��h��W/��?s.����͜1���oO_Y�)��c���~u��f�K�|�����������?�X��R,�Mɒ��ӥ�Ɍ,s��.�3|����e�c%�cL�L�F��j(.��%7|[���%iѓҭ�e���t�c��C��W�zB��x��0�f���ׯO�mVz��Lݲ�H��r��;���ctAt�H�ÏT�x_�"Y������k�͹f#��fO����{.�:��ڌ�G�{����,���$�M��M1 &F�>��ێ/V�bP ua>@��$�U �\��w䎶׭كU�����Cz�q/֍�B(o@-;� �{�6K�7�X.I)�_�oO�X��v�d�p�`��꽊��U:K5�����_�ea��X0I��l����樂�}�yi�1��C�;Ϋ��]]S�a��F�# ��P��$�$��#���Gc6�	c>���dp��8+�u
 8-#O�|��L�[@����� ח�ڑ�5sp�fȺ��>eg��ŝ�jA���h��MZZZkP2e��bcK4��~��0v���K%��@��SƴSmd:��������,-ߦ|9Yu2�n�rK{�M�.���:[k��V��c3|���
�:���ܮC�ׇi\�)���ٌW�z�ߒ���಻��^����V:�W�|�j�|��H���u�~��Qy�~�\��VQ��[D.���w쒙l�ܱ9]d��YKr_�n[��T�uA�&�G��;����{m2��u��i�#X	�ؖ~|^�o���'�7ņ��*=|�[a��]}j�نϚ���[��du�יO��^��y����,�Ag��!�n��~�uljk�Q� ˵W�o��#�vE&��"�gr8lW��I��"C(|b���`� +�i�hOR���3��>&�Gt����Ȍ֣{��Y�d� ;"�x�V��u�&[��!n>�	`�ϙw�~8H����v��}О�hn��"��'A����k����R��Q �8rq~_�r�#��	R5A�5�8��g��kD�܋��f�%1L�,-�HZ����<��� �/��H���ރ/�g�����1�ӻ��Z�6��W�Zk�ς���t�<Zi�(}J�������f����Z���/ԱFu֑y�%O����V�]����<k���&��\u�y�˦�G�Ѻ�P+e�� �,W{i[�x�0��y*�&����Z`.�'�yJݸ�:�*�>y��[W�����xҭF����wOύ+�-�%<��D���1/ܲ��
��j:A����ő�ZG��t���a��A���
�T-ޜ�1:5>�Vi����k"/�	O���G�f��l_I�f�����ڝVħ����+1wp�����.s�D�����Q.�4��s��F�&[z l��uє%|Q�e�X�����`�o7Y��臃�w��8���[�t?&0�x���a�ɰ�{ Q��x��� >�n����]=?N"P�th�x`�̚PSuF|&�]������[o��Q*z�_�h����H��yk��~�e/��`��-�%�-gn�S�w?%�N���*&�V2&�8{lv\\��q��E��}�|m�qm��QY#&k��o�i�T}��c.���t{�5�i��oU}?{|����*{
ub|�;�	�?kT[y��繲I���EU	{��~�襏eo�Lt��d�~��˯�g�>�N����z��yf[f��y�b�8������YMz�8� 3p����V����.�;W���mrS��X��^N/Y噲bvM�j����v�'�l����~j;���[����?�0�(BuP�ꐓ��#� 2|R�- ڴX�!{<��><e�&%J/���5O��s��.(���q�筰�a7W >��}�,��$`b�_W�q�n�U ������?������٘�f7��>��ݒ��� ��i� w���d�U�%��X�����]@�h�� ���.�ܛLfL���@��ݤ�a�D
���wY�E�:�x��L�&���� ��*�}�A�Є���� ~����%G��Y��ۃ ~����9����9Q=\��ȧ:����iXU�c������;]�}�����U
�wM~>��1ߧ������U������~�$F�_=A5�(�T������5��u�b��� �oN��jr�:K��jq��'�����qbӜ��w�Y���S��ظb�1�'��/q���	%+�^b7��������N���(ԩ袅��%�K�+&߹�r[�V��MK�F�>S��U�������/������c蒓'GM��l0�o������Z�<�\wٱ{������eU��Og\�?
�Ź���ڜ?�tv9>^�����RH�;6
��i6�d>\r�;@�౑�O�H�~|P����F2_���6
@
>#�aJ;�h6�8q@�':W�@��f�����*���8��6��L��R���dɌ��M��Q*ge�����������g=�Ʌ�Q`��z0&����7�ϰY�!��pz�f�qZ�d'\�S"&�]���3�.t�-�M�|�1��8'́0 �����y�5�ណ���3 �6�10s"�\X�����`<\V!#z��N���T��2;
Ha����R�9��"=�r�p�SF2ܒ(#*����������ei'� ��&�;^*��{�����%���`�t5����1��\�!����@b�*I�kp�Nͬ~�L���]G�W)l`_0��tCL��N��<Q����+�$�/
���`��pڡ�j�@%�n���_&N��v��&ŝP���q��y�Rx��#{�x��V�e!�?KR�!��C�0$��vC�ar�N}�[�c�9��}{�r��S�@��8��	�:8J�?�uBUiåu��Bɇt��T@���*�ՠ�
�-ѿ��̒RM ���F�q���#�Gf,�z���1rs��S���tv�]؁��W�
<�S1&syEP*�	�>���^�'H���ȡE����^-0W�s"�ޖ�ܓ�~�V�\\�<m�%��YK�_��^�zF�L�T3���~U��{��/N�s��͝~Y��g=Ͻ�R����>D��+���5����!���~�z���;.���&<7*�{]����OI�>j��cՐ7��f��ۼ�IA�Pk��y+�������r�a=����,,������^�}�	V�WF���ݠ�]wT���nv\��3����(��?Un�\p��ُ�u6�?�96t�Q�)�[�@���r�0�l^��];7���p��)}�TN�y.�9M_*U3;��z�8��ŭ�5���}����m����}&&l7��#���;k�_��
�������2mi��NE��#o���3g�����M��e���\���p���.�şt�o�s�c��w�gO�A���)5�K�U=���t�%�x���N�%��y�J�T�-j;�oR��{>�e�̛�:�k�}�;j��Af��Y;ߺ�1����tn�VRs
������gE;�6;�����Q�'���}�x.5�rb������.��3N˙̾"s��F���� ����{��A|]��F�'�9_���ze��W��GޅF��7����]����z���lZ� �X���ũf���{�����ݖ�r!�+cZ��,.�]bK���p��a(������l�D�8hҙ&3w�E�f'������M��]��U�o��k��R�A�N��_w�D�ġGN�x���^:��R�IjQ*㿌��3/g��.��u,/����cY�҅�w�+����L�������`������V'�@tYh^���RNM�98��ʢ��}F�2��0�پM�^��e��q+G���h�Csn�ԓ7U��7_���]Ŗ�5#�ܹ��Ǔu���I9?���������^�K�sӗ����c�E7�߃>�S]�۰�x℄�i����%�U��0�U�qC�y��kΑ�-�)��ݵ���2��>��y���~>�	��ӝ�\r�a%t���7d�p0�<�R��ƹ4l��9���y�p�e4���p|���C0 (�&���(K�l��6�=P)p��X�_��0&�G�B`#��Ϸ��^P|*�Z�3�%O˱�=q���_���r�*x�����7���,�%�2�7/7��h���U��6~��xQg����	j��7}��1oR�n�*+��8�)ê�f��:o?i���,)����u�y�DK����2z/S+�4���&�	竺�Nl����nBXI}S��/�Bko�>?�Z�{�y)��WooW��0}NID�k=.���!�Ng���>��7��W�IVf�����t:���{JlԈ�����l�d?|�o���Fd�۴�2�c��f�nz]��X����gk���a"��ߪ��?G�ZA����<Vo��� �	�H��d�~W�*T?���x�H�	S�]�ຨ ��t�,	Vj��x�
� �^�)r��y������:՘�yL��,۲y���]���|�kBIn�-���7Jw��&,j.�KZc�Hӣ�&�+嗸L�s�(���;餞Ou�4O�}��|�w_w�Ώ_p�jn��r������\�:fB��͝�+�R�>$��떙k�vt*��9�UO��#�-���,�n�T-6V��0���w�L���rtUjA���ہ��5l�=��̩g���ɷO[�I�?3v�tՖa_���&�to����7.e���\P�.jk����)w�[?g���]�߀���Y��x٢���
J���)�]2	�\�mB�p3���kI�|>���:t_���r�x ���R�t�@��@Fɇ� L���L̎��=������~�I���0$�1�.�`v
��6a�\�@�~�̛bQ����F	r�I�����	,Ap�*i	�`2)H����vl��W,���&��R��3�8Ɣ�����)�?��52�zZl��?�'pt������綽����V�Khl��<+Xy��zM�s�2z�"]��n�r%�
��>�� �gR�,�{��dp[� ��Tn�窰k�z}�����L���=5�:���s|Ɠ���V(y�}`��|��M����{�Iޕ*__�L��vK��O"��%��1kЀ�Sz�Twzp�k���Q.��_תN�z��S�;ҝ�^���k�7��!;Ҷ���$y*t���W����/~r{�D����~9���s�y̓+���=�+��e���V�-����wl�|wͯ�s�dc�*�>�#�#�7���T�A
�45<q��f���ϟh�"O}ˡ�wQK���`�H[%�c��� K����E�&����B��4@�eo�%2���PB�Tn^�9�)�wF�� E��=�������?Na�"I�������p���,�c��8����j���G�K��+�H��=ӡ����~]��w��.r2g����G�뭶�7��Ժsӈĕ�c�7v[��X������:�_���9i'�mOYJZ|��y}���'���%��˷}��w]����6����b��W~�qM�ڤet�M�r���Jx�{n���-#�����sh�Z���к�����Mח�5�H�o�:�:0����>Ӟ^C��_~�~Oh����t�9�|������s���;q/A5b���%�N�=�h5�6p�ޘ�uƗ6��5�N}�e˗#I~��� x��j��������A�kz3w=����=�悄���K: 4� �L�Ng�w�����E�QE��� ����
6Ƶؤ�~��I5ܢe�f�t��P����J���b�=>��k��٢q#���䠝{�)����ᠵ�y���Fsw���n�=��Y�t#� )ϡm���kn�ǽ���k�V4��C��>C�^C�����nc�x��z�d"q�
�.2�`c#&±� E)ɐT�#I=�z���uTY����ȃo�[bP'EFq==���� 8E��% ��*�0�1Fg�k`����d�K�e�`$4���7����vHE���n�ʓ�Јv
�.���O`9<V���I�������V8�����+�l?C�,'zZ/���ͯ\|D'96��f��]�f��JQg����T��;ҦNnÕS������5����������T�_]F8u�d��ז���M?Z��y\�����{������z���>�oi*�~�x���#�&e�E�<�v�Y7G�pԺn)�7]t�a�2+|�����sO]�>0a��%�i%ҵ��/'[�9�4Ψ�^���5y��7��c���[�0�b�c};v)jy8-�_�C#�j���|tu�h���5�wͫ���b�G�����N�J��ع���6q��n�k:�H��0`8C�8�"��掶�[2:V�ʩ���� �u~H2N��<��- ��`��&������$��� �I�5�c����,��F�2�7��kǷ�WL~�< �� � �e�<N/=#i�7_�f'A�Q� ��q�7��g�6٦[-A;�o��|O�t�@�G?&�À�|�+$Q��8�յ��b3�
���g>���dp���D�4�)��5��O6�	�5��<�LtL����j�~���W��>eg����Y$�	H�!hh���g%J��1<@ll��?��@BƎs�@8@��p*�a�d��Lg�O��D��eM�g����ɂ��I�N���Q��f���o"�����o����A�1M_�>Xx꠾��{n�_�����x��؟n�7�g���r��^�e��$�����_vCL����筻|B�Ai����ׄŤn��k��=Z�6���a�t�քS�"7�xy��>�0��۩���w,�ҥVx�⼱q��urS��k�S�}�������QK����cD��/]y5���tӢ�=���d���תW�h�������įU��4n/}غ�x���܁�:6���p���+�7�5!L��L�T���D�]�ǒ�E��P�[�P�Юp���O%� ��^�6C�{�����k,U�� �~/��G�	\�����$}��'���n`����"��݁+�jl���׾B�7�r|47LMs� �g
�Lg�54n���R���g._�"��{�	R5A�a"��]�B�P�)<�0�<���������w��v6��"�Z<���}zt������ɫ���ǕN8�F�WR�:�	x�	(�`�4S�>%|s��R�8lUi9�y�:"�	�~&�iܵٛ,l�'{f��E/WY���h<p��mv%k�Nk�Q����뼰���N�D�����5�n�����?
Bն�G��Wmgwjn�-ǲ~ݵ��	��8��$��F|�}M~�̎�=���%����_�J������]�Y��7�N���r�w
���{�����2�l����Fx�*�Q6�h����jچo��;��^�]��'����ߔV朾�i5�g���F��GV�k�:�9��|�v�ܷq�\@���Z2�I���Jo��k<�V`����	ö ��
��ƾ��DH�:�����/ �t$G���M���G�]��^�aCMƂAt �3/���'w��#�\��y@�����pN���j��?9=���^����gZ��Z�ە�/,ԽuU�|����S�.^O0jX�JdS������������~�i��RMj�%[�v�����ֵ.��[M�9��kI4����Sx��H�����*�S�ݴ���Z��q�,b����	�s[4'����k^��~2�����E�_Z���A�o�4���z�u��+#�L�fZ�vx =�e>WC���|x�׫ak���7->�kp���#���]�l�:?�����)���Xҵu��J��Q.�}L���Qf}��m���}6�{kw?��bql� ����&CE�*bSr23ud@�]ܫ���X�1�aW�'���b{���K@���h����Ϲ@]�^�R��~���(;v[`���]\���v����C��O�7������%�ۃ�� �槁)�6�B�^�R;'�����惈�`+\�\ �:&i`Kĭ�_.-$�w�&8��v��U���"��7�T+��S��I��� �$����:�z�q���ͧ�����KQ�k�+a�t3��rCs8P7���(9h���K	9�7X#��A�_v���cWS�:�\�};t˃���Y[�,̔���������.�]��y������;��x���܃gVZ&�yJN��^{�zs��C���X�_u���C��ؙ������*{W��$���mc.n�O��^>�Lh�M��íϩݗx*�H[�ǡl�}l��K|��۸�|gm�'��/�6�\�r���I�;�+�j6��h��{���%�a����̞~ e{������ZºK�+�ȯV��>��='�$�|�24���w���g>���$��s�->g�9P��r8|�$��ѹ��w�����.��\�N�*xld��S�-R�B�n���\&�6
@
� ��2��6�i�lBq‬Ot�v�'����.�|N�2$�������� \�ٓѻ�N%�e=D�%������ſ�F�N���+,A�Jg�$�?�ì���a��E�vC�zb��z�8٬�A�G ���M�l��{Dj�v��4~w@�;�	�M�=*j 0s���A���~�1�~0Ѝ�/[1o���ѕ��e��P2҇�����T��An���)\1�4���A��q}�8a$��-�2��8.]�N �kI^�v�~o����������߉��Z��p���g�q�) ��ߘ��/ $�L�`�.���0�G������p]��q�������G�S��DK����Aj!}6�P�G5X��_���S�����9T�*0�����t��G��؆_Y����hؠ�?/�q�OQ
ק�t���MҎv$� �AN��r.l#i��w&���CׇOxkޫvE_�f��C������h��w&��p8��|넪҆Kkw�I�<��H�%�&�̑�|U`�A��[��%{PM ���F�q��R�?2�b��&N��8Fn�q
4��Ύc�ˡ�˹���+�]ͩ�)F^���o/ᕃ�>Q]{�]薳��ͦ���X�>�hԺ5�5�n~f��~�Q�ၡV�nl5=��}ه�ʿ�����1(kkn�O*W��vo������%����F�~ց�S���z��J-ŤY��D���c��,�]�6�ݸr���d�O��}���=δ���V���-]�P4�R*t@��9:��������n�)��k��oP{��Mh�E�u?���~z�Jo������@��#B�䘌U��cm�Ī���)�=�l�6y���X�ѕ�SG[»]t��+�������Mеs3��L8��g�L儘������q�2/v��ۥ�E��Ƿ�UӼj�9�{��H�!���~>`�W�>�J�3�]ު(�j����~*�����
��3P��h��C��-ݛ7������W�|�����J�V֯�.�s��q]E��Gh�=9�*�n�״���'ky.l)e�o�j���-�)���;Xa^?�[�|	����D�����N���l�Z7_mW⏧�b�ߓ)�Z��خ�g�>ѩ��ҽo}˂�yw/��X�5䀬�䩻��i�=���9T�|�mX��4oy�o��Q!PH�/
�̒�v�nbs#�#�c��'��Q��������K#+�<x�ǞԒ�0�(�@��s�Zsj��a$�&ޓ��)3��+_wS�F��xp�{�}�]_<T���㰳K��q�����矉�}�[�(ӳԩu�����7�-د����O���<�Mg���K���H�����o|.}x�cl9w���o/������+���w�v�n�HS��eQ��գ�O][���e���؍9�r���k$�X8�ӐC"t��n^�7b�������R�<.����^�������>��9�uQ����m��7��W2v�~!�V�
�M����=����[-G���}H��|z,{�ȣ������*�{�/�*��Th��mH��q�d;���]����FW�~q�H���+��;��m_�
���C��Ͼ�Z�p�0Lh�u=wV\��g\�?[�8��<Vμ;�<�RХV��A�||!�A>Ϛ�1(��� >��Z�� h��"��Q�&�	��<��\ze�%ƺ� ��ÅCh������U!xA��#���i9�0���f)��.��Ҁ�>�m�|*+h����riuTA��.�=Aq�ʺiq���T[��q�ߪ�����G{D�&�Mp�����`f�do�p��i���8��<���ӊ1'�>n2[;~ހ�
KB2����:������C7;U8���V���kM��Tu����z:���I�W�xvЈ>�~���oąr����:�׋���3���b#-;	�uy����������k_;�n)���<�V��0���3i���~;�Iӭ��~푥oԾ^�|E�m�����0��ޏ+ٛ�S�aB��w���z{p��K�E��&���ʸT����D��F*L����EG>��eI��P[d;��Y�2O�����%Z��)� �p��m�2���w4n�r��b���6u/?+N�D�
��;e>�L�2���K��U��^�~y�'���%c�֙��~BM2~��~�ߩnZ_��#%~[|γY��ʱ+��/�aƽ��*���s�xҳ��k���u�i�gz���;w��	��{g���o�]�86^�z�#�V{�M�y�}�孷����g�D[����x���^�n;�5=������1���y\n�����C��5\�k���f�^B��K9`����������|��"����l�����^(@��j��˹M�n&y�@~�"	��']S��9�V�]�'�o��NbxEg�2��ET &`.�-�y0;��<1$&&��� F�GX"t��a&H�c$b��8�/`v
��6�P��)��$�LLbQ����F	��AJ�v�5[�I���3z�ÝB��O�v$]H�U�b{�A�@�µ�p�N����ܓ=���<��y�Qp�.x*�9 �MO>���o㑻Ì�����O6AC����N��<+Xy�����[�~���gU�y��*o7��k�gvT���S7�W��/uG��ѳ�Bw�2�G��ߚ&:�� ��)�t�]��ǯ?*9���ܫ�W^��~,�)��;p|w}��k���C�<����_��ϯG?M\ Ӥ�No�]!˙��6�M��m�4���+"=?>vu4�|qzӈqyj�ʛ?28��͊�ǛG�ս�(�&9�����������>|ٷQ�e���vhpR��3�ɉ�����t���(��{ʎ�<�����D.n2P;�}���ijx�e̎���D�j��'�z�dHF��U�?f�߁�=JE!�gSz}8�t�������(��;K	YS�y��p���ٳ��K���%�X�/��Oظ�����v���C۹o��<6 o]0m� �'5��M�#��<�Y_������:�Ď�,H���� E��҃gխ>bgi1u�Ϲσl�8Ln�d4��A���KM����NY�>�v�A⊊SE�Je4�.�3��V8�����P��,����~TT���i���A���g�Y\�[���)��~ƭ>ڇ}6�u���٩En`/�c��&����N~i�wL���=��;N��}�]�����ğ�ܽӻ�wЏ�s�^>9�A�[��d�x�u_��sԌ�s�}ڨ��5JB�}Ӂy�a�:��l>�{.�����{���IW~��R�k�%P���u�^����� ɛ�H���[z;��8��J���"	����섑�B�?X���'q%[���z0?y�����<o �dD�J6r�B���qR��}��d>.c���N	���op��_�9�@[?��t�w:�|�i�3�֔s ��Q#���r�����f�%CVq��'�`y@�sh[`��Mc1!�+��(����_�D�+LPz��J��OWe�g�>����� ��w�NKpa8�S���r��(I��rucIJ�w�Z1 I1�K.���q=���d �5`5�^���ߒ��~�Bz�^�ƥ����Ux?Y-�6���hH�Aܴ:�6����]��k�(��c�7�=��a$���("'�`��X ����[���0~6 �7����C��¥����ե�����qei�	�c�;n��e�i6g���S�қ�7��J��2f������wc.�����%�����P��0s�H�,��K+�
��׾v��������`������r+�WoxRj2-|֔�)���Vm�,\�)���§w/��7J�y��Y�o
c�I��'DS���Y����a��V�i�����ܢ^>1���z!];�hG�������Q�CN�}�����'��>*�ޣ������5���u��$F���ý7�kVZ+++ ��Y��H���@*�f@yQ�������w�G�լr� �8<@'G�҃��X�Î��o��M3	����	L�����cJ��Ͱ��DIm��u���* �U�L�Y�z�1k	p��M> �p�I���`n�B۩�hL�R5��Y�1
�_�`7r��k�YXz(�ڊ�|D�cB=8H5�\@V:ı��Ľ`�/���"��-�@2p��D�4�) ��Ɗ<=�ɦ3�g�o��z�8~��hG�����57�hC}���܌W,�V�4��'{#44%&&
�d���Ɩh���T!ta�8���JF�QP�]�!1Smd:�Kv����j�?�A�/ߔ%�I�z��(a��F�b�LT�wK��*������ߵ�FF˭�>_Q~���5�Tz�7�pb����e�&w&���Y�[���<c$�h��鐘�8�r��)ϫ����V7�9It���'ɣߘ�y���\={�#;Q[��=�2�����4����{�W������[�y��d��9�(٦�=��v?��׻ƙ�w^�]g�.nH������mIYќ;��Lφy�%��;V-8<�V�a����?�Ϝe�ad����o�F��^�t[�N���#�^Ǧ�6(;7���f��+2��<�É`�"h~LRT�C1������K���.O[�癢���������/T�_����s;�%��ƇM������'C���cn���K�Y��K�|�# �A���;���/=)s;�m��1a�'A����kh���R��D��w���)ʜ�Ek+�kpjB1�A�Y�3�҉���`*�8��I�%h&��1&�[N�nl�W�Q�����@���ߐ�:�[[�,
ğ�Y�J�u=�0�.P:	�mZi�(}J����,qH[���e�e6l�*�C�ȇ��Dw���~��h�����wt��]�J�Gd	�j��t/T�+�tN��=�gB��=7Kkw5w]"~w�CIO?���wߵȲ�>wU����{��|�竄�Oz��fė�K�-��Cv��#��o�Ax����J�+�~�	yt������A��۵�����>��cq��r����W�X�58*�����7��6�	�:����9�F�(�K������l�ҵS/٨�6#?�Y��|`�������<M�\�w`;�'a��p��{'�fm*ĳ��V@��5��x|
��۟�hyB���
F �ȃn�G7�6�0��v��0Լ��{ Q��x��� >	hE��jFD�.� P���[�q�HMKq=����2��wk8��Q*z�G%\^;�S?���{N)�-�_��n�}�R�{�e�z��j�6�M����EԪ�;�����^�wT��յ�	�7�u1Լ�5�✥dD��Y�nƍ<�7�c�HD@w���Ɓ�}�ݞ�x���̧%bjUӆ�-�M�0��M��g��j�\:puй9U�o�7�ch�Tw�~{bO�|1����I9h^���s�X���+{��a
�_M.�̖;f���k�D��^J��_�|m���vL������K���?rdƅ'�w�z5�Z4F^����d�����Om��� ���Ћ��a2�Q��"6�!'3SGFd>h���Z�� �1ġgO��f��;���
��i͕y��\��
��H)��f��O�~���A6���,tl�X�z�$������$n�q��^��~l��k>H�h����1d�"p���)X��L8j��*�ɩyx�NflgD���;����Y��k+`C� j�h�	 !�<��S��t��A��Ne}ǃF;�%⯘�i�� �j�u�����B� �XFн�P�������'�x��A�S�>�uD�FE�B���C�5'L|�2|¯�k�*[5���stm�����r�|�߄;w�y퇉��h�mIj��
����|��0E��L�.��I��_��o�g�̚O/�%9��zw��Pmm、n�ބ����+,+�/��5u�l�}���:��N
�:]�M"aqj���r!�O���4���j� �G��4=�c���3��K����}���7�q�i�Ø���_�?9���Ċ���^R��Mk��W���χ(n����������M[�����P�m�9����Jg����%�\��-�D�c���;6�d>\r�;@�౑�O�H�~|P����F2_pmO�FH�e�2C)#r�<-�C(N�����.��d�e�~����)�`�k���� \��w6��(�Jċ��+�փ����(Go�F89�9P6����>W����Z�/�%����JI�J��K��/��JN �(?��";��;�`'�� lӧ3���&��������.�ճ��+���XΆ�K�r(��%t���n轼k3!^p\��  �O�i.g�R�;�+Ɓ@>��?V�S��N��Hf�[eD%�q\� �� �ג�,���oArt=�w��ֿ,������cH�%�#�q3��8�l��u�3c';�x�&@_)��DL�J�O|~�v'�,D~VSwn�	Aэ��&#,���x���Z�@� s�o�������2`x@(M���Gc��q��N���ͩ}oX0��J��n XbG=|_��S`�����BO�/��	���Jf� ����!	\E6��l�l
��@��&~f�b�ї�tg�á����['TE�6\Zw�q�T�#�0���[�j�s�jPm����_�xfɓ�&��c�N#ς8Rvȅ<���W���(O��8��Ng�1���qE&��y�JbC�Gs*�dN"�JE���/  0���/4�@��_hx8A}��@ Ai~XXh��O`P`P�//�~�A~^��aĿ o��А�P(�M�C!`�`���~�A0�����P�E�>H����a}~���0L������(�A�����|���`�@����û]t��+�������Mеs3��L8��g�L儘������y(�`hx|BBB|T���D"��H�#(�'@>�L��E�D��F���G��9B�#�E�!"	9(�)�E����F�EG�����T�	8�����=����������C}%���H�/��s(,$�(7.�`X4<���Ņy�e���Ea 9�}Q��K�'���A`s�irRf~^vRq^Pv~F&�rʈ���,�fI�g}�iy�,�^,HQ
T��O�Y�������k��G���/9o�t/����z����)n9hQ G�>��us��$�sv64[	�tq�Z�M��������U�7����\K�w��z�v�u��q#.��������~'[[GggW7';GOO//Og{GOoo//G'/o"@P�M������������utrtqs$�yy�|��(?�8���I�������������х��hK�c��!)���������svr�zR�x����(���(! �9����B��`�L������B����ĸ8���ʞ���ra10�<�R؋�x"��őuq�Y����\��z��ՂH�� �].x��ͅ��P\zm��;Z!O@��(������Y2��J�s>�X���ǹ?���*�r�*x냞�S��*d@%>>1%9-=)>1+''7'%!);/77'51)'���9R	~nNvVJBBjzjzF2�/9)�̗�����������g�4�AQ��􌌤����T�>������lX_�/#՗�����e��1R>���P�ԃ ����%ե%Ƨ��def$%��de�+�p���c��8��	�� �D�M&�w�q��r2D�D��F*L����EG>��eI��P[���,AV��S�?.���_BBrjjFfJbrn�����|HS�����yy9iII���>J&�����/7-1�xJrs	��<��xJ.|^`��Lt�%��e��Pz*L���r4?�ȗ������򥥤e�P�`}��rd�HO�d�̬LT_:��	)�yHJ'(�<�k��um� -. �^��0�9;	n�I��
��.�.��J��$Oȯ]$A�����z!(�0�*>�O�� )�����di* 0�y���옏�s ##��%d �@3��83A��#�U�*
0;TJ���X����y�!3Qt��4J�ӥ�������h6p�'
4Q�fp��7�rV_}�g��h;���o+	"݀�+ \��F8��������5��A
�c�'������69.O�s�^����_���Y�Y���#�&Gml��\\m��1�!�;�Ը�Ϩq�9�rvuqu%�UN��8��������;1��%HḈ��o��U�6���D}6��C���*4���#�st&�s���2��0OX�;�0AQ�;�����\�m�q������3A=�q����K%� OS��(�`v��� �B���Ӆ
�������J����;`A�<.�g��lF+݅$Ai�8d�������A	IP�y��pP���kt&Gk�$�5�HA�2g7G��ry����$�m��G��O�h���x���������Ң��#*�K�����:��A6�?r������������������W[NP�����#�rǋ+j�kjʈ�**��K9���S�U�TU����p}H���ԒzA=ꎐ|�>���������rB��piqI�<ݷj��`�����~P�ëw�S�5�ml�`�2}r���������dmd���n�������ƒ5E��_Gpp@h��<��bf�o 3{S?wnQ�y{�,���-�m�m�g�
�Vl/���oݖ[��;��89B��opP`h��


�b�AX��/&�R��0�hOHym}Y��x��Mp��6b9�כ�.��5�^�mEYo����Zލ���: �Q�"+^����5�3'E)L�MSYlhUg5����j
��@\��*x� Q.��D�c��g��KXh�ఌ���>�g���f.}Gk�mp��Ѕ5��S~���B��>k]�lF������vr,��6����~�`��= C&@��F���>������x�&h� �Ŵ��_,�CCFE��E�p�7!111!�c
�h�5,:���G�����h����Ŕ 9����<0����<�׏�g�灡�Q���T>4oL�珉 ���(��C�bb�C���o��X�,!�C�0��YBM�A
*�|�܉�d�
X�)��Z�ۖ���p/f�����tr��!=�8����T���ש�#H��oBRA?�Ͷ��� ��)>AP6�^��'%t�w��p��t<���%87<Ѷ�ī�'�����W����v���"��i��kd�~z���|D�cB=8�H�0�$�,$�|�E\���
8NǊ�f>���dph5�y%#\� ���K��#�l: ����� [�9�DhG��L�E�`�\�Sv��=��Z���F����&�@Ycx����~�߁*�.��+�@�� 
�d|ʌ�6��Y�81N������¢���Ҳ�򲂜���r��敕c
��ee�99�E�E��YY��y8���---)%��J�JIJ�!�|�E��y��yD}��%��O��������?;���G�#�#�e�|e�jrD~�ovL/A����`}���9��D�%�y9�ؒ<x�cS[�
�����Ob23B��L�T���D�],�NRT�Cadn�B��W
���a��;l?��B,�����jm��=�45�77׵�d���4x����+7�ߌ������1��a����M��>�!��N�o�憩)b�|d�L�����)*+*���@�hgpw�_�2�~�1zr�S�X�Ad�����+�����)�S�LGs��[������՜�{v�v�4F�g�����!(=�� ��,����pz��B6��I 8J�;�����9�,q��%e�|I-�w��̏@��1�|9Q]QU�=JK+���8oAϗ0�A3�C�������ʪ��b�·�] %�^4_RTTQ]Y�=J�K��<�a$O�ǘ���&�WW�|���U�Ņ�D��k����A0ۋ�F��{��_0૖s��;���i
�PF;����`�f��H�'��2����(ŀ�R�͆��P��Ȏ�Dy���^��$P���P�T�]0� j*̈O�e�*�o}*C�ݎR�3mcm�����hc����<��}�<�'���r';;gW4ooc�����@�����h�r�����y'�p�������y:��G��z��lm����prt"���0L�~��� ��� ���p}�����ډ(������ӓHw$�l����~j;�������r�y�:��MF���	 x�GF��X}5�u[L��a9�84�����X�z#F��1x�^�Fk��-�΋��g@�;)���L0p�ໃ�-l����!l� x��@
!��O]!�axD��x�B#L����xq#0��!��|,07VԷL>3���0\�� ��� ��.����G�i�������-9�"ó xf�*��B�B������J/�X��2�#�W���s�NR9|�9��V��=�0_�s��V�(_P����K���z����n��r��<��_��{��/*�������~۵}��b|X��~�n���ޘ����,��w˙�?���1������������q᰿||zZ�ۧ�^�������~sws{wu~��;~�y׋e�����9������_-��w�g��8������w�����'�x>�_>,mJ���P]�;,�-�]�����Ϯ�j\�j�l����5��|���:��G�w���9KRr�~5^�ke0P���Ց��Ǜ�x�4�9�>>N��dV���_��R@�G����~귺�&�'�r�w�ڬ��r��v:�Q_]xl�6�,N_��>K���d�k2���A>�����lnDs��o���e���H�y��z:�.�"�
C�y-p1���-��01(�~SS�d�GR�P@�B�Ǯ��h^�)�J�Q�s6���ˉ,ȑCU �(���0�р���	�L1o��lSB
:�x^5��!h|e9Y��s�;҂����x��Ҹ��y	jyG�LΏmȱaz�z�F�k,�m^�S,�:F�/�*��m\��焪�p+�nRׄ�eMu9��,�z���$J��!�L��"mLw�b���#�%T���t�F�A�3�ߨ3���tnQI��S+���� �'���@y%k"���wJ���o[�����2�#ϥU�9�/�s)D��p��~f뵿(���u��C�!�(��H��E.y��:q��Wۆ$����[�/��v���a��l}"���١�^ǫ^�1���"�a��Ś"��T��Y����Ni~�t�攸�ψa�!��:�
�<��ph��y�[q*�7I�(H�T��b�B\E�?RYLLl�`��9�>�Յ5JL^¬�㺮w^�*�X�?R����-�g�"�s2dN}TҴ@�r���ZY�6ϻQd:��	"�`�oN����4J�j*4�}I���̤����>�*�
��veO7��*\�=�*�l�q��'4'�}A�p�T���c#��C�V�Է0j�	qü�L�� I_q�P
Rt:T�����1�+R�w�L�.z|'Az����f�1j��֛�!w�A��[�zY���A�u  �>r�A �jWa�2�")dd\�Q��D�y���ql�>>��(Owʎ�X��i�s*ac��x+j_�H�y|���g�� =����*����[�{u?i[E7�� n�{�9�9T�*̠�y�c�e�O|�&^��b�o��?�_hua��Wktq�Ң4��X���},	RJ�$kLm�F��L��˥=��Z��9�obq� �Y�ٱ�@Z�}e����o阘N0H�v�Mnb��X|4@z/uF-ds��7؀�Fi�(�7�v�
7����&�|o�UZ�k�J|"��)�t������@��ء��t�iM��
/�p��EЭ�U��	�*+}�O���ρ�"��ھd(��l<�&D��:��Hk�
ԸB~C;>:�"�k#��_?|>[���Q=�	��[@)@�D������Jol��z�%W�a��%Ӟ	ئZy�!��f��7���F�#L��ʠlX�0�������2l�L��'Nˊ�OȕB�N3��� �F�Qc�*�[�o�ŇClu��M��I_�~`e��@�p|�܉{�&��>-7l�p<���x v�5V����!�C�F��ru]��'9��Ԓ�B�¥B�[s����"��w=Z�%Y�o{l�����ɠ*����^�xhe{����~�|CS�/sC��p71�Z@����d(����V���T�ס͞�,�-u(i��lM������8�o>¤����zN�u��>���j���C|��W�C�Z�!�@��BY���`S�������k�y�P�$-ʵ2�* S.�����t���"=�$W�T��i�#>k3�jx?uw괨%�e��k tUbs�Pb�,4��S�z�YSY=�pI'TREE  ����������������                              ?�                    �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OCHK    >t     S       \        DIMENSION_LIST                              �     �      �     �       B͑          �t��OHDR�$           �              �           !Q     S          +         �                   ��        �           ������������������������E         _Netcdf4Coordinates                              D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           \        DIMENSION_LIST                              �     �      �     �       ��˹OCHK    /�     �       7    
    is_result                                ����FSSE 	i       �   �   �     �	     �     �   �� �,�OCHK    �k     �      l     0   REFERENCE_LIST 6     dataset        dimension                         q�            �,�x            ��             ���vOHDR4           f       �              f       �           �s     S          +         �                   f,        f   �           ������������������������I         _Netcdf4Coordinates                                 D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           l        DIMENSION_LIST                              �     �      �     �      �     �       ���OCHK    ?      @ 4 4�  7    
    is_result                            \        DIMENSION_LIST                              2Y     	      2Y     
   ��j�OHDR7$           j              j           y      l          +         �                   �        j           ������������������������E         _Netcdf4Coordinates                           
   7    
    is_result                           ��y       x^M�mh�W�J����)�YR�XD��"��T�}���֊"u���N�d� .�Y?��
v;���֪�K����Mc>t��ɬ�Xk��=�sS�����s���{�)������q(���`VG���^Z�0H�7��=^S��ƕWn�tR�U+����BYt×�)�
�	��X�����p���G)|p5�U�>/�ȉ���(����vo�JȬ�*|�� ��A�	{�-g���7_tr�!����.�5\�0�t���`�B�˘!A�ĢEl��~|�D���;�G�E�ԏ���Э����vB��B���1���9�5Yp7$7�l�_ǔZB���~��	�W�R���T	�.6���l�܅�G�r�������]HoC@��a����B��6�����bsY�Ȋ�XK�rC������t#֖C��;_�#�)Կ�E	��I�P���6�P��A
��0��w���6!���
z��gb��������_�/2�#yűs�u���H�ٟ��̵)]i@�z�B��,�0��Qլ���Ƹ*|Z���R"��~�:��i<5���� M�KwǪ�[[f1#�����t�Kf�&��D����V��@|�Q�����*}2O��T�nJM�͘���U���r��������p�q�3ɓ>��eH��U�~��uZ��L�S^��?Lr���_ܕt�KϢ�.�{,�
Dd�|b�:����,M8�o�sx�^&?�����<=���V��V�����y�U`"���5����_����B7.�TREE  �����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           TREE  �����������������,                              ��                    �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^�w\��K�z��;EOLHP�b@Q����$#KY0��	DQ�EQ�	LEP1�0ݙ���ޙ]������9��q����vgv����`X���ϗ�d|�JX�iӦ�?0��gd<e��^����ل�5_P�<��y*��QJ�������-#���{FF:���N�`ff5���
�XBڭ�dd4��n�XgXe��+�X{�N�?bfni���3t���^�x�=i���vvp��*�te��S�NLtB�uC��U��vHVV�BJq��6�/^$uK��9�e|������ͬ��0�G"� ��s�n��Yx�-��pqۑ?I���������?�Z�L��s��{�7�F��]��y�>�=R�-a```�S���7y���}k{y���}�km߾���!�Χ��W�f��������M�H���c���U�f�j�$��_�� }��Tm��w$`�j����HK}H�T+(eY�{k� ��c8`�Ь��4����S�L#�α��N|l����+z.�@H�*��*���:��h��.�����-07o���ՌY���,CB�FY����ļ�'�v�1NYV)S��G�&� ������+��z����S�S[ث
H��9Ky��9�uu����)aP�*4I1�P-�ǗH&|�ӹs���U���KX��ds9�:v�hߣ�.L�BJ��Z^[�G���deɏ=~�7�+5�k�4��X��2�+9�|j�FK"���FFk����F��������	��ҥҶ�^�B�?Vj�\�.T=�)p�fl�:bGu,�ѷ��.&�&���	�*U
ȳ�����F� g�[v
���V�ȟT��F���[:�`I#�xРA���(?�P; %��;J�#P{��+PyL�)-Z�($x�h����Oa��jG�"ǘU:@>U8g8w�֮ݱcm�@^[y�
V�3EޞA%:��=�=�ϣ˅$�C�����Q�~}o^�����=|4� &؃UZ�"-[�t�v�1=�1EJKC_�#:��B066�G��~ߴ1��15=ʘL瑫%^SMM�(�F��yL�_7��~��i�Ϳ)��F����(��Ď�k:z��L����U�Ē�-m'V.�=�OI��1l5�-65���X�,;���$$���dNt����Ejhkk��o(�YF]��ݻ��X@:��,�r-�W�@$�k�4iz4@�����:x������p�2�%Y�xxx���1�ֽ=��۾��RI�C	�g1��
=�M�&��g�������?xpw��e�P��~�����~�}xrI�Օ�%~Kݻg�m��`�O�z939�^�R�w��	�d�4����C'����!�v���N7�Q�Ұ�����1�cJć�
�=��Z��s�FHH�ڕel���T�����ځ���m����u�z�Q�-��Pj���Y{��5x}1�mk?��Jn��Q����mO�H=c�=�1{��s(�����?U)���rT��4E~�56�����;PnG����,V�0x%�̬�L��_ic�C�[�I~���8C,�7^	ll�16�Xr�ޒ�H(?l�TWW��<�^ʃ��ɿ{��>c�1�Y� �ͥ�	k��qGk�k׮��U�gm���z��)�(W��Q7��3�Q��5�/}੠�ڞ��ں�\�Pkkoʯ�ֱ��=�;�ݻw!��)���Үbm}�B�q��z��x������?7u��j4���:����2����/�߹�x�N�<�C��
�Z���4i�|,����K�<����� ����Ua���첰x���\ϳ��H��D�� k�����NIP�cM��s�1`�q���+�ZX��e���F����¢,��W������&��,v)ۖذa�w(��5�C��S�uM8�,��M����Cȳ���K[}���*S�)��kIL�PiVVU�q��v��C���rp�}�:��H������6��X�i&-� ���M�%��g������&�PonH8���G��7eu%�_aIX��H�7�����=:�J�Z��:�;j�d�@��5ֵ�u�v92s>k���%z3�{��]��J:~��<�~�x�3��
�/�2�w/�|`��75{gH�^sٞ����_��F]o�* q�9D	aۜ�;��)��Q����^���Iu&��C���'��伉�ޖML�>�����ڎ�rRZS�B��_�mm����%�m�Sc��z��$��?���N�9����Uy�+A]~��et�V�F�c�W�B'�ȑ��	`S��U��o��}�L��rk���iQl�r��!��h jܲ��̕mڐ��s������Em���[���~�[uγ�é�0}`�*׮]�<���U�ԋ4hР�DL��N�W���SuǦ}��+����֎�
Z��,_���h5���ܜ<&?Xg�s9GX%�vř�䤣Ӣ��c�gyz�@-����֢�O��<:8�7ĉ�y����4���~;��A��� z)�C�f:ꪯ߭[�/4���pv�F�1En�M�xb��������w�:��k}}������-�Y}�?(���MK��?�>�+*W���l����/}�|����W����d~�?����L�_GھI>-�2�V��*%�@�c�@� �頀���0���N�yE.���?�f�I�!v�j}>�$��100*�\[bXg�ѣ8E V�@�4�+&\w�%�`����� ��$KS�C���c*(�0Y�{�P�.�!s�	�ϡ9n��]&?Z��/71����ԡ�I���u��x&&��$�����mg\F�0��g�4�OI!m�q�Ϳ��O�^��`��~����ߴ���T��?�^��Q�h(O�3�6ϒ�?J���#p� +�y�#���#)�<y�}ǎ�����®PW��./�L>��˓f��6� �����$[L���/WQ���9�Y��p�U��I\�Q��!q%4�����;��͙34�R�i����x#�*�-͋��񐦈2X���|a�E7��:���A�\b��4>��~�Y�x�w�4�8v<>�����>{� k�͙���|\�Q��?7 �����ߟ�����-�+?�p2��X����C��<����v!O��,�mFr�޽ԧ@`�������Z�r1/�\���C����.� "�Q���M�H��yy�(��<�_��l_�Q�*C�2�'�ְ�)H^^
����yg�,U����=t�c���.,@%1o�h�S���&V+c��dy+�'f %--͙��Ղ���hq��xƂx�HW�����?��>�B�1�����Q̒<׏�A�6���kd�50v�����tv��l�<��$��o.I11�-y�PLX±Y�
cb��َ���n�R];o���(#cd�]�6F5�A��/��V��;Ӡ)��ڊ�s��PF��ǀ!�����8E�mt�L6��+��^KB�',	˗'�S��;$���9C~���,<S�ƹ�g� ȳkW�364�GW��W6Ѡⲇ3]�F���O;��-�N `J��/������حn�E�;�'��p)°-8짪�wg��;��ε�P����_={p�*df*F���⏀���=j�:9�S1����b[80\�>$��G)��[Ko�5�b�&*�&t�����a�c~���ݗ��n}U	nK�������/��lQ56��7x��r�CIv��L����׆hW3n��mJ��H��j��|}��}�.%��d-�l���M�.ʒ�lT�m���i-�8���R�Vj�X��g�B��ŝ����Ħ	�1�9s�=�g­[_�%���19�-�_$nz�|68������v�{h��ĵ�l�(���ڙ֯_�����<�:�7 ޑ(�wJ{��ªjk�?=�h9V%�鈂9�߼5hР�Bp�H����sUw|X8�B��1��m��
:��/_��`�����2�G>��'��!qz�J�����A�={���4�Y���������\��C�b�T9UH���{�7m�T�l��ݙ^.��@��(HE�P�^0ҩS��lk3�AyL� ��?`oK ���cq)KO`�<8�����G�.N(\|�p�zYYhpJJ���U������l/�\���*[��@/�EI��L��,ҤS��A����z]�7w%�p54Tڛ_�ݥB�Br�;sB9x�Q��j�3�O-RO>�T��tw�� �ؖ�M�ބ�W333�t@'Cé�.�:�����	�y��D�4}���Ϯ��!�QO�m#���m.�v:��	?�[��594�G����n�.uꄃ���P��ڸ|��V3;=��
�Cy��6ׯ��0��p钮ͪ�6�^�8 ��5�'��eY�\��;2ק
�lT�U�UKa��A�7S��n��٠�O|n��H_�nDM<eʔ�V]X8�ů����}9�,˄�yv 4�0{�b��zb,���B����4��G�w33��f�F����� �o��+P�V-q%�FnT����9��>�N�|Q�FD��aK�wN�)�Bв����]1��B���ʙyu0�|� m�lҿ�ZT�ܾ��*�y����SsL������kok��l�Q��<

llx�8%��/�͟�w�#3��
D|?��}�3����=0w|d!�nnnQ#��b{{tP/��^R�<��'��3���=�����ڞ.mo��&咽=������	�N?kԙ׹t ����i�_{{�o@���oo���q��""��@�F:yy.!q��7{��gu�R����0�d��I���Q�۫{p�
!�W솎�_��)#��|��O� {�K+�q>V�:�6���? ��]�䕕��j>��濥���(L���y��U8�^=�.����X+�.0�s���vl��������V��{���
TJ�9;�$
X�	�Z��fM��{8c<����e������g��^�`/��tqx���r��ג���������Ir���`�sU���h�����0:{�g[gs��o{�
��r0
&�gB����C�:��?�m�m��
N*�R�a�s���M�q�fy˯�ssX%r���/e[�fLy��N�
��y�-Ӷi{��ӠAIj�m�Vr:d���W}~�-�����Ϥw!ơ�7�\����6n�ݻ쾟���^����0��|֠������9<>~�AϪ+f�w�����q�ܹ|��9��'�a���,Z���;w�l�����"�|�b��77gj�s����hdq����lL86�V߶4�ጃ�����Y������V��,�D8Bx���l���1i[��Za�.;t\��!�ժ* LM��!�{�;�cDΕk9�7\���E-kԨ�4h~���k�K��C#�u�7К�k=��_��4h��ߡmۍ� ���j{���9B�V��
�q����X:O��s�%�_ƣ�]6ꏓӕU�!�t�X�2+k�Ɲ;7^z0b�p��'��v�yR\L�r6���+Ʒm7P3�������3'�M,EbdGC��� �~�W���4�ʕ+w� ��k�?�1E��_��Ą��[��Ngϟ�F,~�VN���ܹ�M�E\o([srаKj��ĤJNRR1��W_�b�B�M\���@��?���Ղ���d.j��GA�>��B]h��P����8Sј����t�Ԭ�|揮��*ez6@�J��o����y� �o����1Ο?/�k( �x��z��������!M���Y�����֯Y���q=�I$KөS����-��ʭ�
�B�ڷp��a'���n-`~p�cP?Ÿq���>�^��������A� =���DW�	l��W�o<��ۻBss�[��q㸸ʅj�&���#{6s��GO/��&�͈c�(ܥ^���1�ެӆ���U�����\�4���ĳu���*�N�<�q��ط���&;ʷYOl���<\�U/^J����y��-Lk��<;�m��:SL����	�n�Re�_�V�����u|���q������3�m<=�`�u;x{�9M�t�K)~׳��74E�)LY��I����[f�[��o�K�*e��z'�^��{�������!!Pk)y6������Ϗ�H�I==ٓ��3z^�5�e��y�s��}����,Y�&t�1����z��yK'ye��-��z���Z�t��y����!�0��k$KQ��CU)5��Ѹ�Y���|�/v���S����Q��+�򛼼�y�=�������"rE�}��]�1xy�:9��ͽ�y�H��r���ԍ>m}���)�\�s��@�]�na�م/��1lt���6l��/�s.'o��0�nK\�����$�Hʆ �T���/� �s��ť��=:�<�`hoz�r ,�a��˗�.1�i��?����ѭ&\,x��B�U��\ޏH����K&L
ߣ˖ۂa
����S0�r�JNѳ� ���=��.M�W�}�𜜩*��E���,�8��MK�/��F`�W�!��R�o�ڙ�jz$9�F�óg��;y���pr���[N�%��{>�O텢"�_�u*(KÎ� �(�:Da��T	�e.i�n��	��<t���n�k���X��7���j������a��_D�=V2i3ע���ȩI��o�M9���Ɛ�Z,,²�6o��na�N�a��a�qO���O.�%����L�|
ƇY*"���zY(�Р�o��M�����Ű1cpm��	C���ι�m�+��f�"�mɒ%il���S9$��m�cnnn�P쇱��Tn~o�t��BQF��8��{i�,�@�˂[��Z��Gm��;�D�-�����'�Ǐ7�:���@��Bu�.]rd�Rbq#uz�o�mΠ'�w�綣U��\�Z.'�i�v!{������&{ƌ!mQy�-���R?���c���J�����5"g�y�f͘j�����a�A��M>}�_�`|��3��XK���Xd"7/PS�Z|�ϡC���,����l��!�r�X%������\�����~�7U2rtb(���q���)"W��?�q�T���3 ����i0��o b?䅀��b�����"��1�ǲ�-X��c�]�@��IY�`��6�Gue�����2ctG�2L����}���u5jhi�����!�t����Uy��9c{����aj����_ه��T���`.e�Rf	g�a*�{W+&.E��Fg '_ߧ4̄��:o)N&�!1Ud��E����a�r~6T	[m��%rA�i��:��s�r]��yb�Z���m��;�87��}}��
��I����?���"�к����i1��a'�����5�Z�C��CO�<蘘Ty����fAa�߽��͛�/���/�ӳf�h>ψ����ϛ=d�bҖpא*C>y�~�+��_�^�~H��ѣű$��^��1�h��FfF�,�pkz/i�4}wKu�P�����~&���g�R�u�̻&;ʷټy3,�_�e�E��6��o�:�7����*[�u&�Mg��0�93��d��5@���z���W�{�8���g}1�E���T6{ɵ%(Rѩ�����RP.�tj�y�������J��"*[��!s��Q��������8�e`p
s..�1.@{�2(-Xp�M�~���g v���x�Ӥ�M!�5:�4ߟ�p�<�s����\)�ݾlg��O�JN��A��)�MsE��?��t���x�.;��	��8A� � �7v�i��n�k;s�8��\�M�`L.>Ƌss3qq���!�ӹ�t>و`��@�1����`��G�e3ss1`�vcfhn�܎�/�1��]����-����L�b8H6���$@�k����_0O��E�)��JקX��-�Eo꤀����mr�է|�\�g�ȱc:0��@��� _""��XoS����A�prn�ہ�v�k���0��dX��9�f�_�2���jݺ���J�FFDhA��ُf�3��\,�{�n�_/��ѣ��T*u��ޓ[�eK����i�Ki�<�]W��9�<��*�k_U���~�t������g�a��$D`/S�y��|�]�$9\H���\�SKJ�U��J��Q��T�o��С/�I���	��G��X �O��3vA�'��t�.��p+�Q2���H
Y��A0^���O������U�.��w��e���΄	��zz1˗��GGG�>���J��A������&���رɺ�	��%����i���*�Q�l�
��V>)%�n��i�%7�w8��k�u�p��`U	��E3�msfw�I�t�"�|�j�3�E^�U=8�r\�n��Ô�>��,�J����ԡ�.��DJ�)D����D�H�]nj����+5����[\v��M_ѧXA���0��~�h77�]l8[�w�z��ѹ��1�p/1��Ƥ⏉��"zN��_�V���o�j�[����]l�Pk�����6%m�ijo޼)^���<���?IGO��1�q�c4MN*N/�+���X�~�A��1Ǝu�K�rn�6��&.zN�ڹ>�+PyL;>R"##�:k���A��L~�C_�GY��� 
]ǋR���CI�C4�l---n���=m�ogmM�:lίt��q�:dF��5}}}^��@���n0���;�g#K���ZZ�ne��z-���"ǎ��C�'�TB��=_3�P�g�bi����
51H@@��'KK��ӻ�ԩ�}�X���{���|�;6����V--��*�n� 8X\���
�Z��P�9�׳�\��Mu�{#܈�A�8ji�%�l-��"��#�e?b�g@�E����.RBl�����]�����	Ģ�;�\?�}�\Z�'���?r5Ɛ��L��LL7�:�6VK�/��qN�H��{��-��1��o�N߼���Xe�9��-2�b{����5]�T	aK|�;tV���w/^�� )���.aۯZ5�.���<}J�ƚ��S��t� ,�ή�d�|jk������-|�E9?�|Ci�Pa8Uu%L=����g�3BV�K���ߗ�����eϲkn�ʕ�yT���NZ�{�u��.=�2n+x�I�9u���h�N��캜z��;�U~<	��L���}N����K�/:.~�r���q�9�ɲ��C+���S�	p�'�]�p�g�kR�'�6�FSD9�j��#+zl��V�w��g�vMY=�t\�{��>8�y�y^�� �y�=b~�̧O]f� �52��U��f�ֿ�@��F?��������<��P<��7n%���w��� �"����;|�r��#KY��(h����/݁�B�"��}���Y(7#����S����c�#��t}�p�A��ϙ�3'�U���\��aôfQaQ���Q�����y������8�=O	z �
� �~���<���n�����45�������
^l�"�,��yʤ�#h �4�u�q���fL
R�y�6�+h��9�̦�M����pg	�~�=�G�b��7��Ïd=������)l}k�~��b�M�B�R�b��z����֗96Y|��F}�¬����.<�
֯�S�X?:�٤�D��kI�5��<W��*��I�*m
��N�̿+�]�n\����v�6M1���#�b��`�?!��}�x��~9ˣ��D���B�C@L�����ЗD�����H�B�3�>8uj�+�Kt�V'>>~1w�EG��H����ϋ���al��-�����%`�����܄ظ�l�R�B��q�rp[��X��+��}C�"lV�6~�C#½UoJ2&��al�3c�x���z@l��3�L	�g�b8���ߗ�křܥ�Xf7��8�Jn��~�4����+FO�7)"b�lv+�L�1㛓����Mڐ����IA�3�p��:q��RSR��g ��l�W��&^���el��X7�r�B[����#��w�|��O�[��Kl�غ5c�v�]dhÆk'��Mߒ�A�G�&%��6ܨ=)qkƶ>��BR�G�A��M�8b�DGCL���q��#��5+GyL��K�b��2�Ǉ�M�͚su��*Œ�Pe�s��?..22�<[¢����&���8�⨜_ܼ�1�񑊸E��)C?��F���o�� �n�$%f�հ���h6E�͟�o����6��	'v�ˠ�8�ڵ+̉`�̊p��/2R�LǑ��DΌ�ĉ�3CB����M9����cg1��L��P�!����%<�<p#�BØ�)p��?���栀��p61��RILJhM�??bO��8?�x"F��phٍ�G�2��I������}�r���A>S��NbX�}���Q�}I�i'�|�+�A.�~~|eTs'�,M���#�4T@�D!B|�v:ɒ28q�:� H�.,���$����i���aa�+U�����4���`Al,�ŉ�\�W```r���Yvպ��۷m#m�y�����oߞ�l�!L�7��i��q�Xu6n��*$����X���:~�\k�:X����g�b~��D��Ƚ)���1ߌ�S�A���R��x5����H���D����������e�V��5�֟�����Gsn���2s�8���}��Md�A�����Az�"ad�����4E�p���` ��1is���~Pp)��8��>u��e�03���#�NC ���T���E6I��[�I:E�;�7�l&���_�x*X=F��N���82P��Jc�_	�U���_��SI*��ćU�n=���D�_�)*,�<+C���l�ޠ���@?��X��~ )S
c^���Y���(忳_&�r�M�����U�r9e��%+� ���(�Y�#���~%��"�_'	�y<O�D*G%/��X��<"�m����{��ShGA]�_P���	i��Dl*5X��_�Iߕ�l���K�rd��D�(���B�UeҬH�75hР����=���(˿�_	߯��E�>-+RAU��Z$e�BK����7���J}�r��۲��r�+��W)RAU������@�U�����[~�5�9�;����;W�����-+��"�.���a)mI�w.K���ˏ��r9����Z�+T�sL�]�|�PC�����T+WC���~%�߅�(��4e�q�ԎH����	I�ɱ"���ږ#gY�N5dr_����w{}���ٯ �*arR�I�-��� ����TREE  ����������������<f                                      �8                    f       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^��y<U����_i���HЄ�2DQ���J)B24��X��2E$�YI(dJ�2���M�Q|��{��8w�������j?�^�9g�s���}�� C2��ov�3� J8�Po�R7 =��c���.�0�v �QZ�����/ �'��� :[�z�M�@}�5����ܧ��W'��8���
@�<*�
�� �� �I����!o��B��i6����m��T�\�� p��bFu��w���VL�����=ߛH�h�nW�P��^��}kS{�QI�k����mj�:�о��o>��1�+�bT$����9��ήF�v��~�Æ)���x�X�+?�}iƓ^{���zǶ���.ݞ����ޮ��u�;�����4��*��F���Ok�����ղ�b�܇Ge�2��O�.A�M��i>;���5t?�Ifk�W�������XɁ�@��.�S��H�׭�u�����Wy]����S ��4n��0�z�\��nJ]�����{����]gk���q͑~ ����FY�M8d|r�ˆ�MV����L������ˬ�R2���>��7zj]��o݌�uuu�uu�%vu�����}���#i S��N9�m]�:��u[��q0�?���ށ÷oI[�Q��<�B݉ Gpqb$ο���T��ds�q��nv�W��%+�̭���n���wgg�{�ǣ�
�*:� R�K~�Ԝs�KZS��D�}�Ve���~岧���ĕ9'�k.~�s�836�-�
��K���M/!���}�wv�<����Ugg���=�;;�C_����#�_��X=Z��}�}�X����*����d�B�q3�|"��غ��"����e/=}ޟ7C��������O������'=�1,Żt�=���H}!QEQ\��䯠�@�qW�!�G�w���]h�0�'J�d�R�i'D��Sq�3�j��9����v^x߇�������%����)��y{���7��V ��G�u���� HDH0m�O�:H���v0���^s�1x
3 m�z�P�kb�:���y�;��Z�*Y�>̚�S|_�Z8<�Ż�J�����d����>�22#��Hb���R��&���#�.I�ٙ��1Z�����X���������P3�(I<D�C?_h� @����E�=��
F?^�[���D�Ȩm�U��n4Q6�h����k-�'��`1�Ȩ��Z�V;,yk9�쥻ޡ��y�V��h�^���h��l�_�y,?�d� ��৳{���Æ���#���ϣOX������{�9eu(,^�?�d��N;
;N��,~y�CE�y�z �Os�]0��ѳCͥ��j�ώ��;�d�v���0�*i��]2=�,n@o�oF�\�%���[�%g;w~/���Î�kۇRF#::��-ސ%�1�ivGp,j(��xb�ѡ�b���и�!z*�x�q��BxGG��#�;:&8��D���'��8�'1~�����(��[��9�EH^�m��O1���u��z��~en�����uJ k��u:�i턃�Q#>�0/��z�Oѭ�>-\8����_Ά*}�zMc\?���ݖ)�wq�Mi�����O��NN�� ��6�y�te�L�A^kx��Ӷ�S?��-nT���_rS�EH����sƞ��K]�����G(��J'$�n���������yd̐�L宮w�I�i����=�"#nC�S��</׶���Ǳ1�Bc�O[]1�qU����>@wF�Dۑ�1�z11[8��*����֘k�y;���?�� 8�N��s��i&�+Y�ɍ ����5{9�wX�i�˛I=՟�Tꞈ@c�L�F){D�X����f��=�*�m#@D.J_�� ݕ��t���d�r�FD�,��L����r������T2Rx���_A&��:G��X�,��q⼔]w�Ow�)���=V��ڝO7:�����]}ѱ�8.��"�=������ ^��=w�
���$i�x��ڍC� �-	.��Ꮏ���Sǈ͛:vup�/�����x$�ñ!}�c����a�`ö���"�%.Z�x�� ��;9|?nm�x���OG��q�u_x��Ē${u/�����ό���_����%��v�/�nZ��p9j��[�埅��i?�j+V�f{m��-�r��7�ŉܹv��镢K���'~����p�j0ب/=CШ^4��`�#�Ϫ��M?o�=gk똹����˖�=�l��mmۗ�7`�-����ze�����m���>�������N~}t�W�|��z-����C�I��۲������g�ε\�j `ـ{�H��c;�q J���$��9�Rt��z
^�а���]�X��:Rƶ��k(�?'� r� i��@,[��>����o"��B�.w<O�p�It�-Sׇ����h[IW�؍v��՜v�DOǤ��J�ǘ�� ���D.C)z��f�k(���:�$�3�ް���:�@�g1���!i7~�~��s���ד%����|��ERBGR��#��<��5$/-�#d��;<���|'y��5�E08?�>��>���/]hs�h��8��,q�t�_&)i�x��㒒/+?J>�.))1*@R���^RrBIɬq�D^����+\b-$�I��#��A\>��gyVL�>R��gd�	宎v��ڦ�psmxn�c�p�a� ���m�'L_!����GB�˘O$�zģ`��r���O;ޓn��~
sb,,,,,,,�Ŀ��ג�?���h`F�[�8/�SQ��z�)�ڢ���C���UR��-k>��:'��	����s�5 Ku�{OW�6R�]guU��2E�'�j��/]8��)���t�	VΊ�"�i9�=�}�v����qRk���{//{۷�~77���A[2�'r�K쿅��;��
�̄
:8�dx����8���҄n��_0�e��`�G��>i�O��|lG�6���6b9�ɱ��A��r�0C�!?�96�N�����̘�z��4b��t�b�������.8wu��m�$oMR����~E)���EW3~��	�����(���6���{8L=���7gb����f���#F�hlJC�#���}����ض	�˱Iƌ+��H4^� � �:��5`#��(E���#�� )S_<n��R�0l��8}�*����Vlo�>��U��c���gV1�85��Q+��(��0k���'�Þ��]�n|g��{�'�]����h�D{X��[����މ��^���	��aێ
]G�Z�����"c��������<����GX��>	�~2�!�(Q��BQH�|�Y9�N.�&�|��IQQs�+՞J��-k
����)��v#,n���.F ���+�e�� M2��@)������ ,��C[��ү��!�	n$�F�g�D{���[��W\�x����D��	��}x�pcBW���.���q}5�������GA���X�._K��2�'�'��1.�:{2��]���.��'�?�Ǖ���v:��F��ګ v�$�>Ԝ���m� b��=��py�w��oIY������7�"
��Wu�*
(�>���M��hj���R�H p��?S�����Fa�>q�v�C?!�h�qL��PD��/2��S m| y-7P�:�H#�'q��	 1��2/�n�5,,,,,,,�k�&���% }<�������y��j�f��'��n�[�)���|�t�.�k6��d���1�ሀ��ѽt�\P�xc� }�z����^�H����/�]��~��E�-H����;�w�y@����=�=Pav�V������T����	�����*���}
���ڕ3R��zm�;O�D�P�h����ջ!O�\s.���S���x�)��藍�oƺ}w#Gw�~Xص�� ��ؙ�-\��@T�}؅��z��y�ۋ��-������r~�m��a��h���f���������l9��s\��cq�z���8����հ��aa[fȋ4��%|\�}*�څ�N3
�z�4,}��j �Wmn�< �0�Q�&ʆ��8W��B�Z;����ܟ�=G|[35}�IG�i& M��n��/�� � �v+mUQ)��<0RTf�h��u**G|e�竨(X}@s�� Y�uxs��a����0)�8���ql�s���~���F_|��w��ȳ������޷��z���[l=
�]p~�r{�!Ѿ'TeUTv���=QE�ݚ�**�**y���_��G$��+��*�2�G���r悧ʶ��j��~�Y�:����H�����O1��ұ�����ax� ٫��oR�zJÈm���-�%T)J8�/@ŘfTN��yzJw5�+��<w�Φ�8S_Q`!���>�71(.�Y5�5�*�>Rv��t��C[�bW���aaaaaa�cX�8(/�·�E$���<�� ���?@s@����X��#i,�O��A
��+>2�1��H\U����G��� i��/�}
�_ǭ�* ����_�<�rx��I;�!�b��r�R3�����������uU�ˑ��X�la��6_O9?��v�Ԟ��ֈ]r�u��=}�7���]����O��2�#[b��~Z햢�.z䚟6���Nڰgp�|�����/�
�������n(�k�&O��ͷ�[�c~�\����5���o~�ȃ*'^8�y07kt��Ė��e�e����M�� N�&�N�ޅ�W��"yLy=BS}� ���'3dW�jʮXb�n(�s/wx!��jÎK諓z�Zv\����쀖,ٷw*d�����d��.�Q�[%��B�X{@��[��ľ�y���7W���\�X��b{LV�����!	�d�.k"�de/L����p� ��!|��';u�^ҌtY���=G9$+�"A������G�=�8x>����`t m��E^*oT�{����>�w�9��a`۩�WN��z����2���\|������955���`����8�qrtL��9-x�&�u2�?>���Bmx��ԖO�L��d?���)�U�v��n�]���kt��)�� ��;��9)ʎcGq^��1��wC|��3�'v�=B�-p#]��y��-笫���x<z�v�k3O��L%��
�J{���BV�uuZr���1JJ��>*]�T�h����`˗���f�hR��\�Z�����V)i��£m?�+�ѝ�hk޷K)6RIɁSK����먤���*x;))9�[����$�cy'�ϿQ���@��'�eǅmc�C.v��P��a�e�	 �Ilp����g��<*��2���E�[L�ؖ���N�L�!��X��3,~K�	�A�!u\�u܌�X�#�RƦfv���̩�� Z�^�Ȍ�)#cdix�s��̖�� ��
Z�<C�߾�᧖���2�έ� ��D{|�3��*p��������\����=�ʠ��.� KJ�h9\�isw��y�2��cw}�~E�X����i���2�;���m��	��u`ӥ;2��U~�%�B&cp�'�t�`������z�s��������e�yF�b)�faA�|�����ء�󬋇W��g5��%�3�i�Z.��V
�9)˦J�W2�����J���+���z3����~�՗ⲵLw�	��a�2� ���jP&��������9�r�U��jmwW�,��L�q�=8a쮶ѕ��*+}SX�������E�/*/����[2�����2jR%����#~�����k���VG�sL���gX�8��f]�	t<�n`��\en��@ٕJ1��@�.�m��D�ua���S+p������vȹ�P*�?�����j�Y�ߪC�3n����7G�®� :k�� ��,'��l�O��`��6�����6���2Pay�p��a���Hm ��v��'I��IJb;R�1\丏�>O���^�&�x��v#=Wʔ�=��z��Co���>��Uޟj�{ڜ�<���#w��+nG�B/ooo���pv��:ܛ7���^ �5
A�濊2j=�ث�k|��s��V������m�-л�o��e��[��Ϣm��wɈ ���uo�3SG
\��'�>�͋�Xk�?v��϶��>XXXXXXXXXXXXXXX�s�N��ݵ��o�~7��m8���6�@2����8v%Ɖvk�p�kڍ�7��N'���}��)\qj0��$�r���t	`sb,,,,,,,;[�
A΃��^��5(���;2��4	����V};��m�o��;6:k�mV�~f}V���!�t����}�\��sǈ��Ć�i$.��5۔5V�A�r����)YYG�o�M�����j�'d�c��y��Y��-��:�5�Ϙjgxf�@�@��wz1��#V�r�\���7�T:p5].'���X� Z��e�}?��RO'��ЎĜ�p���~�b�`5����t����`�Rf��w��L3� 㟦�[X�� ���$�H��e�r8���]���M�5P}����K�{���x7�r%�'o �;4�|(�@�� �� ���X"`�A g�XP���CP�5��@#H�_���h Ohr���?�	�i��(�[��%c7B�ja0���=�uhl�L�%(ĸ�܄ܾbG�]O�s-��`���xq��	��n�x�>�>���q���y�����K6/���ְ���s	���MvZqSo�������7��f�&�'X.5��/��<7Bk��������g��0 iY~"hz���Gn��4@kO�J��� Z��)��7
24<�C-3:���Q�cG��7L�7��b�o�v�o�ad^��lC�ßT{Oc�_�A��0�
�����8U��`aaaaaa��ɶm � ��M�Y]h!��%�	p' �z��
��HNZ�M0��V���D��b��V�Nl@�cq�%�¬���7�9 ���v�m�C�$�\�(��*��9�đ�����O�� n`��	at��^r�$; ��)��t<G���=���4�#At5��B����c�g��0�ًr�g��J��w�[�4��K�g�M�/b���pD �S�BC��P!��{ \p��ӈH�ֻ��[ }�Ǽ��R��d5���(W���_,��q��y V�@�P�8����khx� �l��{�ucx~`5��W�H�q#
] �g��(��	�7���op��ҍ�������
�� ɡ��������j�\��虾ֳ��fbl˗�cY����'>��X�'>�-%�_������D�s���.�OW'�hR"�8F��_��LN"�M��	ˮ��W��lp{�����e�$&ڦ���hm�{h�h�M�'�}�'&�J|��d���P8�x2�V]z�<8�Y:⢼>�_�:=?M,11qM"E�Q��Z9y�/�X��K���R&�2����c�u�ǹ������)���;K�\>ju�a��}�g�\[�r���K�o�"Y�Ѳ38h	�Ğ��[,�LNOwk���O���u���O�_+`i�u#T?f�I�~եB��w�Y� �k���֥�����<��;`�ݧW�ӿ�;�߰LOO�KO�?{5�6�<t/ܟ��o04�s}�v�}�郖]J�^��a�����)ϖm���W���a�˾����e7�O��V�k�����x�Ť$y�e� ߯-q\�➔���`�ê�$��g�������6�q�p�zOBY ]~ht$�[��}R��Q᳜zM�@ׅ�m�8C��=l-϶�g0�%��lɁݷʲ[�'����?3�N��ܤ�Ǫs�n%&%��Ӟ�6')Iy���{s��Ɏ�c-���j�I��t )�P�&��3'�Z:8w���p�X�v���7N�Vȱ�����iLD��'v��g�wX/H�}��z��$�q�Kx^�m @n'W����U\ϬG��+'�9�l8 `�a�ڌ'n�mnn�����'��U�3�e��}XXXXXX��C��f��w��A�
T��ez�	�P��'��D��I:�'��c@���d>��u�b�o�輓����� �8���2�>7f1��vU��}L>����y�����cw��l��Hx�����n�����
�V��O����	�dq`�ڗ4�V����)�[𷶊K�O���~kӔu��ݶ
 �5p��ӊU���T�������]���om��?����?z����j����!��H��5q��~ ����t��'�bM�@��u���K�[Z[����s���g�Ӛ�v`4�~����{���d!Icze���� +6���-��n%�d7�����vKM���[`��O�W��u��ϗ��wȨ���M@���F� �o��eO��h�v>���{�>͘(���-�3k��Nڎ����.�����O��ѷ���"��蛑��~��T��{�ֽ;eşa��&Cq%j�����1#cƵ�B �J'�VL���>�aYmF�z����322(�����[=��;|Y0)�Ed���M�3�hW��x�� �3���F�ya�{L/��8<��k�v��iل֥_f��)�ݿtEֵ��S��w,]z�@�g��]���RK}��U��i����O�~��K���T��_���w3l���p��J!]��N�p#>�Q*��ni���K��qK;��G��a� z$�I�ROC��1�a�����i�oY��<�`�l��������^�'\�q����u��^[�mM81S#0A>2���^B�x���	�S.55�L81`��^�P�4mhe�k�?g�HXEwF��m�D��U		8����]�		����픐0�Nt�o/��qB�r��H�W�pS��Z��/O�"���Gs��S������0X.B�Eo�Q�T�J�7����rb�`��f߰]��ÓnQnY\���
9�?r5"�8�i�;�F9ǭDRz��8pC��}���{�# N�̹�X��Cqqlؒ�D����s|?��ʗ����Ǿ����}-.�x����bk�[��G���X8K}oF��<Wu�^uAz�)4�_8(���[�YjAʶ�����E+�秏(��-.6�Z�#�x�>�>�f�)���_��u�V��b���qs�߼oك�3��L� �e��9�a�e��=�	׆t/���D���������%5R���[>�{QCLtDtw}��B�j�Mo'�tnO�ش��ͦ�2MM{_�\8e����|fq֏��v[����jv>��bԂϵ>��8����,���	���jڜ�Ԥ�CӢ�<P�4�����:���y�FE=.�����G�������g�455%�i�P�
*<�;U�v�廩�����0��Ɠ�:S��W��+?�'+��GW=� ��z�<��*��]�o�H��ķ�Z�6?�z.�WSEjN�FAm��Zsm-	,7�4���{��cx���%	m�Z/L��wǠ{� a:���Y6Q	�"ò���X)� oN��&�.�2(�?��HR������� z�܂���0���A��?���@�|�޹�j��̷1�[w�T��Z�<-T�5�Z`�~���R��.��y�i����������bSbqZq�:�{�o�C}�@Ve�
k��G�I+������Sn��2;0�TJ���A��R�rc���.�^��W`���7���6���9��j����GB�Sd����r�{��wdU*,,,,,,,,,,,,,,����k�w� 4Iu�$�p��/��?���(t�r�D�?at(U]�eVTȄ�̇M�^��"�M9���'�eB5��W�caaaaaa�c��)jƌ�2p�k-��8�5�s��}Szû���
�o;�\U�fQZ��R�T�N*m����3��R�uE�Ի[��% B���[���T#�ҡkJK}���돜Vjq��s	����p�ԥ�S���Ҍ+1T;�ͧ�m-k�밪�9������oi�@[��q���2KB���B���N���a�8E�ag��%#����o���@��>���?xN'�x>k*�I��J�E៎6O�gAp�A��ɷu G�t�����p�K�2p�?���#x��H��I�_E� ;�H��#ȼ$/ ��5���j�� �����d+���{���q��F �����"���!f}�\�@=C`#]�q�s���������!!t�.��3��qc��N �ťޓt2P�6lr��������+��ƤqX�A�G�<<�}H%�y�襕�s��u���7�4��Y�1�P�O������`HO����;���|j�zy�x��iVA�N�S�<9T.}�I@5��՚ݖY�UW}Sm��Du�#UՏ�'n�H�< kk���k�z�۴(�ªq^w���Xl�����
UUէ�sUU_H��-ڤ��L�g��wUC)U��NF}����Um�G�l<��Z��I�7����l-bn�]��4�C�PEǂ��&�
��),���L=���m�(G2���&�pH�Y��qlq,dH�!���6�(p�	�$e����}��	���� ,�;2߸�1�Z����f��u\4q�^�;��g��k8�,,,,d�y|�,"�tq�S�����+�\I����+e7�3��>�~�X��/(�u���<i��$�f�7\E
��aԎ����c�9Q��Er�g8L��&�m�֫��Y���Uq�~�Uد݋cN�����1�~C�z&��@�B��������ڐBh�=�}��5���7�c{� {���}N؅[<���rY/���m��C,Y?�:i$��y��*�[�����������ph� �0���1����~������h�LԚ��;�Jk���ڨ~���/�l>���YK�k�\����Z;ODie<��e�� hY���� η�3z�(�1����I���ye�--�j��iI��(�.��"|��N-�|�p-�-�Y�|Ma���[�8g��,X�����`�\--im-
��꫷�-�.�t�--��-3x��J�Y�+�t��'��,��&��6~E(z��R�+��O6���a��������ב��3s�g�X����a.�ʵ�_��}���6:gN��\�i ����Q��[��7Un��v��* \��{0�vr^m헏���.�Պ����Ӯ��ҷv�����1��o�*+f}zGR���B"]�L���ڌ[ᵇ��r�M��p�ta�:��Z�0e�gR�~�v�1�7���Z�AΎD<ٶ����F��z���'��^mj���H��� �58hF��J�@��1%�W4�7�L���p-�4���Jx������&Oy���=�W�ڮ�у/u��\C��Q��n`� ��Iu��7���c�a�pӗMM_�8k����t��o�_Ǜ���ٝ�V;We��^k�,w�"%y�靡b�QE�6zT�:&<m��U /u�o��R�����Deaaaa�����?x/�4K��gA�'~'��b$�i����G�z����� I:�p/��K�����Íh\���I�'�tj�#����r"��7�5��A����"T�1�s �m�1����pT���*Ξ�в.[Qk���B��(� �ڀk�tP�)�����n�R�hS�斮�gHro�*Y�>n�ͅ��p�tp�Ɉu=^�}��<��|Cdc���Ÿj���""b�"� �좥�z�	k�K�Ě��,�TٸYDd΄�a
	"�O��<M���v�Od�����ED�^k��y���L��}��d�>�l�x����\M��"��"��\1�^���q�ɫ�vZd=�F����>[�������؏4�t>sRdyU�-�]���S�#/��} �KH���I" ��Ɍ�4O ʿ*�Ű��ޕ5ߛ����ZVX��Y?u4��>���l3�k˟��OGxp^{@䍟ޛ�P33ӕ�c�ow���1�m33���QYK^�^/�py~��&~��Bk�����r�3-33�E�N���ff)�c�$��fv�5$����gfvxfA ��^TXn�(K𕹲�Y���/�p633m0�������>�
P��u/�l�LI���Ԥ	�Ǌ,�qDGo,�W����Q��`��C퐞UO}8��Ol���������y~��Nw���T�u%
Eq���Ɵ<>�'��t��r�9^дڦ�h�P�7[�nD?���I+�U�+���dz��5�x�!y��c�0n���_���i���+*@���f(���.u�@eK��a ��A���7��&�]Z�ֶ� �-�O[��*3loA����5�M)���������m_2���-4]�}��S�ȶe;-��>��z������_.����p@��+�m�}�ڜ8����&O��f˴)��vB�S��"
��mc��c�����W�d����p��`w]՟5�f� �r����KH�)Ƒ��z�}u1��9Vh����wئ�k���ʂt$����T �N�8�H��Q�/���9n��Y�����J�#�[��谎�%��(IG�ߚ�����l�{ə&�o_B��ۊ�B��|���[s�1��Ds���Qg���4��� ��̪���&/}���3�.@�Vcۃ�������f��q�6-k�X;����t���ѩ�QֹW���"�^�~�t�Ʈ��t|Mjf��*)|��E��/5��_Ͽ��������s�T�����ϼ �����pf�<������ء��jX┯G2��4�A;���7���Qoi��j?�x�}�!{{�x�83ל��./VgKg��7�g��@X�4����ǉ.�GfI���~t���e�����k%���Y���D�������&N<4?_���|����=M��k�K��۫���K�S�K��O�HRK�͗�d�:A*�Z$ ���b�+���","9��S$`7�5�Y ��+_��d��U�o���@<���mD$ D1
�D�ơ4�a�ꕟ�2b�J��0Ɲ~y����,-}q��Q�J�"�{��v����QS�&��BY�/jm:L/��׿X@����I���z��&��$�sq�Hr��Z�� p���$��j�a�]��U��e��$f���wI�� �e��t�pI��h�#}}C����]�]�9���\��}%f���PT��r__ߪ7��8=Y�����-�a�3��Kb~�/���pp&�����|i}|}�V��-߉^f2׷����id�o,�����%��{��)����$�}}�Vt.���'����h��,��8W���#eaaaaaaaaaaaaaa����f�Di�b�Af�Mn����,&J9�sa�����'�fn�p��3�v�z�����K�*�5���O8XW���:g:sb,,,,,,,�<�
7O�h�wsj���w֬?���S`|p�j�	}̞�mV�Ӌ���n���;��]�nMU0�r�D<������W�W�ˎ!�>陌����i�UwA�)_@�F_���m����ђ���~��K��NX��r?/��$�뜓e�����_U�����?���wa�"l�$mO���ߣ��ޑ)'�]\W5'��L�+O� �;�87D>[��wȋ��f-R.��8��+�M5�W�;s!ef�2�c�c�(%2ɰ��]��'�U��	�ߣL����յ;��$�CR,ף��~��)Y�c�pm� �}j��FK��(%'���q����Xz���f͹XX����w3b(��?>��Zj���ǽ�(�%c0�]7p\ĕ ���w0�憵��k,�o�6� ��b��ז�M ��3Ѷ��s�h����Y�i�6����|�����bF��YX F�)b�,�Y?�e����SZ�)�t������<:�gbf�01?!���~r�~~��g��h	7>�r�����+to�˻&�>��f���������7��O�����V���.{�dy��$�-Y�GqI�����I���_깨�����V�=�����,�R�-D�V���⺜9`9���������} �)��V�/���t6��ݸ?��
,�c/a���u$NQ=#��Q�u&(z���m��Đ��	��h�O����n�?�y=�MFoA��z��t%Ch��9��z�`�����g�uň�G�n�(�P@�~� ���o\1�������tScto=�]ǽ�Gd�߿E��x>`/��&R^i]M�:2qm�!���	��7�\aQ��V��.\�)����Y�y��cPaejC)�S�_RUW<��>�̎�%�d�h�3�/Gc�y���'��s�Ƞ�	�5���9!Y`�H�A��]2�Sx�b�T�%o���@�R�3C�=�J��)w�Z4��˼� ���������?˳� �
0���S�O:�n�_�D�[G�����Q��J�/9��$>h�ks �sH6(.U�85UKe�a�m�+��RG��O>'5@�_�G�����f��"E�*Ð��d~�Ι�����o��n}*�{}͙�v�?ƌI��IM��#Uudj����0�Ȼ	a��M�!���P�5��>O:SS]S)ė��4�5���qHFMIMx<,Ūd�k��:ų�思 �p�m�z����i���!ʑ �9"?�*���,qt�qk��z��V�|�5��tV(-��ؠ�\4��������T~��[����s �bWDf����ONX�1-�my��'��ݲ'J���Ӭr_�z+���ꩬ�^;YٻQYY�CY9n�2Ծ&'�`K^�`��R��^(+��UwW��x��c���6��i ��_�%�Q�4 *�n����fڀ�<������==�8��P�R����LO�(��^>>��}��MuE��A b���[O�-�ۧ���i�Gg/����S�g�O#e�z��H�~�?�rР�WGE��@�L�/�S����Þ{ι�l��F��wo;y~:�������!��#�xd�>V8����y����S���z��<9�*՞4��n�N�A.z�06�e�W`}7+�C���H��p ���1^
���8T+I��D���u����Xː\��o�/���r��H9�)���Ru�M���+<�d�$^�\$��^iUl�J��e�>���aaaaaa�cH���9�����t���߄���bwC 
@m�F��<M� ϸ����:@�'���G?�L��G0�	�ٹ<��������_K�P恢=�oγ�:E��p�4J.�#�lu19���d5���ܗ����ZZ4�  숂Ut�u���*͓������*��%˝J����C�aY� �ɇ�E�g�&'�����J'vZ���ܗ���Nt=�HV�kihZ��!9��F2be�������axkD'E�Ɵn8�!���CC��JN֬�}���8�u�Tu&.H]��,�dx�T�0�A��2zR@��X��]�t���
D"�m�X��5���E��~;M��e򰧠�-=�rm�#�@���1[ r�5���������3��}�$ۿ�I������Sy~�=��x�9b����b��]��6E=_m5q�?s�߬Ǻ�����v��I_+W����᥉ɏ	&&�#o�,P=��2 ]_&;>}��4����٨;kML��PH�?y}�Y�E�P�&����?�=��LQ�.,�%�8!p�#O��M]BA��=��)���'*h��x�pEq����֫�l:f���rkK�UK�C��{����[�}T�k�^z2sq��\W�Ke���$���wW�l�Qf��^���G'=N�{ӟ�([�Z6��kY��l�������H�ڏ�{t���LS�P��)q�K�sg�z��b�u�6�H�P���!!�U�Cf_j2H�K�L�l[`�Ő��C�,�B��)$�}��#�G	]jB����$���>��,�����0��3"m�;��	������zc�M!?��v
	��[���D/�r�D�Q�yf�fX��Lm��x���p�c�ҷP��p�#%��������c�c��f�`�sH��S$�%c{�X��C��,���?���!T��.���7Q`��:�9nk���J�&��-y�s���F��Qt>sRϚ��4�����~���jq�T���ڃG��r�p�騁�&����8`�������Y�������}�� �rwK5����k�	. 0`qټ��*�o��!f`�ꗢ��\���7˽��w����o��ƻ�y*�Z�������J��k��������R5�r�}�0�I^��4���84�?�4�2dʹyւ��X�n�(��d��X/��pI�dŴ��yf�Q̃M��҉�
�E�5I6��g�+��uW�ᢠpaoo�U	�����qu㉥��a6�s~���g�W�Y���3�N����FA�A��W((���Y#�O�l�b��*��g�I��<=���B����On)Rhy��P���p�X������Qɧ�P�5����򜕍>1+r�utX�RT��'8��O�>���������@y #y�߁Ʈ�x����3�@c�wN�G(��ejm<t��������+H�l��0�Ry�Ffa�[�����.�4έ��$n��8�Ph
��Ğb�/Pk�3�������=�z2c�i9|��k��;�tidZ�怂�b�P�Q
�_�4��Q2�z9��O8���u';�f:�nH�*)�Q^���K��D�s���8�?6�!?��k�%��iB�������.Nc���a���Z&���z�u��M��!��T�p�B�Ty��C�3���y��g�����F~�N�zWy�����K�}&'	m���[wl+�*�OF4�>0ܨ����J�=��B����
��p ��$�v�m��!o� ������% ؼ��@�|�q�t5'�"�(��H��2R�K �̉��������1hq�[Q�٨p����ǟ����i���>j�����
��vw��>��if���C��G_�?+�h���*�R�����,����`�{z݊ȁKt�f��|sǜ�#d��҃�}܃J�-�cc��R�jg�������|,��Z]zr��5we��^+��a�w;蔚F��A� ��TP��@��gJ��9�����7������9�I'�� �a�?ų�v��&TW�bl!5��%����T�1��䇥~�P���x���#�����6 ��7��C|	���g:\�?h���?�$)z-�?L�R;��c���s4��|-��ձ��n���+F��[2����]8��	�����GCbѭs$F'���M�(n���[d)e��U����0���8�[έ��톻�a �Pʇ��1�Z҂^s��u�7��(�vjO܅�B0����%~��)�#c���v�p�G����w/�m9�AVtn�`���p&�k�t�Ť�o�� u��+����:9i::�G�/��zG�X������E�}�G��IގBcu����^:����۪s�OGG��yO��:�5��W��,�y�A�b�Yȵ<������0��:::IT��l�_�q��K��E�]��"}�D�.?�������M�Ň���o�uM���1����9 �;�X�Ci�H�"����tRʫ�b�x]�b}C!�i��Z�b(PZ62��OH|xn��vQvv���6���Iz���.Z3�,,,,��$4�����3�[26�8�u+��j��++���ub?�4���\ud]���N�C����c�<���0~���ԭ���S��g�Ux>@��OR��F���O�I�=���N:��u�)��� �c@�H�?0�� ��D�o�ĺ~t�\�����;Ed��t[� #�th�x��@?%�5���Q�}�0.��x��6���%����QU�O�=�. �X�e^��ykXXXXXXX�����2 >7�iQ�4���}�`��-{���ĂʾN�?����t��?�3����0��Ɋ���ee>��{U��=əS���в
�%y �f�*ۊJL��n/>7*g�\f�d$wh����zX�����E��V?/�}l�p��ڼ��E���2�"˾�-+{��n��6y��I�"��=[���e[~^PV�C�����8���\�b�� V����m8��xT��tz�� �W(��؍�/\��WS3mL{@���W5�y�5�[㓫k}��b�@��>���ʱ��~���i(�����a��,kJߘ��x���pT??8t͡��u���q�B����c4�Fhj�:��k��
�A���O>kj��i�/������L�6U3�Sa~8�d��"��X�_޶;��457�k�,�ɡZ:ZNk�YG�� 	�z'��Ի���t���{�N��_�XZ�o������kw� �����xy��ڝ8����I@*���h]���f'�v� _;�'kͳ��a^��j=n�������w7����� �?�_/��+��y�d��5���!����˽vW�-Έ��z�>����Y���{y��zyYM���(���t"�䕟u���J^���^1g�8�(�7UVN�y��c�5_W<ff���%���T������	|O�[������9(e�K��I�"n�O[.?/G�쐯��;�-uh<#�!?�ST|���&�y�D_��;�&ؙ~���	.�_��%Vi����1��C,���0��'�Vq5���Đ|�81�s���t)�+62�y��#\e4����U�0�L�g`X�N�*��iE�V�����󅓜uW%��Ǩ^y�;/H�r�>��m��NQ�G��*�H������>8�% �s�`$#ޔpʫo�'�:E@@�� mw��4y�R����?�;]�EY���v	�G@Ō��7h��l
�����rLR@����7�+��j�ئe�Up�j-%A���Y4l���/G@ i�+ p4�'�CXL`��A7 ��o(t���~�'���������Ԓ�Y#U���K��;�]�)��3�j�������ⵋ�E7V�^\�~�q��N� <d��>=�-p�wm��+���[���h��j�ظ����Ó县�oRn��(<-�s��s��O7vǝ��4rKcNcc�� �"���is������4����ll��;�#�xMM� ЯQ�tTɭ��%����ll<6����W�������;�Rܡ��!J��ۂ>,����d��8\�>y����-����x�k�1܎Ư�)���W~BC���6	~*Dn�5�ҡ��k�L��*��#�ʠ�1���(�� ���,$�,�f�$$餳'���;Iw���I ��3��������JXdQA�2�>T������Uݷo'�9�3R_νU��_U���[]��_�>��<���=����|�}����W���޹����$Ώ������Zv�ׂPp�o��E����v}2>#^�����x�����1a�c�f�޺[<�0�=��b���9<@�����������]���9�C�
>���u��G��G]�_y�O��%��W���ٴ���=�����Ć����pcJ�A�X�%_U�Ke���',��?H)�U/A��O�����T���Z6��x}0b����z���Ux!p=<��DN���66t+<�!�".���[Ё�X�8�`�h���p*i���bg�/ hV�0p"���!��ı�� o���g"n,|��	��u �KXi\�ě����AD��g��ps�fӺ�%�����}��SG�C����Ǎ�mÆY+:��#����舘�}ʳm�3"[ڨ��9D�E�/Y���վ�)>C�-��_h[���x���)�G�����:���o��ο!bgGD��VYD��D���Ï�F~xb���n�HO<3n��OD(GD�{驈 �_p\�r����������x���_�ˣM��G�N�8��גGa��]9kڻk�G�8����*�t�:t�R�u�����S��|���7l)�������������<=���'�_Vt&�r=��}h��Qp��ҹ�O~�c{�T�����{�OO�ݑ��{Yպ������b����W����O��������]�;1o��яk{��{�����[�����	�2j���1�ߌM,�j5�h��=9��moǶ@T��*�� ��"���x������?F���2 ���gH3�l*p[��2�f `]�\JF�K<�8�S�5������<��$8���x��T���f�F`����.�
j�$ f��g�rA�9�sp#-��82�wp�Ϭ����o���k��?���P`Yq�}-�e��'KV����p�h�j��az�&��:ci��C�}�u�����r���l�}���!��l�r�l��9k���	��d����N�p��p��K/��6�%ﺭ[�_�d��@���yW��[�̼w���2Y�ޕ��%2ًf��#���2�'d�瞼��A8�$X{�5ccd�<;�tY�̒�� g}��{�p8���p8����C�#�?ܝ �xşhD���#���TQ�
�ya3�� �g�l%.%�����a�Ut�Vb�4/�6PD��_�+�$3�6���p8�����p`���l�}�S�ğt���a����� �kԽ�&ݴ�D�B��PDxL�=����U�΃�OO>R�pH?�8�G;[׾����H���Z���S�|��	����
N�D'���?�T\�����7SX��H>������1!LX��12b�͇	���8;��-��C�0�, ��|-��	}��0t��O���D=q��%����%��x<T����J�� ^N3βN�����x���b{~1���r���ξ��_R6b�~���y�����,|j p4E�ZB��_�gC�ڱ�H�3��;�
���P>1]i8���as,�pJ���^��3��nq>�ùx���7jc���W�WSʉY5ہX�5����Q�����ԙ������<��Wt�: ^�����ev �Y�]�緍 .lS�J��m��D�zx3���x#�A�P6��������l��wCw�0����Λ�n��i��;&8;Gt#>����:�̲�tnLr:?q�RX���;�]�����>��K�;O�~s�}p�3�����>�=%N����g�:�j��\������/'!m:{o�orN���Z�tr#�������߮�����hw>�c�m	OH���p.(�TÈͲL�E���ȥ�ذ~�� �'����g���#�bN҉�#��E4�XEC6n��������M�r�K�h�m¯T�t��0N�G+f̃�8�4�$,f��W��);���\�PO��}�x��h$&����.�����/�&н"���Y�����6Ts�o�.l#��)> �f�Ŝ��!gzid�dt�N���� ��T�6�Ut�6c��|.a�2^�y�<#��Rx��W�	i6��[�o�l1�����3{b��Q��m���G?^Ǿ�i��F������:q�}��o�C!���'��!�?�~
�n�>Am>=	��W�GEsf���p.LfZr���
�L�5�n���t5NۢF����8�5�"�ǳ�l1d�M��� ���ENOʯ��6F��48]��d����a���ns� ����v[���Zd��Q9���p�Wz<�N���l��U_���w{�������e�s�����yx��橳�5fay}�ǌ�\X��i�u�j̍n��]���-*T�T�~-%�)�Y��}:ߜk*.1;�n�������v��]�mt;��ƅen��lB](��TZ��ԣ����s�k�5u u�G�;S��������vgֳ�l�W��b���Z��y����P�@�r��n=����p���n�����D�v�I	Qֲ��q���Vې�䮺:����Y�h�6��T�J�Bw��\VZ]�O�v)i5����M7�@0\�6[���ΌD���+�z�J�W�(3��z}BT4�mv�ݓ��~�ԩ�yLVF�B��q:�N����ק�3�#&jt�D�@�MKV*ST:eJ\�|���y�n�e*�����,�V������t��z}J+P���UA�|�t�N�W%�3S���L�N���Х����]�ԻoH�ҩc��Y�'��X��p���\4���a ������l{JME���0����|��x�� �d��VT5Y���ga𞻨���'�tLru.����w#z�����`q=%q/Ȑ���p8�E�.�s���&���{.��R�'=�D}��L����*��u
P��+2>عZ��0���G��?B������[jPv�$F"���N�K��^���"CqUV��\a,���f[U��V�e���*lz��V]d�dT���O(3WV�l��6���ږ�DzUfK�O&���TPd�*�2 T٪��
"�Q����5Y*�M��4��b2�A��f5��w�-6K��VVjC�my*��ZU^>*,U�<t������"HG��&e
�XiW�L��[�BR̳Y+��s
�ip{4v�p�,�V �ׂ_0w�C��h_�t�7�K�M �zG��m�z=NW{]���i�� ,��KK���jr:��-����x͕��%M�^k����jn2����--�O���h45���j��
<M�	�b/������zۛ�^gM�w��H�e5!���0�n)(��A���̵X��ێʵ-��x��MMKjr�����Y�m�_d��+f�Tp{�p�n���4nnty}��]]K��=M]-u�t�D�.��/rw��6u-�_��s5t��-��v�|���.{[s]K�����R[�\lk�ho�;ʪ��8�/�1��Բ�������j�K�`�˜&��Ҁa�����׼���eT����Vmu�n����k�]�T"b�Mw܈m� LO��Si"��h�	y�&u�h�-��֨c4��Bso��0_��(�U���)�Ij���i�3�EA�J7Gs�4Er�&MPF$�S\�F�ֈ��D����rӔ�T8Jz�麘h�:n~���'�3=��7���
�����86��}�ـ��@lp������t����x�[���p��� z΀`�+7w��1 �z=���n���Yl���\7���t�*���j��(� ��+�KL���Z]Rf���R�!���������%�U�j���+�sڊ�ߦ�w���2J�T�+KҫJ�ʊ�+̦Ң�|��J���
�5[+���h����xF�uLּ�=��)�����"��:��3Z+��L�o�2��9� ��*���l)Re���c1W��A����	��Á�x�۳c�JN�4�����I�<]z^۰I@��Uff�h��Qe'*��Y����!7#'_���P$(��4Y�q����?o��KN��+�5����BCnNA~nn�aa������K��/��B�ڄ� ~���fE����څ:j'3g
�	����ǥe�$ץ4dgi���˜-�#N��E�o���|��1o�2(xj�>Gb{c�{�Z^!���'H�>l��k��T�e4��ѐL ����O���0Y|�J�ń1Fp���|���vi9*�c>�$M̫�_t��
�m���
Pߩ�[!�=�c!�9|B�٘�=W��>��v��I���Jo���'����e�7������v�+��'ؼ]'�����H�eZ�Z�0O�M[����UESFrE\�F{�L�R>'!�k�Z�Z+ǡJ��i�Ą4�{!E� �����4E����CRJlL�fr�V�Qj��Q��d�v�=�x��,9�G���ՂعB[�uC�V�����k�IKN�75%f���/����'���p8���p8�A�@���FЕ�!��\
^������ٜ1���{g0�
�����A�� ��Z!����{f�n� ��C7���P=B
`K�p8�ùh���A~vN~v�o�d'��$˧d��ꍅ�� ���^h��f
�FcA�17#S5ub�n�����	S�;J..< 1!&� ��"��B�ѐ�И�����J��TX�O�.2�И��+�L/0�rI>C��a������ļ��hm����Z^=,t�^���^����4��ۄ4�O����ϳB�<�M!�R�9C��қ^��
C��؁��o�ޞ�CrqW��FQ�����̹���� ߮%S�C��j>��+�W�سa$����%�N�w�=j�F����u<�1�����v��|~$��dBv��8*�m������(�,�Oe }�������"��}7�i��$�0̡��:���a4Ķx}2J�$���kc	�'�uD(3�X~����~5���5��׈�I��bO2
�����fm������｠Ʋk�p���Y��.���v^g��ѽ��$VW����kiho6�4-�:�|]]��.������57۝��m�M�uU��Ʀf��������֌���._g
�-��6_W�sqWSc��m��~��^J��̈́�N_GS��z�o����w��K�޶*�4
��"���3@�T��p8炢u?$��z�Y�����wс� u�{�}3�%���B�c:p��G�-l�i����<�a��?� ���!U�y@�}���x�����X�Q���=�8�2�XP`׽�Ի�|�ù����_ށN=4�����[x=�C�����v���a�{�; ~z�%�k�H6�@M����������m�V���7���D�s�[���_#�����)�nV���N �g߃A	u(�"T�CaiA'�֧�;D/�膔	iE�=�<�'�A����?9���p8��\����L�_>�?=i���ph9�}��>���kg��g�z�h@���G_��4=h��\�V�"�>	C��c	#L��i0PX��E\?yYA��ù �6r|�İq! DM�	��5�m�D�>+��z$�W��Dp�'!\�џ���p8�<�|΅>������N��L*���i*���P5�'���8�ap�S�����)��I�a�0@8�c�~i�iI�u�,��99��~N��>��/���@��^#\��,q\
͊�'��v) ͐A]A[H	�� w%��{]AUiι�``�iV(��p��������O �C�b�x�y�	�zCBV^��/�u)����뗶G�������L%r�T�V����YZO��O^W i�3x�ߕ`<�b_��������_��2Y��8��s@�]F?��r���ZV8�|�9A�H�r��EΗ�D��q���S�]f�1%��+-�7�2X�(�=�|���/& gZ6 �KB+���C�C�p ���_#�p�!�`�b�� �<A�)�	M���'LO�>�������Ӌ�p8���p8��%t|"8��׸�0�6� ���΅���b�4��C��p�+6��&�p8�ùh�k�E��A����9)<�2�A@�Ti;8���:<��,�;$I�������F��`;}�ׂ	�{��6�C�&!;������:!��A� "�`�"9;D���~?oq���%��"��C�?��>����_�L.gBz�qT��}��n8!vSXD�	<��@l��p}�qQ>Β"n�3������Z_���,h�9R�)�$�ȥ���p8�?̺�a��2�JB!AӢ#LO�fH�CʳC�"�G�_�'N�A��� ���\,H�L��+E<�!��܏Ų~�/�°zX{}�K�#"I�a�^���8�TREE  �����������������                              �                    j                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OHDR�$           �              �           �t     S          +         �                   �        �           ������������������������E         _Netcdf4Coordinates                              D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           \        DIMENSION_LIST                              �     �      �     �       ��HOCHK    ��     �      l     0   REFERENCE_LIST 6     dataset        dimension                         �             Y�_OCHK    ?      @ 4 4�  \        DIMENSION_LIST                              �     �      �     �   (WOCHK    	�
     Q       (        NAME          carrier_tiers   �O}OHDR�$           j              j           �t     S          +         �                   $�        j           ������������������������E         _Netcdf4Coordinates                           	   D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           \        DIMENSION_LIST                              �     �      �     �       �.pwOHDR4           f       �              f       �           �T     S          +         �                   "�        f   �           ������������������������I         _Netcdf4Coordinates                                 D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           l        DIMENSION_LIST                              �     �      �     �      �     �       ��UmOCHK    ��     �       7    
    is_result                           +        _Netcdf4Dimid                �[{`&  �   }��  x^]�mhSW����t֡׉/\͈�H����W��a��/Ld����:u��q�h���h���I>�jS�Z��e�z!���.�4M�8�f[��zt'������<��=�yJNe�4���vNɩj���/Z��(x�q���{%g_6�����V֯�]!�?���;��@�����$*��ֿL����A��F�i�+�+��ġ���_�W{C��*���\�ψ�UY�S+H����I2G����O�����En��*E)�kw���^�F����G�y,�=��u�XVgJ�e�NxG���K�G3�6���l����P`�w�+�TV]/��ԡ���#��3��2�.i������0��j�*}��?4)�̄&q�Oo�Y~I{0�]
�~��Y2�ð%���''��2��&311M�:��+LEp�|*�>>��j`È��׆u��0һ����X�"b�|�?]_�al��"NM�~Q2M�������W�P+g/�0�a���a��r�h�F����9aD��J8W9����$(�C&�N;;VW6U~\(���2�<�'Ϧ�����I�h��@r�!�y����*�9�)bs���4��p�ϡ�E+��L��C���4RC	��`�7GQ�j�*���y~g�'��.ɴ�;d����q
�ed`_�����1�Zw�Z��:q�B7�d�v���Qݮ�b�y�a�!�Nȓ��dB��,�TREE  ����������������.                               ��                    �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      TREE  �����������������                              \�                    j                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OCHK    ��     �       |     0   REFERENCE_LIST 6     dataset        dimension                         �                          �[S            ��             !�             ԫ�pOCHK    �T     S       \        DIMENSION_LIST                              �     �      �     �       ��KOCHK    ��     �      +        _Netcdf4Dimid                oE       +Fg�OHDR $           �              �           8�     l          +         �                   �E        �           ������������������������E         _Netcdf4Coordinates                                    �Z'�BTLF l        �  + m        �  $ n        "  $ o        F  8 p        ~  7 q        �  3 r          # s        8  ' t        _  2 u        �  > v        �  ) w        �   x        �   y        	   z        3	  > {        q	  ) |        �	    }        �	   ~        �  %         
  + �        �	   �        �  & �        �  # �        �   �        �  ! M<��                                                                                                                               OCHK    l�     �       l     0   REFERENCE_LIST 6     dataset        dimension                         �             ���OCHK    �      `      |     0   REFERENCE_LIST 6     dataset        dimension                         ��             ~Q            B���FSSE 	i       �   �   �     �	     �     �   G �   ��j9    �	OHDR�$           �              �           .�     �          +         �                   %�        �           ������������������������E         _Netcdf4Coordinates                              D        _FillValue  ?      @ 4 4�                      �7    
    is_result                               J�$�                                           x^]�kHTA��`�mB"*ꐵDP�B-)��#�X�E��Rt�B�(�Ad�Y���]555��9�q)�Y3J�M�QJ�ĺP'���G3�0��<����7ǧ�����5�����j��;���f_��l��iZj�{:Z�X���2��R珫�����C����hh�����m��{�4i8���jSq�v��jK��ꛄd�K�-]m�������T��GJ�,dh�H�5�$�ͺ���Bn�,��UU�������hS�K��L^�	���Uz�?�뭟�l�Q�]`ם_���j��\�%s(i�9����G�XVS�#�х���Wk�U��)�wǋ�1"�+D�`���x�8�$X����ҋ^��V���)1�#D��F��ٌ���V^���]�|��)!r��mD��Q%�J#F9�7ZlM02bX�[��x�Aۋ8�4Y����2g���${^��>�d*����N����:�h�����0�4}^�+�3c�4�����aR�Y'?�m:��y+k�IZpD���Q�dE���fut9)A��xB2���Qs�Q"��?�$LLӼP����䚚4��fW�C�"i��vE�lV�脗�O�s#]w�����D[����A27耾�/z��.X#2���NE�\7ԃ���E%���z�r ����������Gug��̿����<��-F����@9TREE  ����������������Pf                                      b�                    f       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^�y8U���T4 B(M�dNRJ�T$%��Ȑ
�B�̥�Dh �T�������$���Z{�}����<�?~�s}j����5ڃ��^�^� .�I�7:S���/ /g����t�r̫�0������F�� �*H���xb,IH�G�i ~@tF�F \{|��].�ҝ� 3}*�t��T�~|���M/ �+t���2���6���/{$'�Q3\	E�Gds~��8��o�::ʮg���N��NH��<`������Ϗ�i'����cMˈ7s��T�[�zӮ�6�@lUݼ##�h�WS��a���E��xv]ܮ �/vvϝ-�a��g⋞�Oک�
��vv�v1v���6&
(���?��-,�3:3Տi�$y���.�Ɏ��K�f��ʦI����x���Ml��׹M;�{E�H�X�v�jX4���xb��� �k7�K��| �ٍg���>���Hj��@�ӷ}77��&&��v�����b�N��D�<$�o񰿃��N,��;d�A[��6 �&U�L<c���qn��s���Ԇg�HL�8�K���������Q�i�����^�ËW�Y���D��w+t�f'.���a��wC���,�2�%qh۩y)��n�PI�s՞n�9*�P�oՈ���׆6��ֈ��������?���Qo�G?������Y����t*Z4rͧ[���Q���Nо��}����ͺj�~ ��SVK�.����@!�}�#����uڡ9�����z��w�Ywt��J�0��1���CȲ�cf����/g�y3����������u�VR��i���ْ����ܑB��? �z���-X��*̄x*XXXXX�������ѭ~>ެF���@���I�`��sU� ��u5�+}�<��0D�]R��ɢ(�	�r��Η'��:���F�c���w�E�m�����������1��4���Q�G%���`�[P�^h�+o-�6 zO<k�_I�x��"�PrAjW���>��Q�u8Vtb�U��h�5vU��}D�݃ýaۘ��^��S�Dڋ,��]}s�8�rp�����a�)nCCcN�;�{�Z�2z���*��}=�/sp�{u;������f-��fe�����~
U�Z6�@�J�ºa�fj	�T�88�|�� �yc��Ĥ����;8��u@9L���pi��ep.A����V�� 7��$�^j88�{��:8��V�V��簫r�p�"�ŏhF����F�@9{��(�{�����\W��B=�^9#�钙l�a�>��⣊��ȤWݾ e��Z�Y��狶_4 ���D*�k$���=+];�4�@�4��Yz�������-*�o{Q����{�g��
�(\�&d�TLA������?;�~8���j��XZ;(�i߷���Q�{zz���tÍ�� �fn%Q�)*}D�PW��t� 1i��t�y�;�/��/m#��ե�ly7�Z��F~7oL�?�#�_zT�1���b�}�x5�ymz��t�H�LѲY+#�CL�@��S=�D�����x��T��t�A_k"X~y(��+�W�0a�
�B�A�#�#��fŮ����W�DWF�I��u��L���>��EE���-�T��,�O�A胉0/��;$�5��Wӥ.İ~Ŀ�*�]�d�j�ߓi-Q<XB���X�I�$N]��S��kͼ���$�4J��|8Y��	�˻$$T�e���Z_�/�IK.G!|��j|#d`���i.MwF���v�����Z]���:�|�y;IHL���ۧ��FK��Q/�䎿<����Ճ.�i�]��O�=H=՟�)DF����S���|§�p��l�I����g���:,�1`��i�8[��0��ᡊ��)�L�,�9�sޮ$���J�*Zr+��L45/�F7����+�4��hj���z�&VSs��; /$�8r�Y�í�!|���GIhXԼ�h���6M�Ǎ �������=�w�ǎr2��h ��u��,�y�m�'����Ux���4?nU�,��Լf�QS.�I3�U��sh����o��y�E-JU�oN;q��&�u^������N$�����t������5���,/��6�|ќ	+_mxݞ-�������F9ݺ����P\@𢌊�W>	��i�������>�ي��}�-[o���R��]gt7������Bb�L���>d��w����+ǻ�k���ug������e��ū�B f���Wk���'/Ⱦ4~�0w��U����ʚ���5����w�>�a��F���bN�O���b�+Yƕ_ѵv��7���?X���ø����U�U�o���y��Tn�mD�A�������)w�z���L����HK/;`�g �<7G��ְ�MD#8��b��������lS���Pz��7�BW�
����v'zvO�����9��$����(E?,�!JI30j:�tB��9��,���Q2^|�`���f����=�s���O�_t3>�n���f�S$�{�|�r�.����PZ|�7����O��:e�A��y�Q-���G8���1Fu<�6�>ݐ������5>~�c��������㏭E�,>��R|�얛q���V�����'���O��?��s,,A���ٳ���ot�YXXXXXXXXXXXXXX��ǜN��+�R���pshdF�X��3��Z����{�������3�H��f���)�>�I=a	Y [J��rX2sa,,,,,,,zľ��*�x�iC`I�ƺ{b\��a�˴c�o�0˻!{bl�����o������~d>B�en�ӯ��������u[�I�8�~�̫ZcNՇd��'���50����J=�\K���Z����{�N�yԿ�t3��0��~�7����6O���ϫ��״���p�C;����.7��U�8��\�G�u�gH��:yx�:Cw]���7������N��t����ȭ�n��:��I����:��
�_�p��,ꒇ�j�)e&�I'��k���G�6��6 �W��&r=%�T�	��<�b ����$�����Ίd��Ć<��6gAf�XG8̽z��N��+缏������F�N��к���d�Ͻ�ӃCs��~�<;�> �xo9z�'v���/g�U���G�����^4�a�`!�l���v !X�J���/V��	!�г&ϢU�y�C�FXX �s8z�i�婱��	�~a�Oo���AO�ކ����C{ׯ���z�o����}}������uW7i���Q�O��7���/�o�o�|t�1}����-�+:Z!��%���y�G?:�=> ��@u9�{o0�}g��R�z�RG�OXM�{�w�[f��}wD�ł�8�yr���XXXXXXX��0���! ��M� &P�� �7����
`�*���0@���$}��ć[n��:�.@���@$:�9.�2�$�ψ���X4�X	���6�D�C�����y��igaaa���J'��|���%��� /��ofp����q� �UOͽ< 0�~e�m���<�߹�i?�� �;Y��)�N	���{<#0��G�6�z��O�x�o_��R���K'�ɄZ9�����9�v�ּ.��A
��i/�
�({��[������m0p/�i�������gR�Y ���;vt�{&��-"��G����{Ժ�1�_����Q�V*��Fr��YXXXXXX�[t%
ґL�g�_e$�/��ĝ�C��:
�?藯��f���Z��G�s ��Z�~	��[.��W_�L]}�W�wE��|���D�gy��`�?M��7C,�j�y|v����չ ����_�o�Eu���J�'��ԉ��D}�	O��M���?�����pfF�yx4��s��;ofz��abMz1���)a�i��e<^��p��[�եt_����D&���{�N�)��՜=���FUM��[�P��A�/jVd�i��,;2����ҐL�`���v��9
"��/hjf�\Er�����Y͆K���z<�4I��XTWGl���P�����NB�8fbq�����f��Ӭ-���]�W����Y��ɷ^SS3KS�����[�?����C#��W�e��MM�������g_峹��h'� �n���
رzϏ��$Á%y��-W�@��]$5�Y~.+�|�� �Z��P6�GYْ	ׂ*�ʜ���:�n`�=)��p���[ܺ�/�����
���=_V�<H��D��gÞ������Be�
��Y)5�����w/Ax���?��N�i�l�{YciY�0�ce����J�M�,f��i>���:Ұ���e6-#kJ����:��>�����KA��,5>�m� �/���{�ɚ>e��8˟D?�,z�/��>	H�~G�*��.�Ob��]��^� *���@ S����E���#�;�xOWߕ%�vj���ڼk:���ZյlEW����������18���o9�Esq0���7�
�GXG�Y��	߼M	����}�a�:��� ���u^���,4��KZUp
�Fx�tW���M$ǭ������	f+���U����f�o,���Rt�N�����#�jJCNJJ��e$��Ǭݐ�	 e�%�R&.JI�t,3��:%e����g#SV?p9�������\H9��4w�yJ�u��f�8T���]�F����[!}}���!�m�BJ�EJ���DTJ$�ߎ�a�2�t���_�<���\�����Q��))Nqߔ�mVy;��M�ڮ��Dܔ{o��82XUC>���R����0�@_p	��/���:�j\��b��K��-�c�awg9����Z<�}�@w����� '^0ӱ0Zca�k�ś�*�y�,��ZX����kX��#s� ��[W�_-JM���荡�n���IyX��⊅���9+T�-����煨�c�M��-�룆7-,�����2J��/}G K�d�c�XX��M�5ϳ�K����4 Yf�^/�(��Ȼ� q�%Z`;��ȕ�gxzK��,bQ2�mވ��U.�w��N �Ч�e�L><2뽳Lk~PY|�R٠貲\gռ:vt�Z\��m��W��;���,�^�k��/
Eۆ��̅�M��2хۆ�<oLW��)[͈�ajoPh+�v2�����Q���~s��v�=�7��j<���^F��I��sZ�:����>bY�.�H���&p�f�g���%Z��m�YU�@� ō|�}jzc���&�Z�?k�H��_NB��ے�C?��m9*p��>��l\��sj	��]����s�ey;	x)�oXF��h	l�|�|��P�
[W`� �zJ��~@���&�?���V�|O&����T�7|�c��`�����q���-�%�b*D�A�q�_����Z\D7t��%��������'T�!]u|WO�U��zG�����j/�::���S䠣���b��_n�,�����{�>�:�oGC�/��o{�K�pq<�v�S ����{����o�J�e�.�����54Oڼ�|Kt��|�3��⨪qt��aG�bOǆRG���ꎥ";�2ׄY��!�����:~]��{xd��Ԕ6�Ij�&H�Q2�l[<��%�����S�ߍ˒�	�ؠ��a�+<u:�Z�9�j�x�� w����u�W��?F�`^�΢����gL�.ػ��`[c�slj�|��7��
���-zA0zIӐ0�:�EurS��Ƀ�f�)P�~��tA~uA�N�D��Hs}鲳~�

1���s�3Ϸ\�-�;�7gJ�s����󂂂��:����}��Q) ��a��mw��,+�'9._,!G��E]���Ux������b'Q�%y�)~�@4^S��J7У��'ɯ(�)��N�XKw����U']��\bP���v:Z�q��d~c˧c'`��׿n���P@-iќV�AfC�Y4�� %��H&����� 9��i��X0<� ��H�^���4����Nc��q�/t�o�pFp\3�t`���Q�C����-jk���MP�ag������hC�Qq|AW��[�L���Ėƍ���ْ�=o�I� �F�4[E�z���|�yw�,R��7���#4�tD\ܴ��q���$�(ǉ,F�-.�%2.�������k 긲r���->�u���H�@����)Ė�������������������Dٯ_�!9i� n��HW��{@t�98���_�����C���] �?�c�N&�(��w�4����E '��9�0��0�?�g˸
��zʬ|�����\����ㆶ?ȩ�0LW�,F.{ݶ����ۣ�g���W.�{If��N��|}{��|�&Y������=�Q֥����S���Z�[�u��n�܎�c�it���J�#uMM�i�:�)�� l#V�u^G�d���C�S�Ũ|������P�� ,��)��PC��v�	,�nN��K:1��VwU3n�G�3,�uT�CӒ@�3�כdf��k���.:a�It���< hF��RN ��('��x��	|A�c�b�,`�G�	�w��7� I��\( le��H� �dSp�����!�L����o6��.J ����IW����f����jgaa�sѥ����`6�u(pt8�1�|r��$Ŷ����ƌR��a��Δ/��$�%=_E�p3�c����x�C	�~�mC�R|��Ϡ�@�Y�C��& R�ͧz������9�v^X듈�V=F���#waJ7�<0���2$�f��[�\�X�͗���/:����d���g�Wm��n��_R�n*���R�rO�ﲝO�����痼��$���?'$/�޹���v�g~��|�w"ɱjÏ�ާG^�����?�j7_J�K�[Z1	����ξ��ao6o�H�-k��Yƚ�;�]�?�k%��iܟ�C$`�B8�,�Y}  ��#�1{d�P��ގ�q�cbP��h�ہ�� ��E�u ��+��Sm�n5��%�M\��;�C0�����������I.��-$�c�(KC�����sGs�.�]rnW= 9=�iw�4)\y$I�,�3�������|t*$�,���)c���x�[�/ �����3�]�; ��y)׽�����P�Q�졨U�?=� T�ƚ:K{�M�ɤP@����ǐEc��i�O,v���h��c5��b��S�g��]�8��I���9x����2aja��?( /�=5<W�� ��|3��������W��t<�4<���R]��Y� [MB�u����Lo��U{緧���Z�v�*@�q|ƌ���:;K�~<zx.�ӧ�{gl܋��k���	k�Z��"/g�h���[��NE?95�^�&(����u����ޝG�ڍ��-�����ӳ��s`��-����:ߤa���X�x�'��*mT?�~�Z�Lg�עN�_�JRV�R5��@2L~g�1��&�?�~�rv�c H<ϡ�Uzk�1Kcdd�>�E���0Uy���2�*^�l�r%�:��^7]>B����0���y\�#��2y�Sd��%�)���Rr����I�]�g��Q[�����u��~2�=edέ�h�}Xfzr�o�ed����Q��������SW�q������}�{� �M��N�.#��3P�����^�2���	���=}m��Zͽ�zC���?���%��CΧ��/{���w�n���}���Z���X^>i�X�c`v���� ��=����2�<�wa�׆�)뻱�|��[�����"��-���x�Z�f9�(���fO������ů��&6�S���������?Օ�\�)�Z^>dw��g�1�,[^��j�o�|h��D����岊�V�+;�Kn��{3�|�y{�Y�#���HD�O˟�γ km ��'t��:���lȺ�
��1�p��}���$��d� Yj�'ux�q���3 Z��j�����M\e�`>�r�gqN���,�޼�aaaaaa�cx2���R��!V~�PF�ݙ��(�nx�����z���|�'4�3���k�����w��?|iw�&=9k�g/�<ɐx��VvU��}���W�b[�壻��59[�T5Ð9�VF��yxܱ�[��!��r7���5��9>�VG��g���|�*�{S=<��롯2�#�9�����u�K$�zL[�m��Zm���yT?��1�!)w�CN?�/�P���оn=�@��86��Cdu�@8�(�M��UM��W�����%١��<<Z���G�t=j�!>:���L��g�ǝ��pQM��� �WJ�{1��b(cƯ}�3N�N��T�d`��n�u��w�4-���Z��;����e��~3z~��ڤ.�q~���+���4$[4��44��R��B��[��rZ���٧dG���jƜ�ꧼ5t5446���^��1�D�#5<Fl�8q5l��砡�f����!� �4TS<$��kh�:���;A��%���;c�o���\w��a��[_�`lZ���H�y����þ��۲�=����� �+��ފ�ϘW��.�7NJ�N�v�o���~�W.��ۗ\ ~%i�ɛ��"��T�ZӠ�+5}�Nq�4�y�'��kn�׫�te���*F��d�.�mP������5՞%O����|��MBD�� \2O�0
��[T̄�(���cg�j����k��JWӒW��p;#,��z��jC'���t�j�����2�}1����ZHV���t��6���p�����_=��p@��EF�ʟ���rj	QD5����:Ԫ��-o���Ҳbo��"&%�X]=����A	��6�0ދ��"�Y|`��\�����< z��R�����?0_&3�������w)�nQΐ,s���Z!�%W#BȽ+Tu��,��H:��V��i�c]M_]ݻ���贂$�}��ꡫ����<]]���#�)M�4�}p�:Pף<��8\�P�k��ۡ�+�Nh6C"c�
�
�O���%M#��¯E{���9�m�j!{���G@"Kw�~s�	������]WW`{��v�A��z]��.���p�n�(�~�����7+Y�C���E;
��&���I�sd<�M.���ڽ����Zs0z��6GX�����Ch�kG�H�ݺ�ixTc�Y��p��W��NJ�n;�����F-�r�A#���:Vy=5�z��77����u9;��}c�EQH�����v�l�[[���}]cw�=����B���_�΀�£�b_>����a;�r��g[[[�V[�EK��� �@?h<�2��-so0�-�T���p�h3��� ��000�@�GO _r��#�c��� �e��TI��M���I�y�	Љ�a����HW3aYjN�zɼ�X�[��7q�m���1�L|	�r Q"�bэb	6��\
к��tu��PO�2*/�2P�P�bF���ST�	����ݻ���
p�yCR|9S����t�a�woB1�w��d��H�+�M�x���#�wdjk�i�h��~t���ch'1���Z�S�A��������NLz�ՁJ?� ���?RJ����D#{�捆�=�������M;�L[;�l�v������a�m����jk�}����#�KڵC���Z��!������|Fv��4���O���jXXXXXXXXXXXXXXX��!+�T��G��|)���#b�#I9��cpuO����{ ̸�[8a�`�SH�`����� �|�
Rd�9[0��������ǰ`Wa`n�e9��Qon�z��s]t���
%ׅk� 6��W�t�f�҈�JJzzRJ[}�ZCC�GM(�����n�9H���~a���X语e˕��+)�L��|J��++aC�4Yz5��H%�!w%[ Ki܄��a���9�s�ha�g:� Q.y�x��m�����gt����R*�* ��O �6��?)�:)JD��]��k�cf��_!y���?xM'G�����<�v[���q�4�M�\�+��7��_C��|$T
^���I�KH�/n?c�%	@����u{s��!%�����!jgY���C"���E�H���:Ϸ�o� ��`���cy�7�� b��z�y3�,,,6�t*A���T{��<��m�Yn��'�b]�<{ �=�0�������y 	�9x?�,p+�d0��x��8.�R ?lg�`֟j��s�	������?�ޥ��u����S�"3#Ӿ�v4�������c�;B�5�g
oe?���zV��[K�N���8��Ю���"?%�ED�l�S���P�ݚ��{���`�p�1 �Bc���}�Z?�x9,0��� �9?��AkJ@�7�S����ZT���t��S����t_�����Aڄ���������
��?�=�&�{��% ���A9�3��s���|��_$[� �1&1��?!�c�B5!���I��� ��C$,�sſ�T��4�b����>p�_�e�w\���F�^Pd�{�$Ʊ:��:Q�:��y��+���I��՘��_�/3���zpj�>��qIl�~�r8��'�g~*��f����|��.�2q#q�q ����l4�p�m�Kk�]�2������ϯ#�'	�$�l�2l0�Q��ywt�Ů�dF����(�8����'��kS&�
8��:�P���< &`}"���  �!�C����؎���;��6|{��	8E�iS�q��S���1�5,,,,,,,�m����E �#J���V8��� @U�B�G=��iz3_�ȝ�Doe^�D$S�Z�2<��}���}����S/
�)��?�w���P�Ӌ ��G��"Yt_p����GK�=qK���ǧ�.'���1:�G�CO<p���+��l�.��IO�^�ގzz������X���Յ�]V���7fv]OO�P�B���sE-��c���^/9�Eux�cJ�N�^�n
�8�t���{*+O����m��O�+�^�U΅EAu�+����AB��z�S 'b���xYY�\<1 ����f��J��ܒ�2��zU��ԧ�њ:9���J��V�߫�l�)~uIjn�p�����Z*�{VVV�WVVX�W��[W����q+�/H�����zt�r�R%Ӭ�%A������w��J�C#̅��}��v��RE��-K�"=�R�������_�̻�t�y�(ssՓo�:mn>@�}��EO�U��9Ê"��}O��a�p!�<9t�l1gss����թ��t�8zG��fpR�����M���*~9����<ͅ��H�� c�Xen^w���U��A�?����#
D7�_i�k��':�r�3Jq�2��ߗ�0?zϜ����ɤ�ܷ4����RaɃx�� ���gaaaa����^ 2���J$ތ☧kZ���UeC��D�g"�wfo�j�7��܇ח7�@8d+R����q� ]]�N�	%x>a��}�:�0~O��'#����~XXXXXX�T�~/f}��m�r�����Sd���'�)Y�}z�_E��I������Q�7�:�������T��IN�7�>̒"B���c�����6ςzk��75fo��ץ_��m[�v�F�_u{(*:_�h�^Qў��[�3SqyO�/C���=�&*j}]W��ST�T%y���Dш[�y ���ݛ>�*$Ɖ��$*:���X*$Z�z,,���� �>�z�Ko��):�CTt��(b�����虔Y�Ja�N�8���[o�+/���h���%輾⾢���f�6��-I��)Z�rReb֪��@$���QB� 2C�-�$�#ʿ�d�.������sѳAa9�C�͊'.6�%;��ճ	�]T��?C!т�' qWZ|��3���:��FlQ�M�aQ�c��?B.�ɂ�(���g.�]�+]�C�Ȳ_���滺������Xv�<�������5�66RC�m��Dgml����D��`�{͇�_ Kll�78j���t�Թ��ƶʆ���M� /l���ޏ��q��ϰp�w�	�3���8�&s��QV+_Jt��4�"1S�l<E|p��v�z9��a{߄��L���҇J�IA���Ma��S{zm�����o�E�xNJ�kS����;8����X5�2�N@{��_�ׇI^6 ��Q�.t?=�y�wa)1���p��f�t��.[�p�e�.lL9���~��6�:45-�w�i�@Sf���]]#�CB$�T/4Vi�5%�l��jj*9~�zY�E���&�)����+���`dxa���*�
M-�sS�#��]Vn�!�Դ�SKx��pP��4mx���NMMkF'�p"1M�wE�����\����S����;�.3
�?��К
�u@K�.2�k	�z�XW��q�V`�ȷ�>.W�O�jF!�@�A8Ն��H�a�.�_l�^t�sތޑ����~�������ع$�A�ķ�4�v��X�f�gd��q��� n�+{#�pӺ��1Wa����+� W��m_��������
h<��'�_����u�9J��hL���0�di�U� `�}��M6v	�,ة�d����xr���k_e���ƾ�{��?���۲��c-կ[�9tZ���X$p���|$_TN�}l�կ>L.���G���܁	��S,���-�k��[�cc[ӆ����x��B�f�������c�������^^b��I+O�l�5q���+��f�?������v��������xNqeW�W�գ�K�^2"^^Z�!3�ו.�(���˫IWq��Ux¡C#��W̪�5:=ݽ
�������dPL���5�6�A�WF^��a��7
��z�o���$�+oM�4�T$�s5���5OD���%Pc�����!��1 `�;�FX��!��Դ #�a?� ����q����iV�8M�����a���穆w�I�a�0�8���c�&
:Њ=��w��,��6}��K즤�|Ĥ��$������I����#�	Ͻ!aO��Qq~V�~�b:�N#Fm�qj��˞r����$CǙ�!pj�G:w��J,1t�lh�~��GC������=�����KGj+�������'���q[�v>�m��F�x���ő�N�)���~�+n��f�T��?+�ݟ�4	},:?�q�ZTфv1:4�t�r��; 4��ُ��C�I�KV�T�� �]��-&�1�$V��1$;e>�V+��`�C��s�Á�C�l�j��8¥L�?���!�����I�?�}����h.�6�|���1sa,,,,,,,�Lr��c��$�Z��m�z7\<��'�����Z �eN�#�,n2��dhxzS���Ц�K6{mZ�~��쇍�`���A`ï�A�Y޾#���eh#oh�㧭ɓdC�<0Ę��t�,�h(}��p�ԛ�_�z�{R��r�=�y�^�2�ʙϥo��+ۍK���
 ����B�^�M>@�.Ÿ�V�������RL����?������
 R~����A�Y��w
(�����f�����4��=�7�]�b)CA����i�2�]��G2l����z�]PkD�_���������� g��DneJ7�TaX���)�K�I��}t ��Htr/�>@ (����\�@	�/�뼱N˟1��aC�����xN��>�f�/?Qμ��\���z<1� �w�A5�#����R�z�I��#P����$-z���ڪ�	:n��[�p��d��_E���.U_nl����������������ņ������(O��/�4(t����s�D#{���^�54T�Ǵ���	׼��оNzf���7��r�+� YoA���������j=��"4�~�ѐ���Æ^�3>:���l̘��CUK�����[�BC��>�ڃ�~|Ş����;�����T��[��������_z��XC�������bD햏���,����}�k%��d^���Ӊ�A<�fq�L
���O�Hw��8v�tR�G��k�O��h�'�H'�J�w
j�b��g�{�����O���I�����\ ��5��z \�H��R�8SɌM+j���p�c8��ClG����3���z zF��L�v+��PH�<x��.�3I=С����Y�c# ��zM��U>�3CI�:���<��'(��f�)|&�Gk�a�r4Ʀ��������0 ����
�9!Y@�ߖ<����]<�x��o���l�mP9n�K)ʜ
��>�d�\qNXXXXXXX�;�����1*�'h)��������wȧ=�G몌���o,�1Kjd�c'�LnvC����Q'3�
22&j/�`�!�v|f���IFl�z�1��$�k��63ۄ����5�f��$������b�������~��?G��p*��P����+��!��pQѧ?v�0m���䶓���^qhUgF��w���o�i5]��wT=��2R+�ӗ�]��C� � �����5K��J8���v+N-`I���ZjN?��$w��3j�Zu�r� �v�G�����S���VS�3�����Z����	�f�=:@\��@CT7��@?�v��%��tU���9���ioz�CX�ڞ�Y�@55��ij!�jjj�jj'G-@��s2�x�|*p]�c{F��5������q��k�*m�')'y�L�cj-�2Ӧ�.1]��2�6���y�'ǐ\�������� *�����r`�Q�Z�����'Gzᵷ�O�w���S�ᔽ���C��n����@��S�Y�'p��\M��"�6)$^�e^�t���A���w�uo�2�Cy��ׁ�/%'����>���5%00����<��@ٖ��R�uŮ�g�ih��+P��v�B�@S
'�3����y� �cGf�_m�D/��y	aaaaa�����d�� �3��K�{)4^�;:9�"��T8�d&�ń"$׬�j�W��Fgg�%uX�T`�w��X�LW_��%S$�Ͱ{� }y]��ش����\�?��������ǐ�Wɸ��<ʿ��w�Ɯ@(a{nG����M]P�Ӵ���.��.��}I��ｽ�͒b7�I�� ��Uczu+�a;'�����N0��$ �qӵ��C�*�\6O+y0,m陴��ٶiz�ii7�J�!���Έ�	 �b��K[昖��tQ��ڴ4�J�$�ic�MEr�N�CW� �Ң�J3KK�3�L�U��.�ؖ�V���K�.��vpL�wvi	����!���5��e^(��d��tbQ��T���0�KK?���yS����ii��ۍ�v�}����f� �����5���x�^Sa�m���I�{��8>����#�k�<�_����k�a�=�2����Y���U B|�.'<r�<״�ai�1�Ҹ�=�k|��\--+���j�@��1+z}�rCc��1k_;,U�}|;�r���eě��#�--]�m�̌�����2�5����9��r�l�a�ٺ1*��v�r��ϥ�,-�?z�����%��m�=&��9��;��e����&�P�Ə(Kv��D��Hn�9��y����G���=�kB�����+�����W~v�n\�Ǣ���ƫK{�5�}�|�gU�P�	��~����03�ig�z�$:����̱k��W4���@�r��ſ�|� ��E�k��7ή�-^T{>������=���l�l�o;Х.�PFI��٤_�	��7�'�S����;nꥸ!���\S��l6슫W��1y�Yܼ{q�k���D���<K�j}y\���鈯�u{ٝgj�y�7h��NwFd�O��踸pN-�(�S��v�6����S\ܩ/I/������ܷk76�b�6X�	��gx���N�I3�-T.�1��	O�#"W1~rl~3vq��-�O�ܖ��u����a��F"C����e@���/��q���Ig9�mOR�T2\ä�����p�����z�g��dn2Y8\&7<�R�)-���1�i0�P�Q�O]iq@$�X],B�>2�����D-w�; �����r����K&7���Ϫh�|H
�X(a�M���וꩅO�{&>�{�p�S~�*[l?�ʞ�+�__>ryk�S-!�s�>���t���:�y�����Qh��^2����̭H���Rtc���R)���˻��~�?�/M%�S�M�Σ̋�`y�z��������O�VT^槜�^Y�t@�͛_�J�L��ں�Қ}�]9L��Y�7>y�����]/L)w�
�5>�,l��l�]�\j���v+���ʥ&����/��E�I���om�c����g7�_*++?�P�y�c��Ѵ��yM�	Q$N�����[�c�M���p�����ɾ�J�C��s���\y6�&�,��;����� ��8�4�mg���I���Lٱ��f�sCL7��$]�u�1���!���<�gX�.Όj]*��39�B��I�Ǉ�e���U�E�O�-�̑�oI�l�2P�w�}6�q �,����Wp\���e9��#��H�:�B�ƣg�����П��|m&����kG�'й�W�����RT� �V��9��n6f%���v��͛�l �-��qz�^�0L��8�w�f´��/*n;X?����/�_���8�b��egEE���ˋ���+n�EﭨhW��xW��x�C^Q�kӆ|-�2�ՍǦ���l$�^��k���������������������o^0^����78V�Qf���7�D���-�7/��	�)B�����:YK�I����'���E�H� �caaaaaa�c���U��Y�|���M�_�9s�#�3%O���n/_ pb��O;C���_� ??��	~C�/��ٹP�ѡ�ǮWpΞ����Qy��s�e�~���lD�2����s c����Ǘz�E�}4��������T;Ämח�.�=�޵�@�2	{ߕ�FUy8�F`9�q�R��H;�.k�	L��n9��/�.��U�te�3�^�0���`7����0
p�d�`Sm�Bu�.q�ė���g ;�#�o䋥�փ���I<�B2���?��5��� < �����.��h1��<�����ːA)�I�1�j
|�wx������V�7��>�"�[2�}HҦ
��~�������B|�9�"/�� ��`�]U�"7v�Jf��Rj@ ���<)Թ�ܬC��{�(�?�7]�� �W��='��An�V'\�vv ���s�����j�W�#���U9V1
O,,����y�(7:���Yq�ݟG2+�]�Rъ;F�Nd)5��ʥ��`����('��h�B����N�4�U�ܦ��B��Ec�I�s��F�����������O	T]a�Q^�׶�T�ѧ�F#��B�=ᙖQ�~KiU#��F��1S�~�,Z��։t�F飡�o�h��YXXXXXX�9p��2Ss�m�@��%�7�C�ipH�N�� �î�m �H܋3�~���O1r�1I�|C>�ty��B7
�,Y��M&����d�l�vv��e6�Cn�0�9�Cg�f�?2�~��\!/k��Y2V�؎�V�ED�E�hbM�'�W&�Ha�:%�<m�c;tb?v���
h�F�]c�~��'��T�����&�P�A�����7��S�u���gt����5���M �� 5�E����X¼�M�;ѿ�`���ѽs�g��������� ��9�,<^oF_%�5����L�};����B�}4&��%�����O�9�#xs�|1]�E������������o�`����tXy����gHHLo�m2����ţ�Z5��^�.�Ϟ�d����_��hJ=)�**
ͪ,~~��*gzQ��!EO���xn���� ஥���V��s֌����։~}������.�{���I���嗑+��y�h��E	E�EE��2�������|�Sx��	��&����"��EѻO����~L�! ���W�ڳ�bx��t��8� ��@sҚ����o�e`�9�-��x�V=�~7�7�J{^ip�u��8�7��M�گ؍�߫匁�́�|7P��6��8�@>W' `�]�i2�~V���;����re�����P�{�@|����~�F���s���f`p� ܠo�������+ZG�g��kE63�\ga���	�<���n����1��+���y �`���o�]׭��v���t+����'���MM��Ġ��S��K\���y78�n�����"3�zw{�B�y$6�[���s]�b���R:x�5=�{y��o��x­㓡1����Eu���/
6z�d��˿�t�����0x�S��$���踭�WO���?��88x�؊%��ϭձ���[W���zZ5��������^Z���Nڷs]%��V�g�3A�fK��D��&O˟��L�1s�x㼦[=V��z��Y���+��V��|����oy��32?���`��h+։Er�d2_5�۩&�������}��K<���cO����?��͏�a�Ug�q5��������x�9Nم�;���!�4����r�)\eg
����U
'ˊ4M�ӃZ�b��?Lr�]�,�o��.�=-�������!�����{o��z�B�6
	}0+�sUH�w���$�o�l�HP=yR�[SHh̽~B�����3���	Y��m��yCݿw���E��wJ]t(<1���1m.:"\;�>
���GJ�d��P�w!���υ���-8��/]AIЅ��:͝bBB^ٞ��r���o�}��vg��m .�b�h.������U�~�� �-�xa��"��
�5������x3s�u�TJ��r�,���çr�L���c�O�
���ί��`��uZ� B�����}x��v|�W��}�k�*��*쪭�����$Zc��:���������*-^w���ܭ'㇭���ͩ��}�Ͳ�6U~�������kc>���ڀ���fc�3�3X+=b,@������Jy���=X�(P[�G���`Z��	���7�����U�4��B�fc��>,�U?K��o��6����z;9/x�f��X�'��p#��4�?J���rfw��C����8�PHظEc�[�Zy�yh�4~�ٷ��g�_{gU�.�T�����Q�7��MYH�Yz��IHҤ�'���;Iw���I ��3�
��㮸�B������AQ�.��A_�u��o�N�9�3GR_νU��_U���[]��_���\����e���t���1��GA�݇W���3I(9���~*`c�{fA���=>�^�ю`7�E�p�9%����1|3~/���1L�ϳ��s�o=�������a��þ���������U}��o/<���+�_�<7L���>����i/�v�𭷟r�i�x�r~����D�	�և�$e�����'/
�ߊHy�U/E_pBx�mJ�p����n��`���������"G6kp!p<��BN��@�� T_�I�,r19H+C�v��<�"r���Ź�.:�~�����?F��L��� NY�i�&Y�Iس)�D\�q�"E#�M�>i�q��`��7�		�>c�E����mOH�i~�'��0m�z�=O���&|����U�p��	�w45�&\������%ܱ�M��o�!H�_
47hz����,�y�$�B�{wV��SW&\:i�Zh\���S���:���^�MHp_�J��脄ߝ��?�io�����r�8���NЎM\���	}�s��KO��_��"�����&%���oW8�~O�TI0by:�Q|��g^���I��������_p�>v�R�Җ����>�{��{��9�d�W%ff��t���S���������/c��>_�-��K��Ϫ�srŔ1߱cG}���on���}S��\�����W�K3����Wڿq_�����s~{N����u?Ͽ�8X�ꃃ��������׾)�����.��Txf����i�Ł���7�Y�E�����us$�32rp,�=�(�>�c�6����L6����
����Uf�T�d���	:� ��"�\�$�K�?���>弈���~�J��1	���9�:�o����Y a6��]!B���L}���2?��~֏�!�~w���O�~���j���c������"ˢ�C��kA/c5<2U���G���C10�|�S�5I\ؗ������������8�ꇍ�/W�2$��ЎR�^;�h��7�a�J������v|+|���GH���Tr�s�޸>�}�^�^��=ߕ�y��_�T��T�?R��v�V�T��[U'�G���R�tP�z����� �uW�51I�Ӿ��Q�-<�&�����a�@ �@ �y�x����&^�G��cz8>�2KO��!�̍��=��y�������O*��V�q�K����y��"�|4W�$7���&���o���{܆���<q��cm�
�	���u�OΟ����=��m�5�,�f��s4w�d_?k�otw�@��_�VwkL?�c�w^�Z��f����%�5���h��'��]9Y��� k���lR����|�Ii�>�b��s���sn=g�_Θ 	҄���%\�|�!1�!���а�9#��D)Lē`���ۑ6T?a�O�#D��@r~L��˿p;u.8<h��8���X9v%�J�m Oa�y'sd��ew ����ў�@��q^�9���W��K�t�&�+��'D����є�`�2���О��A?��3��A�]j�F��J�A�������3Z_�%p���of��������5�7%Kr�xTt_M%g6nj�x�>Jh�� wʗS���rn�c�xz?\�+�0Lx�q?���@ȳ]�Q�m >��z�$�y[�T��n�s>�o`6(
��2#�G�]s�OY1�����_������?��Ӛg^ۓ��k1�}�w����ao��4���]���;o[z�v߸3&�}�?�H������ݿ���[K�8ݛ����}~���J�w�;ݖ���͍/l�ݹ}�w�_^J�F>t��6����/_<�w�׻�;���o��JK�|���s���i=�C�mw+�@ ~Q��FS�e�2�2�9�_���cC��V^ �^����{�GHǝ�S�G ��Y����|�
�����{�sә��:V�-���S9]s�+ۣ�ps4�������ú#8e�_2���/~\&%ڨ��?o�ߥ��p�?�W��h
�+��*�}A;��Yp;�!�C5W�����6B 8O��v�^�;u.rf�F7J&��l��/�S�� m�\��msvI�'�>/!��U��;F���p��'7Ki>��+�>��"�����3�{��Q/ӂG?�w��6�G?�c�>|n�p7�7$u���Mly֓��'����R� �KRی�{ �A�C�_6g&����G\�!�@[Y�����p�:H����Z�p���1P���6�<���*��ִ�(#�������Z�^_�0�hml]�lu�<� �-n��U����8]vR��ry|�u�@��繪���K��6K�� �%����n� wSC	Y���������C�@����k����*r}�|�����kI^��Ț4��|Q�����m������Ϯ���^����q��U�}n��t��6[U�	��B^�����ot664�[=��|�z�˷���f�s�\��F_������:������imYh��}�&�������]~�����|�Ӧ�y���u�z�WSk������Fo��͵��_���,�����U�K��.#�Qa�5R��B�ƨrfi�����{<c���lԙ��,m~��lN�7�]r�ԫN$��L�lc�:� /K�5��&�ɐk�3�l����&L1�4�z=�֘���f�Lڬ�� i9I�t�g��js�If�1Ϝ���L洅fsIk�H��e�A�z�tt	�7�2��ٙfs��d�1�#�r��zc�)s�5����Ia�L�I%'Y�0\ ����h��F�����=e�"|�h�����H>e(8���ǲoj����؆�Y�K�����fc���sQ�;l��;�����Q�S
��e=�@ 7l�_Q�ܔ?��ui��ayC) xw����X:���'w�G�@�N	��"���n7��yr|$�I�#f׎��n��x�+j$��O��$���堫�-�T��9��֚�aw���]5.����e��\�V3@^mei�t�j{]��UW�r٪\�Z�Wow�������;�+�- ������R����m���-9��r��Ր�p9m6�Uj����rUW�vW���r���L�ZG���\�bGCU]9�rv����N�%�u6���W�"Q,q9�*r���-9p�|t�p��� �k�,�]��Ь���z=-�*g;����������������:�� ��*�y�ڽގ`g �{A{]WpY{W����:�-���gg�!��uz�l��]���ւ�@;i"�4H���v����v���\�'G�/#Y�Dhv �s;ʪgH��n{�{H��eXI0��޾����}\An�M���%�z�b&J��w����/[���6_0���߿�տ2����l�e>J̯��{�ohy{��%!_kh���PW_(�����sww4w��Z���M�ޥ��ޞ6����~Y�w�'��Υ�����N_�$\.+}��=�,�C}�=���4��`����
�n�t{B}>�]�d�*�[/��|��`zFj�ΐx���IN3���s��eQ�y���}�A����O1P�m�Nw�h�f~��0�LM��k�΃$�6e�:��5�نI�����,�Ao�I�lM/���h��x�����u1�����N�x~ ��O�*dl�
�;p4�A���}|��%�6���^�g�a����P�/��v8���S��@�󕍛Ȼ��p�� ��Ja�����,
�+}"E#��쀠,�E�5��ZK��Y^XF�5��6g���l��v�Ng�ŒG�Jg�N$����ʆz�v8��5��9�$�oی+mN[�����+�uU ��U����v[Uyy)@E��RS�۝u5�ZHw8m�y|m��tlΒ,��<��Y������ʭ&��Y�u�Z{>�w��l�"g[u��Raw����K)r��j��+2I�@���)@J�ф���ՙ���RSi�>CWb�-)�6I苌�Bˢ�"�ٺ�tm�����RTd�����yy�4mnz�� ;%5���R��R�ٙ9�jM��PZ�gZd).*+-..�,*�X�Ly%�y�eE��2�Ř�P5�O0e���Y%��q��@��/�lK��&sinJN�z]ZKa�1�R~��ΗĒ�`�"�7��`>ād�Z`�����c�"_�Se��x�����gC��C�;�ŷ��	�������C��&����N��b� �k�P> ڇỴ��1pKG̫ߖ��ty�m���c��4�������� �H{.ng��հ�Gق~Z�!]�O%�f��>(��E/c'�p ��E��G����^!��"��zl�x,��Dߑ��ڜ,�1m�ј�0�8;Ũ��<I�5)�53�Z���n4�z�C�^�rt�i9��B�!M�x���9��9��o����4��yF�Ak4N'��3���ב�i�3�X��8����s���uC�ј�cP����̜;-+����/��,��'�@ �@ �A�@���|ԕ�^\g����῱4�3��z���9�F��^�|K��)X�N
ޢ�����&_��`^0s�)�� ��@ 8nP��AiaQia�g��J˧��$���K�R��^5�%�X`-+�Z�e���|ݴ)��g�'O��yjy�� �iI9eD߲���/^l�Z�YKI����j͆���ѳ�[s�Me��eVKA1��3�,%�&���^RZ0�mj8����I�'�����22:ʹ��n)��So���)x�dS�ԧԱ��!��&�Ǉ��Bض[�z�
��x&&�z�4����_�ǝ+�l~>��::�Nًo0�1|��_Ijφ(�/�����P�c�W��]6�vH������~��W����>?�?�l:!����L������5����Tч��M �n6�*�s�mї�����hO���!{�� �+(�Y���>����[E��B�Icǽ'�C-?$���[�_�8��i<�Lw��=�3�ړ��p�ˁ�x��!��'��D~�����x��u6��u+����mrE�uy}��֞ke�
��?������z;{�WG��۵�U���\��nm��k�� �K]D	H��:I��t��;�K����B�ˤ���*֖i���z�;V���B+B}4��-�Xv�C�M�Ŋ����J�@ �_�I��-��l@�E ?�Y}x@���=����K ��%�c6p��G�$7m`i���p�o��O�b?Z���ʽ��^xD%I|6��)ÿK
��7z%�/�l��[�i�%6��W\���Yn���o��ԇ��/��}�g�e�0�4�����3���fr�����=��F�s�g��ǯ��NY{h
�&/���&������9HL�&�#<-�DԆ��yG��%Rݘr1!���'�G��:X�Q�'�@��A�V���2�i���NO�>* ����\��@�r��)õs���X��
���G#F��@	ez����⭒%dP}ƈ��G�K��X��y��eE���x�ۨ����6R$@��4��i�'�&�r}^�z�WR�Dt����N.�/�v�>�b�C1DvdN'|(�J���0�)e��"a4?V���$1���E�`��iNd<��q$J�pz�d\:�Α��|b��8+)�N���p$��'�ω3����ſ����K��Kқ%�+aY��d���/�J �+iK�(���DB�p�+���92���@�K�uE�!a����G��Ic�P�/9�>EVoL����c���%��.��;s����w"�a_��4��#�B�Q�q�ʱpX@:+�����늠LF.��� S*�X ��h���R6��]&�q�`D"Ⱦ��UT�Q<_b�J�8"��^-{���|u4NUxC�O�b�2#�)��_iſ�`���G���{��q=���\_rx������������7d���	�b��
�D�y�RS��T�O��"}4X[q�	D�g)�@ ��?K��DtXc�q	i�#n�#�Wʎ����b�4��C��x�+>��&��@ 8n��k��E��A�����)|Le I�����v0���;<��,�;�H��㐗���G��8�v��E��G�6�C��!?�����e:1���Q�(2�h�29?d���a?oy������8��C�?��=Ǉ��_�\��Bv��&��H���N���X=�g��i�����O6� ��,%�f#yO��Ɉ��{L���"m�2G	p嘄�R ����.p���QE(%XZv��)�E~Ly~�U�Hz���i��$��S�������=4reȇ8����\61�eYWoo�|E{T�h3��������uTREE  ����������������;+                              �W                    �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OCHK    �A     �      l     0   REFERENCE_LIST 6     dataset        dimension                         ��             o,iOCHK    ?      @ 4 4�  +        _Netcdf4Dimid                �ɅOCHK    S�           +        _Netcdf4Dimid                Bt"�OCHK    ?      @ 4 4�  +        _Netcdf4Dimid                *�>�      b��$OHDR�$    �       v       �       v           )U     S          +         �                   H�     �   v           ������������������������E         _Netcdf4Coordinates                              D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           \        DIMENSION_LIST                              �     �      �     �       �a��OHDR     �       �           ?      @ 4 4�     +         �                   c�     �           ������������������������A         _Netcdf4Coordinates                               �     �           X@�Y  �%�OCHK    ?      @ 4 4�  +        _Netcdf4Dimid                �ɅOCHK    ?      @ 4 4�  +        _Netcdf4Dimid                G-'OCHK    ?      @ 4 4�  +        _Netcdf4Dimid                 0�[OHDR�                                     *       �     �       �                 ������������������������A         _Netcdf4Coordinates                           +        CLASS          DIMENSION_SCALE #        NAME    	      carriers +        _Netcdf4Dimid                   -#     �        v                                                                                                                          T6��OCHK    ?      @ 4 4�  +        _Netcdf4Dimid                �e          �{
            4p�  x^�{t��,��G#�ĉ`�Э�X�nѮ���=޺aq��e��Rm7�;,�(ϛ�d�mǥjP��3>�B�3K�z{B�)�l�bE� W��؉��qLл����׾}��;�\Y3ߟ��{�{�~�r �*]��t���U�JW�*]��t���U�JW�?��+�c$�{���^�	W�o�pIS��s���U�JW��qJ�wB��r
֞�.�\FQY�a��	$�ʁ_O��M�b��b�8q��$IX��y�i{
/�! 7��$60AgTH�8���,a!��h������<���4���I��� �_CQ�E��h��\9@�3�P���O�w�^���!\���nD5ת��`a~f�B�!z�~a��p��p?���Kj��̥�YUP�GZw��o�ļ��K��b������Ė�GHX���إ���������K�*�BG�P���o"�ʁ� =?�.�5}Fk!,��e�v.!��|r��^:��i��i޼{���y��M��\z��i���s��w��g߄[遀���_���&x�5*�q'銆+���%t�&����&�ӦM�T��U��\��~e�2ք�[�0P8ߺ��L��X���z��T�!��F�l8�쫐 �B�b�
*k\��I8�Xsq.x�i�z�*�K��e$\h�W��r��\��d�h����*կ�_ኞ�8�Z��ű�k$\9�k(���5���I��E��o'�7�z��
�%�����pY���oM���?$�ҫ���B�.�Y�^I�Fg�(��}i�����w}���St�dŌ���i�'&�ƌJ�������i൏�P�~A��v����tb]xm��P�UX�I�(;��"�\f���b�{il���Qİ O��
(���!2�
�����{?�{(�т�B�/|��2��z%!
���e�a^|���;�% �%>�x,���u���Ƕ�?��h��o�\G8��x`�p��Ӄ�MsJ�>�W|
�-n�n��`,�/�}Fb�,�����$:
���\���'E����'����E��K�$)V�O�S�~.*��1����u�#�%�N��b2����$�C!��*�#!��EXk��XQ�y�[�Ġ��9���C�1!>�^�AȜ<x�-m�DA<��c��A�6�EQU�Roo�(�����BG���������j�׷���
���v�F��P���+��3\�PX �8sm�6	���Q,a:������Iۺ�C��}	�� at�Dz�YB1�d���C'E�����~���A�Ϣ�X�>!d^!q�37��=�޿�ֽ�ɗb��*�C�v�7�'n�B!��wN�=�����f���	�_a����]F�E�u&���d�"E��u������������ot{�?�%�Nyv��Pfhl��<��~�!�֝D��"}2,|����m������}B�Km��0娞���܌}CJ;�$��+!8����H�ҁB�4(IwE:���(���!�.Ş��@�� ��3Q�E7���+���,Euv�N8����?�ܮG?}`o����D��`�;���}��~�[����E�,Ir�ݿ�@l�R�o���-}6CҺu!�����=��~(��N�z;}gp	O��sozL@h�V��'�:�
c�'�Ba�(2�GiA������Jk*��T���,L�&V��G��� �8�U`:�/�p"�n�QlwUJ�!,E�?�~J����"t�?;��-�|a�3��}R����x��P�H��JO����;��Rh���[�iA��Wř�߸�f���W@����Ov�y %Ibx=fX��Ugoघ�%���߉���0�NuKL���~&�)�D0�6܁6�c;�{>�Jb�ݷ�
 ��m�#��m	�����O��aX?���/O�����
�^aR���O}cb�ֱpo�u)ZxiwW
�5��\�����_/J�PBشo���\X��#bw. )��`AX��/��$HB,|W�tKJH�N�և(��w�*ވ���c�T�1�[ߔS���@R�J)���e
EG���"���;��#��o�w �)�����D)ÊV	꧉�מ�w�Z�W�<q��{b��(֏���Ũ@o��	=&�1i-��o�@Lr>��(Q��|S�)��oJ;@ܚ�p�⣢��ż�X�_��<��G7
/<�-xH����J<���8Ԕ K�k�RhB��9�Eq�-!l���	K�!��ևŶb["�ۆ���!�����/n���oK�7כ��V#FK➶��1a]�$F�1!���w��G`�J����ᱱ�����9y��W�����/1q�[4!���h��X[�ai�$���'c�5��X[[4&��m��1npHx8��Q	R{�Ж(�ۤ	�b�t��]�3�ϱ�#Y�mJn� �/�{����;�#���~��\���B��F|����B����AG�I��S�%w���"�I((�ֶ�%!�x���.�Q	�_m'61;DX���!,�4�3Fyq�R��1����`l3��c�7ښ_�ƞ\�]��O 1��M?�#&�C�Kj��h�)zp��6�'	5V,��qmo�k"QL��[@�>�ۓXp��o={>*l}0�>z��I��R�ľ�t�R*��}5&a�%�cB�:��D(2ds.�~2�X���%L�h��v�ԍ��/K���J���`��� �t� �U܊'�8XH�$�`R��P&�2����������Н�ut��;1iv�����'��`;���R߾��5Ol�^��(��o�U�O��������s��/v|�����RV�*����N�M�����d	�	�?�sK����uw�)��Ii}��"^����ȗ��x�qoF׈w�	g�m�?
�![�F�A��0�m�t�t����b8v{[X�����&�Ia��D����bF�&�M�C��M��Xae����'�j�ҍ�(ܶ���zxM�Gx�g��Hp>N��f&��XxOl�'����Bo�#Ɠ���F���)vטЋ5ry�mm�M<>bo}l�#�̓���I����'&$��Z~Ř�#���'6�e�o��mNaĤPb�M�!!o�#uǞ��H�HCCxq)��(�z��A�G�f���r5ZX����D�=>x��v�GQU܇���G�ɩ����d�*�%���b��m�Z<���vx��;�r��@�����^/QK*�;��t�wp�G%x��RR�gh(�zp����dב�_i���v)k nv�K�����0�o(^�m�y?�8aGWP�
�
�?��0��\����P���~'�C���^z+��� �h�D�~`d~��
�O)JR�xD9�>ʃ�n�()�d�dq��(����G\�4g���U�=���C�V6��?��,�^�l�a[��_w�3��>{:�7A�[�$sM�d-K�Ѿ��۟n���N)�#ha�·����`�'�#
Л;b����#Y�oU��-��X����q�᳭��B#-PZqN����~��eUC���8dd�[ndA��?�n�6�d���$�Ȁ��_���$iU���V�8<�YV��gXM �8T��1�GK��P�V�Jf��r�Y�}�d�Ɏ;�#���y�e��½��h�<I6��H#��H����jlJV�eY~��``�8��f�oB�{�*�=h(2*���|+I21B��(h匡|�PF_�3���p8�������RڛZ�p;�Q���[Vc���I��s�_2��Y����dvdī RQG���O�\n�%)X�aYG�l�m�:��R�Y>���Vvڰ�f�z���n%p�@, ��(�;˂gpW��Ч�r�u����:�dO��Oxƭ�(��+�-z�(�"��Z�j��Q�b56V�9۬��*�S̵J��ڂ�9c񰉷����`$w���X~�*�������O��7F8���l�
���>���5���q�O��J�j���Vm���(�%�C���x�����6SI~�-�;�q���%�f�],��� gſK1Zk~�����i)����8��m%�|c��O����߲|To�G,�,B�0̢���x��jy�����ڵ����d��56ss�'���ޟ�R�s\V�f����1�� �p�%[���a;
�p������ع���e�q�րrd�� 	���t��)�;��`�S�2�$�.�������.�Hם��*��%Y���_Y����y�o��*�f��#s��}SpӘ�Ɗw�2��04�W4��G��zn���Ł,𰇠�N��`C�z������xW�����~��(�ɓ^�q�U���[y�u���Y�;�҉�OI���nC�~�z����� w�X���%+�2���Y��V�gQ2�K<oG9���4C�*����F�avY������$�T�B��&�b�H�ƍ`ң)��V�2��Z|r��r��j���r#�HW��tS�3����(A�Q�BVi���bp����9���j5FCB�4�������4��Y;�D��(�4g�g�L����b<����֔�g��ڭƬ� ���5�$�p��d����,/��,o5`���I��ɶn[�� �� 4���0����j��#`�d�������Ӟm�rd �{X����<��3��#~:�R��#� ����~z��Hk�fqՀ��4%���8�7�L�
��Q�6P�x��8����q�tGCF9H�y�o"s9,嘋�'��]
�.�]�r��m0�T��R��`�"�[��Aȱ�J1��@����$���xuG��P%!���e=��NpkG㴔��D!%T�g�t� 䟹�����3<E�҇�k͘t���,⌥�Rz��-���0���F1Xc�D�h�� XI*y��]:)�Y��FO�Vڦ�B8�כ[�<�6�\u�6��ĹF�Д� k�
�:�ާ4qʗ���R"�?o'h[����ʅ�.O��Z�Q�(_�����(���Pp�6�2w*����0�Ūy�{�=��V�>��1��6�ƛ�l�|��Y��,�&�O����[�<ev� ��o�rO[G��x�b�>E��%���w�O@1�8R��)|��c�p@���3h�J�*IE���I�E�Q+��D@ee��S��a�����K�bB��
����Pya�R��|a̯�����瓼U:Cܴ�' �u��/|6�J U=0�?3��$�4��Z��3�1�[4��ZKwq[Z�[>4�v �H�>�ãǊ>_$n7��ѽ ;o�� �����i��G���T�ٰ�޶m�?�Ѱ�|[:]��Ƕ���6(���<h錿����-dG��5�~.��m�q��N��@�� ��VG�h@^��M��4�_�k�٢i�|Ө�����Ƿ����pG|C���4{K�v��"�h'�;m[Al_��->:}�3d��o�������h�>n��G���϶����񍚆F����.����_�'�� ���8�Gly ��h�% [���o��Ր����_�)�h�+�hE�8�K\ӎ�6� w�Q����χ���Z^�zl{�3Zˑn-Bvܨm�ly&��q�(�ͧ�j�\����Զ�IK� �0��Z4M��k�޸]���h�5EF�SӐ��yH&F(�d�6Zy<`?�����gQA�����k���Zw��n�P��C`��`�jM����w���ۑ�@��V�<�P谍HE}qrN�-@.��m`#Mۯ�[�:�M�=y�޷��'���m��׮?�k�<�� b�\�i�yt�w���>E����OE�Z�-�x����6z��[������(ʧ�i��m�DP����4�9[���=a��G)vH�Dz��p�>-������-w��7QI��� ��:�m��o�}�Zޣ��#���gQ�Nl��kA'���n�=��w���6�[Fk]���� �"�>-��D�_��L%��г�?�@e	��cP�W�� g�����n���5�y-�r����/��&��N�
O�K@�״�oS��l��I��p�{������Dfˇ��Ю�����o8����yZ"�oޘ�t���v>?:�2΄�;�%N_�%B���|؂��Q��+$%N�q���At��Ok��w� tI�$@<Љ.C#�<;rw'1��N��i{|�qO�S����m��2���cvu�$�ގ�w�#>_ ���*Ў�Af)�L9,���g��Sj"#�o�P,~1/Oɍ/�c�~APF'Rt�ac��Qdܩ!�m�s�r�f(�l�H��F���M���~�u���Y�{��)@��H-�ߊ�#>�{��gG�{p�v?[ګ��2���Y[�z�Ai����^mA9ǩ�t��T�Y�z�5���p��i�|�T�M��{�b�B�aң)��ָfQ=�|���#��a���|<��|��g��ް��ޏ�DĩZ!kw'a�+��'u~��Z1�ݨ�f���bM@k�}��[he\4����@K>��
���輿����^͗߰�E���� L�u��6�S�A����P>_����%��b�=-��/�1�B�-b���N��Zä#8�v10D��N,�,�j6����g�½l���[�O>��ػ��un�Бp/���}����<�k�;錌c-�<L����ݰ�{?��B���z����m`{�|���}dw�%�!�$�*�27��s�~"_������8��;��RC�#H	?|"�	�4�UQ� ��t��S^ ���}�C�Cy>5�zb+�$$R�ܨ=���ڍ8�*-%�,QH	U��y�K�Q�E|[��Q4(}���7� Ayy�K3�����{�WǷ4���Cvk�8D��8m�6 �c�F�?��b��Y��W�mF(���~,�yt��o�c�F���8W�6x�5��6���q{%��\�����B�֊���:�ʅ���PA�2N�c���-_�%0���wؠ��9�u����u~�0V��{���(����Q�G��5v�`<?�G�/���ـ�U,��@��s�zUk�Qfo�������m�������Y��DC����bJq�"��Q�}�Eg��@c� �*Q-!��G�<P�)��*����zߍ�����UX�4����kxcŉ��|ӫ����D|��{=q���h��|�V���	6��I"qvp�;�c���q�\";k�]X�A-�C����S�I��.����¸����w�VϦ���6�U- /�%X�u�=ǪsyK��%Ng]8�έ�z�r�s-�K%��^o��:v������t�dZue'��՟Ayp��\_��r�Iv|��K��Y�X2�~�_]�W�.{�cI	�r���.{��(Ԯ]?Q偅�2Թ�3N�:ϲ%�?q�ya�
�=�tW�9g�i��ԊBnn��ª�k��:03����ss��,g�(܄�����]�KN��R�<Ym�&s�I�q:���,��o�&L:N��~AN��D?�Q�T�F�4���9��7UyT�D�t9Ρ#M��S?s.x�3McI	~�W�4��9�i��`��;�@�󜊿L��:����YT�R)m�&�YȔ�r�~�Ψ�ㄳ��+�sg�eh��M_W{���$L�h�S*q�ӓ
�$I�ª���a����M�?�7�ߟ�V��)�J��ka�\����tù����Z��jd6�N��j��[���Y���Io�p��]+�f��̬u��UJ/ ������:�N��v��9[eV���J���J�r!W.M��r�.�.�˚�8o]�����w�z}����/��K�s^�3�z���LN�zGn�b���̰K�ZZ*�I�b�. K\3�Z Xj�B��	i�
�eLS��zF�s�$u�Ty��&@yf������gLs�%�����	hV���j��M�P(T�;�>Z(�9��r�/]�*t�J�M3��M�;��^��9xs�0�z���A�vV���WMGMq�7��	�wӥ��3�da�R�\N��ssV)7Y��f�e*���v�pӪ�B�Jϭ�=�.J>}��nĀy��

�o�j5�s+.spN6S.��l:��zw9w���K�{"��{�<1f���cz��j\આ ��]�k�J^�t��v��q0;���;7en�\��Z�kWxa�k|)W��4]e Ϛpx����n*h��[umA�6��۽��^����S0����1(Nȭ^87e{�Y�ppz]�l���j�W�\k�LL��*��SS9ȭ\�Z��1���eh��X�\��T-�Ru��:8���%/�ݦ�d" \β��T����]r9��&2����fM����p�㝅�Z}j���ܻ���8�+�v�P.;���q��m���͞���J&�eU����v:ԛӹ�)���k�cY݊Z�EEv�����E��*�f�l�z롑N����rFE'�Q�8��:�C:��eTs��<�����L�5���ο�ke�M ��m��<�P�c�8�ɘ�uU��qs<MoPǍs2��QR�˼����
���~�D����rAVӨ#���Yxq;����6��'s�c�r ��\F�e���;��U]M���d}�:S���szxvrVt�۰W�y)��\ɍ�-�]n��¹�y�Us�@%�̬(�&�䮝)se��3`�{�ԝ[TSk�c 10�K�Z���S�R���t��l�U]]�vqN�����XM���3�Ź�kNa]3��Y��*=���K�;k�����q�i�v���vT՜�ߚ�;n�{�`��!�ܥ3�U�
83�sS3�;�K��Ҭ��ʹ��f�r���a���x,PNc��D]��G(;�:B-��ɲi��i:�̣3.�ۍ.0߯s�S�ĺ�;[��Z��)�5؈s4w�2W%g�����X��L٬�Z����k���k>X�..��*WD��u:V`pVMՕ(�0���.�caz����݅���bF�L��9��qZ��nj��UΥ��]57c�窦�B�9�2MU�q,���ˤ+Xr��b�� 0�8����B,�FT9��",�:�T��?�s���?�>�	�C� S��o`#��,�"E7P�KR��f�)#c e���gjn<��s/���eJ̩q���T5��3��L&��3����Φ_���� ���>:<�@��5�}�n�(.�-��>fN�r����,P��Z?����L0�A4"6WU;�<3[�gJ.W��&���,sNg��,P����SK�U�qw�#��/q��0]��Jn����suN���IB�ٺ:����s�s�K{L�\(c	[����9�;��R�[g��XL�g�.?r{�\�$g��NΪ�\gP�;3�/?���-�Mb�U(��Q��u�,��
܏U{RŻIU-�M��յ����sg g�1��X3X�P���벉�ǡ #��i
_&WH��	�A=9�`F����e ���蹴<>n�d�ٲ1.���V��������~���r_��O��&s�Y�`	��l���d��f2��i,NXtQ�<.;�j_��9�>�������0��4��e8Tv��9��4�4�"�t�s����Ql��x���W7������`3~������98��� ���<<2Ҍ8I����0P?�A��
���p�p��a^��(��4���:<<�@& ��_�S��هzQ 3t���i5�%!#̀�h��0K��iC#���L)�g7O��� �@kp
��� YM�#�0��Ì�m�q+�A����D���I��nm@����vO� ���.'k�i��
R�RɁ�sj��I����F� �42�9��H3�%K*
����t"`��12�bG�d3TvN���0�2|�U2��� s:��d�?�lr�����4Q�i'�f�U �L �퍐[Y��+�dN�  ɉä�,j&k��L/֭��V���Ŵ�a�m�����6�BL9�g����$wQ����9��JXh��7�	c҃10���a����,��A�Mds}p'�D�a�'�Lv�9L̼$��L�Ed's��	g',W�߬E� �a(`>$ϻ��	��f�@1#�(�*Y�V_�yv`"���0����|ph�$��P(.�	��� +7��%s$�1qM��?�c�&�Q��	�z@Qg!�i=����L�̅(� JE�a/JV��X��P�	M�� ,y��؇���M��J�BI�����5n�E��3BvU�cH�d!��
xI�'�2�<Z1�R|��	�&�L�%;��J&��,C��<C1�h,H|l���	&� H�d��>�&���t��,�L��V2�*���y�h�b9k1�*�V�\E=H(��F�,�h� �-J�J�&�P�"$�`�K�B���Je�p��I]��o^E�BKl& U�K �P��L"��Α>$�Ck35��,fU!�L�,gYL�e�a=��E��d��=R�Q
��R�	94O�VSG�HB).2PVr���'� �8A���� QJ0K(A��*_3��
N��'a��A��^`2H:�8'�2<�*K�a��1���$�UAK�hlI�C��8C�#s�Y��N��fٲa��
��A�^��ib#��U,��`3�X���
G���~Y���b)cd�"�{Lټ&�!�* ��JB�r+Řia�bzF�� �����GYx��Jͬ^c��12�I��=*�+�(�L<K�v*�B�������L&��̢Ú���H�2T��5�}B
i��|��S���J��0�+�q
 Ic.d*��&VZB*{lm%��l�133QL:�I�f*	�w��V&ث�`E�y�ѳ2w^���u^��NI�TREE  �����������������M                              ]�                    �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^���v
���ضm�Mc۶m۶m�v�ضm;{�����1�w6 �71�'��N/V�d��`np��k+��Q~��)��H�O�b ��\t��Ǹz�H	�-�����H���8X�Dt�,2z�.��z���Ѐ�f�����8�ߏ)jw ���y�����Ij�~�Ѵ�(
Gq��R��0֤#3�]�&rb�y=�����`�������?7;m��)p�L���U�#�WSYr��o�No�8�y�G|/���� +��W�u���K��3�J��=�QV??4*�����+Gm��%��Ib�M��p��É�֌�<����l�0��.��+S1
sӡ�d<B�y5f�/$73&-B%�|D��j�l�e0� �t����B9/�D&�K�րb$��(h^ �y�,���Pxw�^��<�.�3�(b06�ep7f��?1KJY꼭�Z9�K�ϓX��#��<H�-L0>/h����.�\e��E��9zY(YS�,����L-U���#����P�ק��4�GADi�($��d�3!\�<�OB��R����;1=��#1���-ӡ�=�i�x���C'��F���yq.CM�+���}hkˢ��C��\|�j;�kH9��C�ɟb��`_^m�"��d��Z�+A��|�KtR�����\�'�q��@���[~���� �p�9mJ3�^�P���<�M�Q�}��>�A�7�9�OS������6�Q@_�Õ���8y|b]�0h��	:��_W���9{0��A�x=������N1�H�.i�B˒�]��=�;~#����""� �c�W��[ s(�J*
��5B��Xu��"-���v_R�Qp�$��n̓"���G�s��˒[���Z2儯|�� ������nt�מc�+���6V���W��]���8��?��yӪ��rJo������	���y}Clט�6�l�aX/(��0�}F`G���2�����p�\g0eA#L*&�`z>~$�"�0$�(��DN��Ux�:��X��eOl#��gyVh�=j��a-�yI�Z[E�Ix��M���
8�>�3���s8��A��8�V�7XH�\ t5�gW ~���w�,Rx��MIŀ��n8����3=,3�md�9���09�6���[��j>�ڍ�u���9�y�����Z�� dԅ�64�R��%fs>}�;��ZV��ER��TXa1�d�y�$ɲ��U��pd�u��a��t�_8�A+SlxU�-�S/2��4[��a�v��#�����pRY^�1B��,�3&�gp��:)z/�{<���X�^/�8�+��i�"�3�$���h����vxF��,(��F�Nd�;[8|�z7��=�j��ȴ�:���r��G1P�#+(�_�B�f$����Q��XM#��qr���B� ש�7�և�p�>���)�hN�s*�?\���ؽ�e�3"c��ֿ���k(<ܛ��Iᙥ�$cHyN9d��-� �%�3�9 o������"&
�k�e!4vX:EM������!�����R-V�c�S�}����y�i���2��0.�M� �W�IޝԤ�i�՞�!|��p� �9��j�&J,9:�����"�<�(�mh��{��!�j!x�Qs`X�(�~J�QpT���x��L�u�a�nN�=�a�D�zM�uh&���%7d���0	�<�5�q��EK��z����*ht��~�&1ۥ#x�z v)xf��!�	r 2��r X�ǷqP_)qo0|h��6w��md|6�O��$!��!����$�\�3���n��'AoQ-jR��,�u�x��K	�C�
i��ϼ��+�a��a��5.�IU�LŲ��:���@�Ո���w���l�BcMO�۾^���6o���^��}]r�g���@��j���̼�uD�b�*���&��y������d؇��d��X�@TWNg�m^O?�U�t�_�Q�[�Z���(���WM#�$J۳zFN�tX���ʺ%����m�n������������#�:�w��K��Y�
��q����7�Ì�M�e��H��ɢ�^9�����4�1;�<��_7pӺ���@���
Z	��)h:�@�t
�7-�*c)Md��,[��5~l�H�c�q�pE&�&E�h���&P8*����9��r4�:�v����Y����m 'z.�Iq#zL-/�yFo�)Q�#)��ǈ9*�t�E5��zQ���s_�US 'Cm=�~2����"z�]ľ}Vi�ۚ��`-��)�{&�IQ�	LrZ�qeX�H|9RX��r 6qx8��9�@=(��M�-�x}i"��)��Xj�
אN>N�����q�T/}%��i<5}uneR-X�$M���J՛��f"���y�p<�KZ]2&�-i׬%��D���dR��Uk&v����n�@1@Ϫ�-�]af^�8H���@D,�zʼ
���d�k�p��`�hU�Ԍ�~E��D�m툩2�;R�HF�0q$X����*��<�Z"@3�Qǐ"k%:j�r��>
d�$,��4eBy��� ��d���G�����ז��� t�"7�+�h)0}�(LTn�lΝ@\x.`R. 29b�3x�kDPj���he�`mAMM��QzZ�ɖl�ʂ�ߏ��F6_CM�~�Y�����4�~:x�e�pA�eDU�D��@i�hH�nZ�C��m�0��-P��u)���� ���m� Cӣ�8mf�Ё�t�1	�މ�;�}�\���?�mI�4�B�p�6L�3G��^,��"�.j�=g��/�㨁 M��L�T�-$�^z�&�z�q�-<�Y����XD�x|]Xd@K�0iW�X�	��\ a8i��A'�u�&A�Z�Ua��o�X�9�R�P�9�tdR{��U`$f��%���S����� l����F����zpv�3J7=&�
F;e���gxxJ:E�CFT��y!b�E�L�F9P�#HsW�b^5e8z|($eR��t!F�c�T�w���=ƫ���zX�x�7C�|bh�^�`��{7����8���oz����'_��Ǖ�ߓR��k(-Z��f�BMʪ�e�ZYBL.D!�|�;nd��]L˗�&0XN�pz ��J�;���y7/+�	s`�#��-p�pDq c�פ2�\��3���J���Պ�մ\TD5i��H�E�y���?k�+��+�K+|��2��V�i���\���d#�(;+�/&���<�u��Ixh�D�B��=(gHN?1���F�P�>-����Ծҍt�F��{���Ï��҇u�\~�����ٷ�m��[�#���l����}b��>�_ۅ� :�?2�N S��f|HtM����\�Z�,~��:#�'��<����g�)�ו��z~9|l�IP���?R�'Į7�M��˰ױ��5=4��[��bS~���8F���;�ov8C�=;����pH��W����-�>$@ڃ�x��B��V��3X�<Xw �?9M�����Ɯ�1��Z}y����CJ	u�� \�4#�BnP�S_���Զ�y��
�N�tރ��X\�a|�l ��A�Vg�l�j��	�o �/3���e9Vz./��	�@�Y��#�c�I���.VJF�=����ONWPc�ګs�SDe����I��구���]C�|<�\��=>o��pbH"�w�qADG븨~CZ¥f^8&:y�#�-��/ѷ��C��mN��M��CS6z�ce��m9)r�ȕ�h�Tr�����~�G�=����g��8mBr��"�uz~���]ꋺoXg�&@��o�Δn��D��gZ�'U�\I�������q4u�R�e����&�w
�w��q.di�6u�:��17V�ī%��GL��	ʈ�@�P��ʮ�h&���3��<H���qb��=����{;����K�a��i_t�,�J�W8u��򔰩�SO��퓷]�*����H'�.�NLC%\R*קd_��l��i�	O�'��p�l����]�A�����F^��.�� ��䇵��}wEv
)7$L�5'_�oF/4�@��n{��Ax-[�D�M�	��� Zj �P��n�J ja�=�6fnIm������%���I��o�j�'�3���D���ě��&�%J��a(��+��|;-t�M��H���3=���U�
�ߊ�  *�X���A��}�4����i�eM� ���RK�����*47����$�1�X��w�������I�g�s,J#�8��r�
�
��;u	���E���,�������jo�֗
�����P�]J�昴���Ȟ�e�o��2�o��+�Ν��ʖ�Y��jJ����^����C�?g��ƿRVj���k*�9|84�I�R�l��;^��	~�"}!����(�l%��ǲ���Ù���hY'2G��UC
n*��(	u���@�D�S-4���ҫ��D�`�eQ%�d�)M_t����9`.������m^������Z9�q� ܚn��?.%�����g6I�����mgSH%.���=K7͐��+�r���zai�mM31Yǚ�җ�S���{���F)_��f��e0\-h�[�f��cT"5;�g g� a���k&�x~�/=J���G�j�X���FTo=��j��[u�w��pY��Ы L��A	p������Cl��X�6�j����@^�����+�2��n����ZȞT6�����G�j/tVC��2o��&1����6���;%S�����ً�)��v1'����$�G�Ҏ���T��Sh'%ߗ��u��qI��kvr�-�7���j�  ��%�x�Q���� :i�5�B���E%�lq�L�'�X�����q�x�V���8�w�Eɦ��	�;Qr���u\\8�ޖ4!�#X=�O���_�I�/�6MwY���Ɨ�'�Y���(�PC�J�[ڋ7^4�&#�����#��!(X�����I����ɸ��w�-�#������?��wT(X����?@�	��V�vҩ��Tw�~�C48*�r�uA�����0�]g%���J�+�b�b��I����2�Au�.��nr@�2��;���.��E(��,�-�Q�z_y�	�՚�U��4��Arˏbl7JfjK�k��`�u'~+:��݈'q��^����,@V_th$~�on�9�-�b�<���,�z
U��z�9I��e�5�+����vE��M�[m">ѿտ�O���I��@��,��>h_��a�-�&�,�&�ѵ�� f�J�M}��P�����t�`%��?�~�JC���]ŝ�����US9������r������%b��jc�m�BD�3Ը�������T}�J�������j�tؐ7U�A(�EbVӀ4��f�3cn���QCj��I3`t��0�R��ܭ���[�
�`t4�Z}�E�
úz�a;���������NDK�4g�K `��7�de=�F������˚���%䐾���ӨK�Q8)Ł��} �o�lr]�@�����2:�)�y.|�
hP�j�'�^Mi!��L��XN� �l䦞]��Qk;
Ӌ��]��t��C�E�@���!�`�?�,6�����I9�X����!X��TZ��xw*�y�9����|C�'l�Gf�KL��� x��F嵻R�?�J��܂*�A'�s�b�>���p~·����' D��3�p��]x�V�Ǻk��BG�	Xm��}�����<���B�gӑ_�Veh���1�D��[~���@i���<������\�bv�k�LȻ*�㭐�Q{�`��:�vA�k���8�'��DsI^�߇����khp���-,+MqX������ʞ�dy���-��n���t'*
�
��FM6��#�U�������k�:����-Ƃ���y��"�z��I#q�L@D=�y�[n-^$���� �dѴ�ǓG�Z`5�L���Z�C�^�Q��w��۲Φ/ �+��y 0�s+��+�w�.R�B��n-׉��	ae�� �y���W�i�ȳg�7�����Æ�@θ���d٢º��Nu��mo:Y��/e����55L�45yC�L`�ݤtX5�>�a�j��@&v�^��ةo֎�|���O��GoK����������("��b]�Rz,p�o8昬�&��u?DB���L�!��|	Nqu����>�@��x�z�t�3�#$#��i���X���p�A��w|��}؂�lD7�uY���=?�/D���B�'$��vx��q��=uR��&>��8���~��$}�>H\6�g1�E�y�$6, ǝ����g��"DfZ�\3�z"�9-�Ʌ�%��>�i�Z��+O�=�I�@`3�c�z�c�uH��\�I_|��gT�dn�g�
 ��nQ�f�B����֒�C����:�����#vo�6�0�{�V\�Ư��Z��:>�sB3C�h=�;�E�Mp��`���\򕘋��M@w2��ћ&lBN3f1H\�_������:I�a��0�^�	�Y�6����L� |$���iW�{I���lO���i�U���$@S���k��@�-�XJ��A�2��u�P����
��֑�ؼx����^���)U�k�\��j`�����W�̇����D4�rc�w7��������l�Ş� F�ןx8���S��Z'��ȫAR�)r��*��+22���rGNa4��Ts��r�Qk�b�.ߤ"�4�*�'�1V��K��5���.����ءN)n���z<6�����I���w����9o�~\�N9�"�'��A؀z�n�L&� +�
o�F_�.�`|�.�
�]�[�Qzl�����<G��Yn��۫$�_�	}��h����Gέ������!z�1�x$��p����$�hj�d��J{�"٘���Q(,D��dk\���@��Ƃv�Ha�Q֠[�}�U�* �Ƃ����V:�I]���"@4��.��P%LiA������Y���6q�8�����,QTY�OI؈e]�xa-jy���ˋ�ɼ;���8/�h9Lտ�����3G��c��O����6Us� զ쵊�l?K=�a˵�!�9A�ć<�@ݞ"��$�z��nD�����d��B�Ĭ�>Ѿ�:��{�Ķ�]�
��T��R���y�x�ga� sOz�?�y�#��H�qa��p�������9e�vޮ�G�p+�8�������q�0�G^HL7���(��Z��
���憜4$<#Ⱥ�e����4*�;�����n��eY�
�6��)�U���4���gg��"�aq߃$����O�3T�=̜=tsd��~nO�@�9��Gkr
�y/mp���ds�p�������x�Z9yw�rN��xc�_� �b�1�6���(Q[��	(��G�j����6^�mo�鞩@���%������@Pi|�f[7'�! 1�Kq�J&�����+l28��(�,����q7�9T=o�,p�_~�ox�\e�����^�6�^V�J�PR���$)��5�P����h�\����FNS"
P�1L'+��L4#�|���~���9Ҩ�ھK�>r��ugq���La�[��6!��
`�J��g!�F4p�cP�Guܪ�mʱ��f��6�!�Y���F(u`�p�a?�IA��U͝XN�Ņm���5j�V���(��@"m�3]-�2�e�	��ek(E���?�mG��t�R�� )f=�Z��(z�T_i|�r�}q.������@�Y��1x�0�c�����j��.~b�E>j��!�,L��#�_8�6~��#� �|�/cĄ�l�E�U0a�Z4Y�Ba��<��'ŭsY����ޅ������񦒸�$�u���}R���E.AϘ�i��(dNz'mEr"��9����1p}O���qAx����"���b�lrAsu�$��`���fE:���s	=	��n�U�W������`�c�]>�9�.��֗�_Ţ(p%c��≝�"n�G?�piaTC$���ڸ`l93RQ�\_u���Z����~�*�>O+Śڥ^��ݼl@E.�\��3�A�����!����*��O�iWU4�U�\�ځ	�Z)�L���T�n�[E�y8=�N��
	���wwMn��9�:0��
ϧ��R8���>�u�'/L=���1��)K�@Kj�6�p�F����n	@���g
���ISHz�RH�������%�ޅ�Y�jW۩Nr4�A)�~1�����Ǿ��8c��ž�����&S��1�ǈ
'*��*���R���]ze�C/�Bo)N��d�I�81t��zw��Е�q��ctNTХN���
xi36n�Z�*�j(�����w�G8�����\�)h������d��;�������m�1��~0o;�"��(��K�k;�f�!��񥴹�>��ͣ�q� J|V2 �����,��N���x�%���ʐ�3[�$���+Z?����� 2l�He�H�.�"`���e{j�j6vZC��#,E�5�d��<eoF��}$��f?���˄A4��:Z��z�"5gM�H8��^��I༕��>j�{{u��ܶ!/�'b��ʫDX��m�-��X��3�r����XC'hvMW�&�Sv� ��6���ŝ���_~�6C2E����%�C��!ء"�=43��QC�$6z�������.ā�ֶ�֛iG�5��z�S���}����M��� Ƞ���ߴ��t�@�yi�+�"��S��7(�ML��g7%^��9�sǣ�xd�.&�Z�U�1��6�A~��x.�hW.��A��l[��f	2ED\P���λƅ��8�ر�b�х�AR�^|c����6më����)^�����T㱻_�ہ�8Ol�B����v�U.i%��*�y�#�0�ZHO�.��l�O�� ���%`⍔M |�c|W�7�P_T)9M���c�Lw�4��BnL��w����!�Ku�D�;�z�G�!]	H�������	��d�7A3�kD?��r,�,��%��������{5�{
����2�3�������>���Tx��t��Kf������L�2sy䕤%�&HBBaQ1�&�%qD����?ɽ/{b��!ف���s���q�QR�n>�M�&G�!�+�6Od4�(�j]s��*e�Ҳ��@�ҵ6�2��^(�3��CX�ɀS���Siz��F�}sK��^G�ݲ�z����k�փ���&nM�ߡ7�.�j%:��#e��
����.sgP�|��q���b��#�6w��\� �j��m��5.v�<!��>Fv~+���o�CL�Na#R����h���t���"j��cqǈqXCxѷ��RbK��vm�#��F�"[���+��?�D�	<��D3P̧0��"@o0�9C���JHYI>��oޤ�E�UH )%m�ڳ&F��+g*1PL��a�Ǥ����!2�Է7�z7*Kmkn�>N�����,J4�Q{��{n��&�uǸء�Ǘ&��4����|
�ƾ%�\����Am��[rd��:��+�Mq�L~]}\j�2aM����9َ��ռn���y��yó��bӚC���,�k�7� ���th��e��Fj�!S�|��1����D�&W�-U�`o?�mfb.:`aAC�ݥ�B�	ʏ��e���v!u���"߄����KN�7�zݑ��<���^�G�^�c�t��k �W���ϥ���j2�&ֻ�{'��]��_C��NI�F�)�J�h��� ��GB�ҳ+�(�4k�험��./D�o2�C�c?���r�"���O�y�)D���:���vN���z[z�Kʺ��j�ʌ�[j���ȑ�8H�Č�,�W-e6f̸xN��Q׻Q�	���֥�m��z����pfZ�aBrdd���vަRm0��
g��*�9�@^SK��"�����k��ٛ�n��J�|
���|G�*�0�}�l:�A������}7μ�
�����4U9�|f���#<�b�7�e+�7@����Z���ۡ����(�,�!
���b��4��������Y�#!�@Xs�][�a�����=����&CwЋ/�d;������R�+7���GUE��g�Ե��8�,���/�e)j�+aH�\�&xL��V�$2:Ҋ��¹��{��b����h��/��kzr�b��.��޹�'���Z[��) �5�CE�7�ˋ����v���vw���/�k�Ν=.WL�0�)w�G�W��0G�Q��m�M��/��K�e�CTԝ��Dx���3ă�
H=h�:���L%�y�H�=g	�&qT�,W���`_+q��������
k�(aVn_���ʮKNO����'p	���߇����	w^KH�n�w*ؠ�s(KM�o�@�u��ϧ�	�'�Q&-�>��$��.@�euf�� /������m��x�x��)��MdK��U��K3.��yE�d�WF�9e-4��r��<2���)�)���A�u`����~��6���ϭH�U�o�hT'��z��'U³0��m�'�g�b���W�ԝ��y�?�B�Ѩ.F��/��R�0�~^�Y�#F�@���gs�ou�ϬCg@)��)��ї(ȱ���ܴ���k~eus�~*�4Nތ����i�����-���n�`@��x~�m
̰`�����;������� Ԧ�W�x�VA�,��N��{���6��P�o�-�y|Ѡ �YJ�VxÂɌS�� l�w2��l�Z�����iVm�u6�F��?��Ԕ�s˄p)��&X��-�4�⑄��=@�����"��)5T�Y��ݮՂ��0Q��B��na��Z�|DJ��Wm��B��A?����p�2�ST�wsSh�m4� y��>�M<�U����@u���g�)\Xp��n�0����uSֆRx���������Ղ7����iu��w�ىP4$�$ۄ��-�ƞ^u��6�8U4��uz8-�/~��/�٫�;ޠ������0m�#(&��Ch�wZ��(+P���p��n7�ޅڄt.2\�YgKW���*�IDf2��}�=�}ژ쑟7��q�7Z���s��т��1�uM8:�o�E1���TӠ�����(F?�<n��c��:lr�˧�L�����X���I#�pAG���۾�]�OP�y\M�)����{�ʵ�Jr&��YA�*�m����3[ȭ�A(���9p��GZȲ�� )�a�pl���w�}ܚ��U6��0������1�e��Kśf�d;���|L���z	}q�]_�[?�W�`�[����/ZĚ:�a:5����$R�HHq2B�a��4b�k1�<�u�o]����y�Iv���X���j'X���P^o�d>�y�&�E�ԁSY�����n^��7����O��1����9�����R{�i#>�A|Fe�,�D�Jc�)n��|,G{�b
D�`$S����S��x>,E�mc�o�1�HҒ*�����q3�r��Lʶ�z�t�����z\\C���j03�)��E5x �x���Uҫ�~��riAE�$���ΝY말�շ�B0�R��s�JH��ϤN�
�d�nF�w!�;n:�V'3Ŧ�U�o䱍w���ފ�t�%���`M?`�FD�{.3�h�jw��٥�o�+ѱ.1�����7�r�R�2��O�
o{f1�5�������l"�7�(�}:��>�!3�����d����g�P�zM~}�K����w���&Ġ��C�Q$2k>Y�"��q����*�Ä $�?�(�2�� ����E��d)���*�Qu�F��G'4-���N4rm
�|6�YhcH��v�ވX����?��(�����9�<�\=�mV%���w0E��;�r!/�9�%'���	ׂ��+u0����9@��L�#��.Xq�~`��6"���9]#z�Z���g�b��G�q�d�I7�黍�ҵ\7�;��}g|�U9U�+*�S���:����cz�JYA|��v��"&
͞�0���v*z�M'-�zhW��"�����
W���߮2(��䥋�z�!9P�ǁ�)�T�H��8Nm@x-x�'F˼qx&viW����N����d^fКB��6�l�,�ޮ�|���Z��2��:!���s�bcr��L��v ����)�������ɝ@���,P{ƍW�X ���+�� ?a�-e�{��$B�7Z5k�[�T;��1"k)�P�b�dvR%}��)4�؆֪Y�e��� դ(Z�|@���㜒_�7��(���=��UR��kdE`����с=����7v�b��䂚Y�\˺�0N�9��*�{��n�K[x������/���o#�')G�fB7g���j�#cW�7�2��!-}�.A��<D)
�`ר$A�t^f:<�ľP��egO�G�<f�<��+ci]|$�,v�/�Q��0tHBV(��s1=��7�[|�/Ku�B���b�I(���'?�����W�1ox(�����"�_�D��3K���咢����wYk�Ϳ�V��<�� ��,6o률���Nkgy��t�Do?�^��Ram�r�jhB��%/�|�ĸ=�@#Q\���`n�F}쓇�����-9�X��[cx���G����Lŗ&�����)?����������^uD�g�q����
�ɾ��4�<�A��(�L�+�d=��Ԭ�8�M�[��&4�[�"ރ~�,�M���D�d"�iRX�~6$��:�g#Ew{{��`Ho�T�YI �r��9
�0�?#�qɐ�/�����"G�$�xX�"A�a��Tױh���u�6�鸇��b��}H
V;�ͤ��4�$	:��a����k�P�xI."g�|���L���aE��Yk$�)� �;y�Tw����Ł��nW�h�(A�t>	5�o��8�}<� -�X�^��'�Y���e  ��$�F�9�ժ������}Q�����)�����ƔkY�Q1*���'��b�"�E6�AMd��P�;�\��$����@��ӎI�E(_�R<[�	�#�Y/��h�:kN @}���n}��xd�h�3��5)`�O�E�&7��g�!^(q������/����*�'�i��6����3�ŋ��C~	���e�G�}X� ��4\�,���s�+�q�z�ȲC{��;���o�wt�H=�TW̙�%��b��ۖd�`T�ǰS���~ �c�gZp$n\z���X�5���B}h��'q����G�hy#w�������ߡ��%*3�/���k�z3��J�O����9R�"ֹx��X�
�-�s˰P�uۗ���|�2�+:?��2L���mn����cQ[�X�mdNr��!��&��X�1P]��Q5�64�WEaX��{��~u��^�
-���}�3@3w����������"���k�N)O]��wpu��azcg���4J��תL��4#���`���AJ�?�B�����z���9L{K�_��m:�Sb���9{�T�!���G5[QY�@�sJ�ٿ����OFLp|��2s
ƛ;�7�C��G��_��8ƘK�B�0��Q��#��v�!��k��o�/���{t�(��B;��ʬ�_�N�A�v0�g��G�[U�iq��S��ML�ؑ8�R��K��w����k�_;�*��(�/E��z�.�C�u7��"�LR�A���w�.�{�R{r��4O;�$@/�;�Z�Hwfz�v���hW��=xW@[�VJ)M���C0B�E��h*ߧ'O�MXr�j�^�h��9.��v�V���5c��&>�L���j�W���Y�QW�w�K�f���Q0y�63"�q�����������쫷C. �������p�x�8�[�z��t{0�6L2pTY��k�#[�b��������GU�xɎ��1걊�6��+�jc�p�0�\�p~m�z�Q4+;�m	�~[+*�t	%ˢ ��ݳ�� xF�z�M�S��a�~��\�:{賺�\g�W=��� mJ��4B��UQr�&�v7H�����ꎩȖ/+wK:���}����2L|d���z(�����#�(&���8,�qo�}���/���q̛'�R0�;�^%/E��u�o*�N�dD�
[���hY	�o�/��#����O���_���5������J�W��-�u[(Cp�6P �N(������i�2\⁬�9�U���Eg�`�NQ7�s`�o����cn<Pm��T�CDy51߲79�ݎ��0t%���t?oA��
��m^�?nH��R�����N�ݰT(����V����%ò�J�;���|�Cڵ#����i��;n����x�]�o�L���9���.�^���m�߻`ʙ�#wƄ%C{�_/��Ԁ�r��"4�4jC9�jp' >ۀ�S���C%�%��w1R��-H蹞?<hx�5��*^��2��%�� �J�Y�qr�E�뉐I�y���9����Ʃe�aq����5yR��6EL��9�;tzHww���N�*�����sM֡À�a��%k˥{>�m_�K����
�D]U-��i:Yr�1Q"D�80i��&U!~����krs�X�!ݯ Id�� ����l���G�?Y?�$v��s��}�������}Ў�� �.�����WpUr�����ߌ�Ϩ�����/)�����`�զ-�7�
HR�0մX":`�e�N�fgw+8�,~�N�S��V����u���#283�z�,ԗ�tKQ�Qo�
y������d�eWs�!{��kDMH�r�E�D����V;2�\t�"�0-�����Q��q��k�O��籬f�-1ͥ���}���2(��%��6�����~�����j��F�>���Չ����+d�G}��oG�&{͈Q���ܩ>�:!sfBM��j�9u���
l�����q�%!'���*�f�Ĕ;(A�+���WFc��Y}�Y�	����?����1"1n��!��Z����=?��F�V|�X�:+�#�6�7T�ra�V�c��qN�H��!�ZGx:	�3[^`�&���El_|�6�"�r���4��Ḥ��}[\xf~�9�Ԟߎ�RN$�NVxXHQLT
8�/G�K{:��m(��=��}B&�c�6�0~2ͅR�"��z* ɇ`8U���9�s��\�iA���)��DҨ}n[����(>�My����c������u[:��ʠ�Yd���F�K���+0��
_�ը*v����Y+LF����k�6����v���jV�NMF��1�Y6.+r�܆ڮg(`kp�e{�x�q �?s�����8�d*��r��UU�J�69iAG�Ӱ^�'>ԋP�9�� ��8�Ɩ�UN	����"�$AA���k!׎�3˗���#�!��<�F�9�?`�CO3��D2��CL�Ϲ��c@���ř��6�'�"�חq�ق�4M� W�7���I�!o�˸P�c��L��Vcz���4�����d 7$��S�䳣c՟w�"�ƍ��[�A��"��?q��b�3R�7R5�3Pt��n��V�'����	���F
!�{�Zc� �J88�>�Loo�%
���ty���8��b�2l/�����m�g�YM�$(E�a:��f
(�����٤��2qE�1I@U�7���J��9��,`��T ��G��[7HWV����ߏ���U }����\o ��cl���@լaڄ:�NA��{Gha�!X`|6{�U��<��r�<�@�Q\�")�W��į_K�� ָVF8��2�Ʃq�_��B��T�=I�c@�0�D m|�k)`iM'ݿr�G.�|;�~���-���q23&���n��w��KW|f�'3�K����)�h'@@�"RdΧz�>!ˇ��{G�ۑ,+�>���'ۏ�Yv@7rI�)��`Kx�O�Q#�����+6�[8g�2ZB�'k���4F��*U�i{C�i�d�u̺����p,m�N9�w�����⅖Zǃ +�0��h��<��ʁ�u������b�m���
��/Ůb�rw���bxJ^ć�D�ϝ�}�%dQ�L��dy���k^��M��暱Y��v��c7h�^�B?\ ��������e'g0�/BTT\r����m�T�*9|Q���l%Ԃ���_�9��>PbA��W���$��4J1"�����ma�%�i���5^�-�#z6?���3�F���$�s��Q?*��NEjQ%7�$���ϫ��;���:�������Z�Q.��z��j˒��$Ur�%�e�ـ����c�x��7?�oQ���6����� �`9I62:���,ebZv��ڱ�7�E�"j�E�l�ڪTDqҡ ���V�U��!d�{		$$@�,���!���U��[T�VQ��j�s��� O~xr�y���M�����A�Fun���<����q͏F9G����Ս[�-��ߛ:�yl�Ĵf���������r�����_t��+��z����xꚤ*ʽ�d<n��)�iݲT�A�z�]g�M�1L�]wT��u��9�n|�-��r<�x��еs��>���}j̏�,²��[�W^��ՠ�H^@��o�z����g�˟���<�92�wĿ���$��lxg��.���KHx6�V���ED�s�q�G?.��:z���X���}^����O�>|o����ޡOa�j[��Tԯ�у��ab�*�7��+c���Zףra�\g�Ҹ�K�^������޺�j���诗�������\�^�6�6�/s�j\���MX���/�*F��to�����^�C�E��B�\�f�@������ ���<�~�-롿|K�Oۃb{f��6��c6ohܾ����7Eխ��vٚI���ō�8�t`��v:�����q���e�V~��thK����9��`�������%۷��ol���#�2��e�����{���=�_�獩�=M�m�_i0��aa��ۿO}�J��g�g{���3htoGFۦ���v(5�`�{<������~�O��)�{�7q��);�v������lz�V�}Ģ��?���>���w��ebu�0�pQL��u����UoO6�DN8�>�4'V6/�����ؚ���$��p��^�e��	��������mo�C�i��Ճ�~^!ʃ��B��K�׌C��f]��H����ښ� tf��k
���q�{�0�6?<}�%q6���	y�&󰹱^��([d��r8�΍:��j�&⪚�[�_^�xick�(Ɉ��޳__Ү{zb��
�ƅw�c˧�.=a�elB��=z���<4������	?�}.�r�}{@���13x[��w~�.�k����q3�F�pz�|m���>�?�T�0�1z���O�\�ƹhs��M��M�{��8q��D�^��n�fU�@�B�t��A=|���)����%\K�v��/j�Zo-�v�uٕ��7_�Wsf%&�ݍ=���������j�$���3O����o�L�g�]zyO��Ӗ��i峄��M�W��Ԗq����H���3��潇�f���j�ſ[�T?�l��oCO��K7�<��8�|�x�3WVl~��640��^���zţ%���mP���hꬃC�fGe����뚘'�4M9�V���y��kiz�̣/��v��47#���I�#�����`�uvڃyq�;�����FC�q4�\�3��	��qǷ0K��+�v�?��~�l��	G	c�^�d�<-�gS�ERAx9�d�4q[s���r��nd4f���I�+ߣ�K��>���*�k���w��{е�.��y�U��._¼� (n���iMQ�)��h��Qs����$�:=%��""���\y�H�u�2��(��lV䋂;Ν�h�/�=ӿ;�ő=�%���G'�>b=����>N�ρ#϶�&���/3Ǚ��	�̋;���Ӷ�r��z�#��6�
8t��>�� �j=�����+�}�M�t��!	��,#�x�w����^�½J���gg�s�QO&����k�}I�����|��ݨtD������{�x姲��9����]��M��D�Pht2��B�&�Yl0�����d2� ,*�H���t
��T�aQ�IL�łz2���ƐYp>�ʠ3�D�
���xJ�8�d��C�G��~L�%���,�&�e��c�L��I"�ht1�vg2�D*`������es�� ��P$����/|���B^J
?�������i~:Mf���B!��/s�P��E��u�xn{|&�?`,�Af�2�3����ep��C?�]yq��"��� ӵ����SQ�dpS���ny��f�pX�fg��d���l�\�
������d�pTT:��r��bo�9m�!l&�������U��*+��+����8�O��7ګ*��������cv�y�<jk��v?�Sn��pT��m �Ym1�q��mş����v<'dW>p_|?��o��+a�5п��;=Ou��jˣ<wE������a����{n���p���6�֫�o��Tw��j��9�<wexn�ouU�s'%)pn���\`甅����Ṡ�sC��g�L��H@��sF 2!�s�3 ~�1����|�;��u�y�|�<��@���
���	�	P�a��	��<`���p?�Ohɉ��/��|�u�{��.
�9ٹ�YB�L��)�+
�D���8/��r23%��</e�%�b��M'��,w1�<G��gJ����,�@,z�@�߮s�c~�N~���䙕X�i���X�t엙�旛��'��dҬL	��u�.Ш����F�Fo�Zm�2��j���6C�y��j)��ʍ�FS�F�/5��t`^��X@�q��1Е��&�A�6��?���K���>�m�`0�Ֆ�0?���p���4A��|��n�tF�����u�R���dЕ�m͆�5��C eg��������>X_r�-�`����� ���<؟���-��Tv�>%�v��쎾&���B��=�Ϳ�o)0?a��x_k׵��`��zl]�u�����LA6�W*���ؽx�AׁL�P+e
�N�ש�J�A��*�:=�Z@!����\^X\X\R t�B\��iUr�F��j�^���c����T�(,�����z�V�.��"�O�*P�t����z�$���N�����)d*�N�.Q���F���
K�*E�� P�,0��BVJ��p����+R*���%p�P/u����jz=��pv�UzX?�Ө�|
��J�N����6ܧ��N�(Ҕ�1]��H�j�A?=� ���p�Z������Q�>�b��>�J�3�{���W�l��)(|�]P	��{�Ơ�x�B���x���{~?���(���И����0Ȅ�u��w A���{�G��`�m>�}�-_l��l���b ��2�Ǡ�T�/xo#р¤���=�ڠј(��aљ<> ��⧧fBN��i|���F
'%���iL��n��P�(�����cF
���"���N�h�l������M�@?���0��u����@��c~l�|h��N*����xi,g�:t�˳��v�<����u�ס�����u�.p��]�w�{<�������]��{�6����:t�k�v�TREE  ����������������l�                             ��             �       v                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^|}	�����kFH"I��lEBI����I�Dd��,��$�-R�E�,)Ejl�(��D�kM��9��y_���2�;w�̽�,�9sg>��%�Xn������dm?��T��iD�΅2/����	���j�S@Ah��=�x��5
������K֕�E�ϯ/v�C��a?ߤ�n�"ܴa_�E��Yk;�7�9�O×��@����e�ț��~\���(�@����.{�2�7yK�<E��
��[E��|�8�HA-Y_����"�׻�"{n�-I[���RAyZM	×P\ �9��mkO���`�H�-��\�&�p��An�3vp���pη$�����Կ�{�k�0�]�����i�cg�������R��,A���[�Z�K�I����.��Q�QX+�I�p��|%`�ԺP�B�P��;�[?i�jm�B���Tu�@�ݭ&���$����T�/�ca�"?�q
{�E&�sg��.��8Qd�聭�]`�ƈ�#��s��&��kE-�q���}ƣ��2' Xw1�a�nx��6V!ߺ_R���횜)w��Ŝ�E�`���L�ﲑ(�A�Ԙ�-��.w�$]��)-���V�}5�+�SK��v���y8��WJ���x�[�+�uM��L�v� �yG;\�M��:�:��Ͼ��@�3�%��?�|�E��p�u���%}D��aXŵ�\���h�����d�n~��.6�O'��bP�VBi��Ƽ6�-I�ɫ���χB���;G� E��NL����Ћ
�m�F��a=�JA� Z��-�#�n��P}p�24|��`D&�Yĳ����~=9�����4��G�9�T �y���V?7�Y��A��v��W	����3�VT�]����h�>��{�p��Cy?��W]����N!խ4���c���J�yFK�\Mj���� ��"͟v����KsO��t���'��w�r����f��o�ZP�K����z�u�u����C+�E���������;`�%xWs9�m��-��D���f����Cؖd�q�.ɗ��̳��ʤjiCn��*��v����}���P�U�rl\z���ϺxC�9���ǎ?6�
ƍ\�y��%��e�˲_�+�rP�'��@��$����HE#鉮Wu�e����:>۠���,0�5�.V��VwW*�MQr�]f�o����?p�Y��Xĵ�D�CE�V�}:��, � @-E=�*�뒉?p��8AY_��p�G���~IǾ�Ҹ-'�2��Ψ\ӹ�$�(�U��Iu��u��7��'�wݐ�e�_�祿��j{j�ᚑ^/����gu�-�^n�����;��<�|GE3y<7N`�D��9Me���i%Y/Oii�|9D�ד%��+i�7"K�)�tj��h��H�O�#���1H���:�����!_|ȋY]����W/�n�RYW35< �H9��Ф�-'2yͩ��xi!y*�x��~2�h�J�+��ݺZSФ��="#�������
���ԛ�jFԨ���d�+I�	���Z2�%�� �w��=�i@ϕ���ŢZ�H;#3�lrW�>He�6#��k>pZv��sv��`�cuļ�h�?�+*�M�U�槅�84��\���Q h@-r��:�;ݓԻ�-�� Z�5�P�#��;8tMf\F�U�0d��e(y+�_���U��/�(����I\��Q�{��;�s��l�����\�#�QW��ҢP��-ן\S�k�I\8�������/�t���%��zyr&g�;Q���_�6����,�m��Xb��m�QT�pH��}E�]�*J/�Z�pFZ�U*�j%F��ӈuw�{}+�1o�R�a
�&�
���OX0�@e�ӒVDN� �w8�	J⺄���Nhɔ��� K4�CԐVu����FѷW��>���h��� F%Y�/��tO��Lb5��C�4����$8蛩;U��$��W�	I=���}�����n�GI<4�v��<8�)l3�2�S����"��\EM�X��I�M�$+:��k)j(t8���"�z�W�~d#|@��%����y� :��<��~��#��*HGH���ǜ_�?��Su?M���H=X���r�<��4��7�Zp���(�L�M�/ 6�6�W�W��D�x�q���k:
~=�b���_3I�B"��6\n��e�O=4a�����J�����e��P�ZO��f=��y�0�N�Q��+��6G�/���^�k����J���pW�k8�E��k4��-`-��YpH�KׅY
��Y�2������J��HY͠0�m���ĐF�&	+=�M�ڼ�é�K�jM��`�8���[ET<��r�p���+t��y�{u���fá~�4TCY���Ʉ���Fǈӯ��7(���p%��R@�)��*�����.p �&�'��hE�h�e�o�8�y �Q:�JzMo��ȟ�x^Mω�6�&��W|%V��*r�\�o �D�J��P8�Z-�A��FLR(Վ^1.#9�'�@���EEn��%��?l�����e}Q�ang��W�:�ԣl����azHJ3|�d�{Q>�f��XHh4v;�ˮ)4xD~M��i5�5��>�z�u^Q�ҭ�^���� �S��<Q#&��xi����ԍ�����^ҏ�>:�nn��0�+R)�P�ѷ>�����l[��k9�+��Y��\j�� �}'�'�*��QR(��g����RY�;�}:�wD}b\d(��H�i�v-ht��Cc�*���I���^IǤ�/�� �P]��Nځ��0c��o�>���w��*����/��v��4J�M�)� �w(��Zp�ċB��k�݈��xva���'���$�.Ƶ:,ۊ<>
c���[8�o�ő�q�c�`X�0�v�
9�Z��1y�W`����<懚ߛB�QYdg��+�['�e;�>�BO�޻�V��9m#�����ߏ��<�����um_
k����M��;� �R��e�b �QL�n+ȩ�7�E�5ީG����$'�tzx\ ;�������7CҾ��H� �Ph0��W�k�������d�`3��*�#=���� Z��5-r�l��k��X񢄆�¼>˕��x�S��΁O]ȟͪر�������e�t �[��E���aq�i�;�W����!��ȓ���Z@,/&_�v6=ן�V�Ƽ��~����e���A4q����%�$�f�Ѝ� �-��A�M�x�M�B,�)#�VO����Rc_�"�30V�;�ea.�W߅�dH<|A���� �nOeP��Iۯ����K��\��N���<v@����\76����Yڧ�-`�cr�y@ ]��Ɂf�������,w �*U���P���b������+z�qȨ��Xq/�́��:P�&������$�0��_�*���'��J�0��&��f��ᣆ��ɜ����T���`�[q�>� �M�4� \��q,��Bv���#|~@
�3�?���2\H^���6&� �*����TS_ͫ��=xSv��H�ةYi|KR��x�/�Sd�9��؁}�ୄ������GP�צH+��B����A�S�S�[+����t����	g�8+��̠9�zY
`��7���h�=b,B��++��U^E�3� �y+����0vr�0F���Us�`��I7Ǟ�	��F�HT���j�~q��_�$!�N%fO��ˀ�z&M���w��j2����f�
um��Z�/b?�s�0�5oBhӓ�&}�m��0HQ�cb�@��tBm��*��y��vt��j=x�Z G��5��A��1��7WO	��q:Ӽ���%5y���0L��g����؉FK=#�o�^�%��*�ht���2�
-�z�=H�9�!��Pw���7S
R�=��AW�t��r��|�V���l��]�����j.3-��{y`4�b�9���p��&Lyő�Ҏj�@�)[�?Ց�{�1zm͜����Ԛ]����F0Dz��&�T��&.}�dY%� M��9�J�e�L&_�/_Z��Z����Y�^��?�&�J�C�m"^	�k?|Z�-���;H�N��W���-W�;1~�f��ז�ˁ�u����~4�^D�fw��@�4:G3����J#H�͒��!K8��N5X��D���H�(�:��r�_X
� �B��eS��_TS���nݚ��~���6�m)iȆ�F\�>�Ul������|� �˹ʫhOl�`x��VZ {�#���7`���N�ZW1V��&E���(���8�s(Ra3#3ίwB����絗�Ɏ�,uc|�����r�9����T��%�)���k{��K8(��7�ʊ/�`pY�U��*�j�Ȗ\r�>�7	���0{���&��4,f�b�k��<]�֤�Z�<S������'B]���[Z���%�X��? U~B�1�Vf���i��0m�k?�b��]�p�"����H�w�a�%����aGS?S�<�Q����"Δ�����E�"�(k�t����u�m^_�s�c�"�i���a\�z��F�.e��.Tv�à�,�q}��Ft��}�ăl����U�G4`��a&f�:�f|���1[&E^���>����׉^~������a"RIy�V+���o�(�3���49�F�)�O}�p&�y/0x��+������x3��>�u�mopwr55$K:k�m�\�ߥ'T��ʒ���.�|����ϒm�EPsɵ�FY���;��)�L��i΃±4�$5��kE��/¯�j`$Ʋ-$����A��N4"���"N���>���v��ERd ��_z�D����i �'�ѝ����U�̒��a��ע���/P�4 !V�&��Nu�5\����'Y�ݗ����~I)Ya�����l���˧�Y��`�L�����	�y�zf��U�bGQVM��W���[_�m,�����	7Ǹ�)�������̚r��檿�E��zCv���9�=��\3Y��F�c�Rs�j
-E�`6��
���f��Z�R�?�n��R(0v��~.�%;�c�a�xPܳ%^@���8?��BEY��)jbz�����T�
��#�tM������;1~�q��)��q�O���D�2���?����.��2����Y?�#JQ��-�{�����@tQ�^x���2&2).}���O��0�;s�E0�g^'F����ǟ�T1�F�g%;F�h��v�]�� �,�=��0J)J�[
�I{th���)BM����eW5���[U����0A[�7�w���R`��9�ɦ����e\�R^Z�tF�,�~�i� ���Y��m�Q�C�kx�A��zm����#s>��J���`B�}��,�V�fu ���/�OzPb��Z���+��蚞?"�tU'g���d;lK%����u`���Н62j�|�����V�����8WƆ�#�&��,kԔ�jە�g�$���j�����T1�\���È�H�e�����.	RE�jU��PiN7M�G��z���?��_�˼H7�5|J��о�Z�[��ר�(�ˈHkWQ[!�
�����Z��֫h�J�R�{P����"= ������u�]�>�R�!�"��(�f�$p@Ѳ��1��d<̹�.�3v%B]%2�!e5hq�׎)r0�,���gc�^;k�v@��O��ǲ�y����N'�_�2t��}DQ�3s$���^Kԩh������)DjT O�q���x�CD�|�T;+=¬uZST�O�g��Ф�	 ۹�a���_��p�s�oNc��>x
n���K<"�S6��~DܑR^���+e���A!�����|���N4�~���j� 
�������I~h�5���ѹ�h�2x芥�����v�����U���n)�p�k�������G��L��Gk���tʧf�<9��I���,S;��kyHWG@�����l9�I5�L�ea��xU}+鼂��qܗ�U^E�������?̛e���z�h�u����ty������������
��>�Si�A ����MV�p4y��w5a'q�b}�*��x���
�Z/����_\�Bo?�$��?��Pm�w��_�<��~�]���3���ei ��݊^ýZ���671�HZU�3���
�j��F����ﭓ=̷*����,�" �uJ>�<7�^\��ǎ��5k�Xw:Hշ�?X�b�V�������o.���M 2ͪ`��i�-~~��	���������m�Gb��A�r>���,�R3%/����~Vh@�rGp>�_vC[�YƜ�O:�7h7�e�Th���8��e� ^�Rw&���6͡mZ���������-�hh)6^VWm���Ƨ��n��+뀫Q�*B]�%�T�c�M���=])]8��{@u�Ex:�

�[��4[R)/]�u�w���m�z�^m�k��U�y:�JLO���Ud�[��������cώr����~k���-����� ��;o�"�;�=���?}�MJ�WN<�d����J�$��J��\����t�} ֯?�<�g������eA��0,U|�O0���d�Ы��a3	Ƶ�Q8�S+��� ����m�]ۥ�������o���B-;{�����5��3H#��N9�M�]Y�"۹h��=��L�E�J�TZz4�^S粑ϛ��J�
��|�!a�K�E��5�K*�p�_Gj�t;sm�i h�W��$�#ܶ&�h:������8�E��_%|�W�Ƨ�W�z���y`�;:B�ƵN}��͝���Hk�]}�J_��cM�[w�jm�U˼���Y״`�*0�"&�j<��;�Q�4m��u椗�C%��rY-�)������{|�E��Ԯ�:�Z�W��(�k��a���w_'�n�=׳�E����d]��\#��Cni_������_�O}]��ujol}��	Cz�u�!�a������M&��p�U�����
[��}���JP�f>��:C�ޫo��A�Qd`U�s�jlA�;�쾢�9���>��&V(n�s�4:ј�[�t	C����x���/�"N�ّ*4ip����3�!Y�G�ʗ��fqy	o�Z�'dW�$W�`��e��p�?����^x��-�0u%��u�����9�X �[�v�4��������)��R�2F�Ґs�V�
��K�}	�f_�ﱍk�2�����p@.P��5Y�丆��V������`�g�m���K�H��!���.}\*,��~S?��Q<���Q���$�3}�{��D� �l��K�RrJH��n���g���0�6%X_{����L��܌�rR�i�+K�kO��m��.пB����"�X�:�y��z*��ޣOɦx����q�����:��K���J�@�����<�ZGt!Y�o�r%F��k��}�*����_�|�>w�ۥ:�������q$$�y�%/�%q%�|Lヶ���y��4��z�����?(�����Mρ�n*s�l�Ib��b�:�\q������ף�&���6��{�SO�?�!�U3�Ϲ��ݨ˺���\j�NBz�&ލ���l�0c�q����B^���;�:�(g�Ӗ��(�Kɵj?<e��pn��4g[�bø[��-��^tM����?%9*�a�Λ�(d��v�����~��(�����lm�w\C��Z33?-�ӱ�b2���&�]S{�Aĕ ����C������(`�.���g��i#����:ǥ\۬�AU���0_3�t���
���u!��͠�K�n)UKɣ��C\3�bH���L.w~��j%pND�@TJbD�Q}}%~�D����j&����U%�8az��E��̬sҴQr��J���[��˰"����k�/��o�F������6ū T�]�2pnOvF�k���1��(���*���Rq}���������W�H}�Bi�{�u���#B�/f�-5����"�v,x<<ކi��f���R>�;g�r���c朰��L��A͜W�Bj�7�sF�JQ�Z��$Tv�N��6\�2�����������-����	tB�70c��;}��K�pr!��_11�g8.
?mbƻ�T��x������x�=�����s���)��%�y�e�o
�b>z�ܮ6�ƙ�t��14 pX7��Ǻt?yĭ���V� ����������@����Ŵr�n�Jmk�3�I���JH#6�N /�/�=�Ν�!M)�wql%Ծ�'�H����D}m��g�Q��z��`.����n�	ᘙ0ڭ��lv�k��;��[�2 �l ���C�������Iw�U�jl�cT��`V��80�{
���"f����s���}�keZ��'=�x�1ԠM�r��K_�[��\D}F�q5?����\	 :*6k���_t1�付K���6A1�<�:���	�ʙn������)2k��[F5�u0:�s�1 
za����r@�t}R���UƵ�|����P]�&	9��$��y�8�|β:�
ۼ;����`��t��%���Z7���X)�ܫ������T������V���y[6��Z��pqr�ɓM�� F %[�qߣ�_�2���VP��u4Øu��������յ/�U�����I�:�\۵��O�o�������%UْR��N�צʳ�t�]~�Ahe#|I
�u`{�xKl�ֶ�C��6d⽋����eRI�+�9Er���
�%��RZ�8��W^0o�r�)|���{�Ƽ�i�;��#���ł�Wr%�N��F�hd��c��(5~�n{~NjZ�J!�]�z�o"<��\�w57%��*� ͞��Oڑ���ݓϵ���˯�0�X��CZsk���8+��K��]�?}u#�L�������5��ET;��p=�.Ns�W�i}��I�[.������������}��V��B��y׸>A�����h}=7X�l�Q;����8h��G|�W������칟\�`�H���-�JL�iܬ4��L�N0�?r�LSu���I3��i�����um���]����s�kCr���{L��r�}�;������0�w�1������ٿ�0�_�Ep�T���FZL�w�)�q�D�^��͛�f��9\�,Vp󫜚	UOl\[3�ݦm�x�1�0�������:�m�%S:x���IU���L�1�Z���$�@���	���n���K���_��
�\�n��J�$��RXUܼns���zD1z�.�����9�dR�Cck�K����K��K���x�=�`�o2~ј������
�E=cYWiD �ha�]$�踙�(���,b�ĠP9բ�����fZWM��G�ὂ�'��ͩ�3n�s�N�bC���Q�����c��a^��Gl�z�>#�������i$�»N}X�����	{ ��|�.��k/yc-:(�&,�[�-�p=�\��,݋�_�	��_�o����J�]A=|�I���/��!���C����V�0.��Lm��1��į���ת���6��ҾAeZ݀;C$���p�Z2,�Rw/�i��8 !qRu	7�&;tx+���&/7��B�\�9�,W���D���G�j.�U:A�Ởh|Ka�t�lu�/)�Yʨg��-��� &2N�Lr�UK&�:�}Z�~���9>���+�G�vd�w7�"����a��17� rXpY��yY<����`��њ����{u�{����
RAQ���dNR�q�D��uA-9ѓ�a)������G_��s}Lh�D��(����P|��{W`�?�D7����aC���_`O���Y+V�i���YXW4��^/T�ba���X���g�����g��V�E5|���Iש�=E�u��d��?J�M�.���oE��g ��I��g�*:68��6�!�/
�h;[IE�6צ�U�*u"��!�)$�:I�3�%i�~�@v�ku�:e�xT���Veī��4�?&_�K�lq_1TǸ�rY9�I/{�I{:w�g�&�Ɯ�7p�`��/
�e�0+�S������W��2��umw� �������`^<#�k����C� ���.]WZ���=Wغ�ؤ�k:"�(��h8��<�QD�K��;�*�����Ln�6��u��w5�	ڦ=0C|��4�_:�I��O��hǲ�;�I�Qj	amT.�I�(y�u��RJ�٧��Rs���,�4�WR�u����ֳ>w����	�����n�5��+�� ��o���R��,�bz�	ءF��J�1�M&h��_w�d��F��޻�������t��y,�מf���H���,��X3�������_$���ހh:Y4N2_��NBߑɐ�vs)n��pH��FBF=�Dy	M���/�W	O��M��>C��z�2��K����<#�˞(�0���H���X8頙���[�zE�6ғD�!��W�&�����z�;+h�N�K��2�pR��:�O����K�v^޲l� �w�{�bH�t]�@�3G���d^�7�<���̾ܨk/E&�.��iΣ2u��U�šZq'm&�C��y��R��5��9�/��,i8�2�)�je����$-0̍�u����]�b\�B[jB��e) �h-�(z�/.>��r�ɕQ�(E1ϺAK"��R�� �j��w���#0���U�	��`�9�q��BR�z���wX�<1����Z�-����O�\���&3j�E�FC�XT�0,P���6��nw�2���&��Mt���^�Yn�C��19���G�d��/1��Ͽ!��N���6��@���ϠsR�����������W�2]M�U��N�S9��$�[��+$�f��ym��@t^�|r��?�N�A����q��1��2��)�K���2��u!2��`�^{�.����Ua�	��!Qr-���?aӘ��,�_1.����5��-��^��� D׶$��Z��F���PB@b{鱇=�ঢ়R���g�~�z��S���59���gJeI��A��	�r�u_pe�z��P�S����/azJG8��|7_G�#�!���B�p����Ӳ��
� )�w�����e�Z�H��q-K{s}<CM��J-)��s]�:6�Τ����'nqɛN�S�>�P3��@Ká�w� ͆�շӗ����8*�1y��ShǪ@�&����&�V%���U_A$9`8�
P˨���T��t�\	�H)�\��G�#:2��)H��0�Pǵl�ꝰ���	|�iO�k��=F1)r_v���o���Uy�S?����Z��Ւ�ʸ���֊�F�f��7K�p�\r�m��]}��C�<bu��M��vurŭ�ߴ�}���k;�m�LH���}0\R0�%����Ս+�7܏��f���C}�j!�J���X�뜂���S�_���#z\�0l���=3>��
��oW~� ����)�Z_Z��G|���H�<6Tк=dx1Y�Ry����I�:lGPj��7����8Y)��A����b�+A�E���}%��lnV������*�U�m�s���ҥX_WkDe\K�:�ٓ��`�&��_ǟ��ӵОI�4
�㨓��c80db�)b��.�W���][�G�8;WT��t��
��3����h<(�E����3Z=�cs��Xx�U̔���rB1gQ}��cī�i�ws϶���N���83ED�y�exXm})����r�6]���G�Wі��A�����i��@_;5n*�
࠳4j��.@�n�OIZjԕZ'%�q��p�
�R��^)�b(���zB��`�ZB�,���]Jc3l����R�c٤�kZ��Sn}5J`��V �(����-��F:����dч�e�	������BU�/��l��\�4�z���E�������;������D_���r��`��,j/�)�epM~���c�7Ե eCu��ل�eXZ��(Ի>���΄�V/�e�y�op���l���B#���:��'ʯV������Ճ���R�A�y)�%�C�?��YIM��J�'���px��QjB}������@!��8���L{8u�F���d}{?W��}� �s^v����B�)�����G���JꜙkL|ϔ-�X� ~�ݓ;��/�Z���]օ���&�׹j�V9$����<��آ�*���7�p�[�<x1(NP�rpQ�f:���#�t�L��d�p��0d�f�U�+�ާr���Ύd�?�J+����s2�!� H- }<f��Hq mw���(��!ܟ-�ר�s:[�iM5)�0R?�=Oß"}�0�jMҘ�|!���Ӛ�
�������0��y��{=����,�زt��2K*X�t��g9\�m�5�|[V��I���Q���S�
����
;��B�e!l���us}��5�"Ǟ:�4���Σ��
k�t��a��w{)�Sʧ�	�f��>绷���H����96�3�v�^�&��(E: l�ϝ�%V�:k���V��b����)�!�TF�A��CoU������V[t℮Dn�n�z}������(g�yη8�����y����c��❾��qF����ԷWҨ;:��U^E{_*,�%ibK�H#%/����h� Q�5#���{��-�4[��딻�S}[l�$N����X���y9_B��kZzr�g9%	8s��6��m��brM������'�Ce���;d7��o�kR2������E���n���W�q�{H�7���hÁh������9�z���oے��&��G��
a
�]=�Ӝ\�F�|bR6,�B�O��\�#i?fk�T��fc��wJ��WJH��������"�͟��A���~� O���Yw�CXУ�cԓ�p���QK�me���0&@�Zvl����� D�Q��(U����g���ԛ�p��g~	���N?'��ך�_'�1,aG61I<?L�,��YFG_�sFi�Iǵ[��(���Ev~�2���1$�Y%\ŠMl����J�l�ҿ�g�F���R��i\}�k�/��ޠ^���(���_��aOw��a�]|3XX���W��9?�6)�T����b4��M&9��+|jH�\��a���l����j����x	�.J����O�8z�����G�3��uF=��� G�Z z!�K��0��9P��p;���;��N�>�$T^(�3:�����I#�M������\M��%�k��P�`�y��8���]@��7�W�u!��j����sܮzث�3%��3�υh���	��"g⿠ƚ�LZ:��<��K	��?��+h���=���ʟ��
�i�,�O+���$���n�(M�_�yUF��z^��z:��w��h�a������9}����F��	
�u�V�Q9n瞝�t���]ո��m��g"�`!ߝ��+����v�Uv0h`��m��ɺ�U?Z����;��"�]_���0G��:'�0mi��'<׮V�]�.j�������>&�+�lrv�5�l\���MYh���c�s��o@������ ֿ�wiV��	��i�7�����,��Ń�5����;>ID��qQc����l�Э^���=�ه�����I�
;=<�Vs��������M���ْ����m��Ó��Wp���ϪB�A�����m9�'_���0A�5��������ۉL���{�~g�u����7��DV�F���S#��,�EP�9��oiQ��t^�.YH���Ԇ��&Z5�z �%<���WQ�������ꟂėeT�6�H��4�A?�3���������r�w�h�d3?@�G��������1l��x�L�����tş����uz�3��ڱ]\	Q���%i���"��b>�֖�d--��������a~vH���f*�M!�����r����j�M����N/��	
]�M�=T�IpCZ菈��4��@R�%暐-r=���e�;�����	-_�p���|�1~&*��]&��F�:Oן�x��WS���;3��֡�B9]S{��:Ѫ�P>��i	0�����_�0�K���M^�� }A:wa��Mu�>f,�K�M^�_��06I���J)���Ne�mG�yb�wZg������_с�k{6�Y*�k��/w���"}�cM��Wa�.�cQb���ܸ�T`HC��`t8�j��!��x���.Z�,!��	��\�4�q=N�G���k7[�3<B{�i\��^��Jk���g�w��d=n8�����"��n�ML�yJ�S��q�ݏV�9v%G���TH��g@6f����J� Gm�5�+DNX(���yշK;����Z��祙�x+i��(�-�e�D��S�W� �k���Zjw|�����O���wI���g麗��5W�EVvv-�J�y�W�\��/��2p����tv�H��Ӿu��71��en��&ꪏ�F5��uȣW�3O�C�;	�=���%����+Nqj�G�E�����5q����{�Jhv~��IG)��ΙNG�θ�`���-I�e-�󶆃��&�/����DK<�֞sm ䷝��u��sJ��v��B���.9T��n�T�B�+QDw�W��Z$�a��}3��L����4�~�ף룺n=~��%jHDR��V��n�'���9 �۷Eh�1mcl�m�[��;ɣ(�}A9ᎁns�|sW����.`0C�>�Vb��������g��F�jY����z@��k1�m>K1���_r���IW�.�X^u1�G%��~�V�t��[EҊ�xɡ#���y�Ď�z��Lt� $���P�#�Z�7�eZ�7�j�������^����y������d� �Y#�ԣ�Ya-:��h���+�G -�E�if×Y�S�G���<�k��$3;�?֊�kt
���[_��v�_ѱ^�t5�8�m��'��)��Q��=˕��5���G~-�Ӱ�Q�|G�H�d��������8e`���5N�mcmc�zBY>�!*�a�9�.��W���H�E�!��b�\FD�^ߜa��/҅�"�o�:��i<M�m�Z����i�]>�`�5�x4Ľ���.H�}T;��V������p�ea��M�BMF�a�+Q�`���E.�8A��(A�n�lWLWj�Nx�wFYj����0�O�5�5���}5�d��"Y������j���L��ȯ��ʂ��;�T\��g��ذ�$쏑|��0��<���Ұ��5�<ˏ���1�\��zD�(�J�)�����G/�l*�\ݢP�5B��g ���cl���~�O��GG8��F�ja�;�U� $d�:�^��o<�Q��F�9�W��٬wiǼ��l��|�����if���P��l��P�uŢ��Us��5wWbK&��4�[����Yz�Z�8���Y#����q�����OoZ.�^[%���5��f�=�����r�I�WE�4��$o�Hc^���{�����ѐ��1�J����	 >H|:��-v�y0��6��t���H�Ͳ��3�K��s�H�ߒsR��ou�>��|Ӧ<ܠj�0�h�����JC��?h�����2�$5�����f��O��I��2�4�J��f��s���s�mJ�ˣ�����(��\Ec���}�o��0We�e��oR]�UK�k�Չ�f�ҟ�l9v����.Bˢ%�"�)���n���9�:AWZ��Zj�jNF�19͛���7��+�!���(��B�<*����I�	��+3��~=� ��`AQ:�B6ϕ MG��"�������/<tJI�ު����®%i���E�F7J�N#C���? |��f�b�04@�P�Oq�K��FnM�F��.}�΅C�I��П�&OК��=��pL[��f��܍B��F1��1��ܢ[ƗZ�X'zD�e=�yז���u�y�]m�6���E���k�@,��6��[����"b��d�]�+��51��=����1��~}ڎ)�9��ɩM���؁aL���{��,Q���	5�B]���~�d`�tq�*=����t�t�E�jG���x*˺�*>�U����a,E� u�ë��r���,�����?��#FI\3�X�u�'��8Z8w��h'���&}&���6W�+~?��挻1;+�G�'�O�e~5�������䜬ǈ�<��z%J{�*�����А����Z7�W��dtYL�%�޳2	p{���K��\;n�k�n�����P�o��U�_z���*�-�y����'%[+�${ʚA�+�KKG�_Q�`�.�����ߋ��>|���G�~�V��[��:TCZee:~v][)�Yܛi��I75؛4����iF9E(k���z�T���L�jt{�[�މ�c���5�9��o�Q�:�����_�,��PQy�_�� �i��Ų����AU����L��XxӍM���]�=�8�P�~��4�i�z�K��2r��K�²����&�q�����1m��X$͡+�R ���j+�~�$���8���o ��̺�+r^_�W8R�ϰb���c�|�浿��k�9Gh������ݰƚe#��J��u�+�-I�L;�-�"�Yy�{�!��1�գ*��CX0�R�ᮔY���JP�����ZQ��*�t���?"�O��(���"���:".\��yG�FO߭�*��W���K���z�ln?��2�c���)������Y4Q����f��Q����O�>/���z���T�t����ϖ���Hi������R}��[]-�!�Ͱ"�sU�@���r�?�8���F��#1w��f�98U*h|����2�0��Bѷo_���Y ��Aq��BMC!*��]Ov�8�#o�5�w4�� {}�" f��zE�4@����"�1���}v˵�2�������s6������g05g���U\3jy�vi^�=5M��J�~r����pk�A^�'�T���Vw��k�u9�i����0وۂ��t�d�k�+s�6'��N-��UwB��	�9c5�Dxn�Ε�£�,Tq��C�B�) �x6KԐ���i���NqA�JKe> x�����
>�ӫց �41��K����#��l�/�H�י#���<u�W�P��=��N|���,�����w�_���f�l�*���U��Өоg�$�w���k�����z�Y�YT��\}�oT�H��V�kF*�e��㷘�G���{��"*�y�w�$��^AJ�酚���N۔�B[\8�^A�4��"(����'F���v���O�����iY:UFq',�@ ��c�0��4Ϊ?-�R1Z�FI7��ʗ|����
�ُ�����&`V�1/�\�y�����h�OQ�aq�(,�6�o��ɮ;��I�%lqR2�̤5�T"T+�vu�V��'��0�RkB��E��;f~k��m��\�]�?�nF�%>{7)?\��K�9����
��lk�A�C��T�������C�ة���gh��Y����Z�h7�":�X��m�WX�h9�r�O4/0�~��2Y�1t�P����~*E��oR�!vB�+���I��y}���w��1Wj�F���+�b4N�i?0�-L�64aW����Ү�Q4ֲ���'�����}�� �*q�l�v��9H�S�S�le`���L�����[���I��_�HIh��a�a�~]��o���̯��1���e`T$�M"�����?)ԛ�MT9���s)��^R3īŨ(#�2�i����� G�0Q����#�!���]gѼ��Rmi�Gݗ_!��T�_}K�=r�3�<=_�U��H[4�l=�kG��y8�]��
��K㤂��]h�ټu�i�%Ϸ(�r��IN�����h��ן,�2��xZ6Q 4�k\i��>�2��T,�����#��D�
���>1�T�5�O}�OA��4����eV �X���6��^qИ=!M��`�N~CЋY�/a�)�j���U^�����1]5�lw|�
�1�:'��폗|����i�0V{�ԓh���;~!���ꝤS-<�R�WӮD���[£�'�ͷOs1�|t���˪4���t������m��j=�)�"�L��je1�{����R��aA��Fw�W�e�����h����h�#C��]�w���a��y/���1�W@��}�~I^D�жC����bY�0�K�S}a
ZL��B��}g�-��fo<�شT��ŝ<F�Bg�j| �ؔԬ �/l�N���pY�d@,�7�1X��;ۋF\^�h��/�]����>1g��D���F�y��/��f̴�� ��Ƶ��/"������	��� �3�M��a��ڥx�P�4A�Ny�~��~���_ ��zǫ��*�N�1����:
�Y��#Qm����m��G_�K��*��x�����R�g|�ɸ�����Es�+��h�4��#�H�G9�h:`�~����Ҡ$Mw_���k����9���}���m��T�V@�o�nӸ�dWy5�K(�wK�=�{^��Q��M;\���į�6�����9��?GǸe��:r-7���S�������s�]��j�|H��qK��H� �W ��%b��D��H�N׆옚ˎ\��F�եx��Ӄ�e�jM&�v=�x���J++hC-�q��H�pw�o�C�,��Y���g|�)��O��h�z���';/�J�b{�p����Ee��;���4�����*a
�!��?l2�⥇4��V��#͊F���W�	h��5&�妉����[o�˧��C�Y+���+	;1ˬ#lf��y��24�z�{�y�'�Y����[yO���|e����vg���N7a�5k�ZV�=�a�>���z{H��4�I{ˇO��O�1�Qy���<J�y?1;��X�J�O6�0x�F�*螧n�蹄�k�*�B��,塀�%���Y���Y������f!�m��*���q�
��R}_�H�z�������^Z�+����ּ�r�YG��wx��yn�k.�\�b��z���MW��91[�~����i����s^�E����o6Q�y���_��ym6��i�c�����<�O6B���6H�F���\���A�����n@D����a��Kl����5�W��M��R
��O]�$��caq�jޯ;���M�:MC���[��9�L���Z�vj[�R�f��ws��X�$���wd���yM�1-5�4z�<Z����D�%����qK}Сn#hu��m��a{���TݽQK�餮l����J�k�3����$����?����	w���*g��jT��X��"2r}@�cs��7�>����/ړ��%��\�bNa<����N�nz�`�i)j�����í35�9W=r���WN!�\�IuB�
�{����)Rb�s��ǩ�-E�Õjt&������ߓR[����~=��m�^zR�����{��c��p�!L���OŸ=��%=r'�Ͷ����QF�%F� ��\��{��G%=Lߌ�_ �Yh��2�4�,�AYi��VFL����'��$h�LP�_yH=ݵ2����#�]y�}W:�r����X��u�9	O�-�� �g�,�Rپޡ:-�?EjQ�O@>)�WxHޛ(o�y:,�!�c��w��0cm���J�(/�Ԙ"�j�|��B�3��
������5�u�$�VnS�������:!U䗜�O�b~���t���9M�Vo�9}p^N-OV�������|�$}T�<��!�%��[~9|	-�y}I��xWye����_^����q��k�,i�''P4���,�X��8S�E�}z�!y>/�����ttˤ�@�������ܘ�7�%:tdO�&de���7U���2�R#l��w���A���ü-o�Ib�V��ڙ�$�#���h-��$��?�������t�E�U��ɋ22�}D�*�KNB��%L�?q�qׇ�K
�Ҟ�]��7.S��0T���ӯ�;hW!��L��ԅy���5�$WE�y�攕s��3��Qt!`�޸��u��gp����d������Fw,W�QF�PL:< H���>��Z�`���Pڰ����M�����2cZ�^��L��Б���hV�L��]d�LU��j҃��īW�ۉ�v`�C��*�kmTՌ�l
]�G��ԅ�R�(K�ϓ]N�� ������W�����3�M=9�	 �~S�!%��8+���]�T�u�WQ����fj�t���zHӪ?`X�M�yh��﹊���w�smoh��b���-�7����{0X�T�� hCI��+:^�*>p��e�9��5�,�ʫ�~"T���5n����q�#�;�q�K��s�Q�6�72ۖv��@Q��²�&f�GW��/i�mb���^VԒ�U릻�'�cH�m�� �����lQ7ƾn����6��ؤ�@9/���t��/����%�1��EZ��Q��hH��&]�  ,�aF���L��8��ä�U��_)1G��.v���1�Cjlߴ�e�L+����Aa8�Ŵ8�EѪ�3p5�k]�Wl�FQ:@HӀ��펭.�@[���3�bݙ$��H�6,�����E��k�h���e��V����Y�R�.��^�Q	L�Ce���W�U�N��gr�kEI����7������"T!����f�:�7�9���f�x�jf0�6��Z��e�D��a7ap%�pXָ�v�-���+�%q����:���:�d�ψ�C6�x=�@�Kj�������Q�ʚ�lu�U%q����	�hO������y6Sb!Å�3���YаI(3�S������2	��/��bǵ�9%�Ϛ��,���V��ȵ�)7�8�u��{�m3�Zꪾ^�5� ���O'D�%�C�:yU�FƵ�H^�C�s"ؙ1)e�ƈ�����U�/�tn���m�I�*03:�Y*-8=�a;gh��r�,����α���Tyd����Z~x6���JAS������7GH[�Z�QUfwN��e��Xq���S���P��5h"��GE(;��S�-XӜ�6������(ޯVr��Bý1J��/�zX�Y��B"�F]�݉W �h�$<�Cc��O���	c8�Q4?pb�;l��5��\�j�G���p��
=���Dv��$��G�����f����Y��a�$�O�o;��	mA}�T���aN{�`k�U_Ϻ�G��	�U���F��(�	J�ƽ�u+�DpD�%_���-��94�E�����*N۴�B<\�S��޻�|h�s�
sӛ���~��Ɨ-�:!���������"��QX�k���xA�B���5)��mx/��\!򷥕sLo��Y_o+Cд~�G�3�/���g��w�>÷_���b�^"��W%��!��'�j�h�p3�Kd-/7�4�M�;�M�_���.a��qT.Y�m�;>[��S�����f`���)�#j�&x��"���:��||h���#D�C��,KzZz.Ƹ���Fx�ԭ$u�+d�4���~��	�W��f�h@�K��������I'N���KmZAFF�<G1��S��rR��Gj6L�q}8w��4l���^
#J�rmn�'�y:���J=n�Q��Pi7����9�z��z^?�6<M�����+����w�EWB���8�!w-u�Wё��ә�r%��WHN(e���+0�b1WZ+M�x�}KWx�b�˭��H�<։!]tK�~qW/)۫��'k�⋾�c��R��>�"ɿ�wzc���a����w�7X�(�f����F�G>Z�7��B���ʳp5�K��J���uc� Wi4�VZ���7�1����=�+���T�� �e�-��Crm�=�'�����/@���J�iX=���)��]Ӧ���MAG�6��y���9$���oc|o��;g$'�)�*����!����KE0O�~�$Z����l�s�����^>�Ͻ��l��_�Pz�y��|��QK���K��7Vd��<di˿i�5� �o�ȕ�v��y��K����Ԅ���y$�k-���ͫ���`(���v�0����U_�Ic �<*%j�!�x�V�2@j�x�|��)N����0��W���/�j�`N�X�3(���ޫH�#���E�$�����Sۻ�C��>z�
[���J	]����`R��AtyU�Q�d�>�jz>�x�N����P�J����@�I�D�cD'���C��l��4!~ޞOZ�yA�aR��Ջ���PǞ��� ��w�ĵv#��T�t��05/�;9��J��|m����d�)��e䏉�����Q��? ��z_Q;���Ǥ��tz=��}������پ#m�Ys˗Va�w��ӵ3O��ch�>.GC5�������뇉�Y9!��p���4�AU��v��d0�;������/��W��핓ι�9�a(�IL�?5���0��5��'�iN}F��!���"E�F�e��P��,{s��V5g���1
���_���-���5:2�mO�� l|c���l��aJ[\ �����Fꇕk+Ͳ3	�K�� �N���uMGp�;�*z������`��!��'�Z���z��P۩�=�*r����+�pWE�++�ʫhz��A��-�U�%̊<��4�#�N���c=�ށ֏�ƺY�_|�+�w�WQ��S߅��W��@ԋo`0Kq0�G��_-ʠ+PC_�\Ϸ�j�H�a�Fц�mn��*d�.{�?��-=��-�;�i�q�"�Dm1o�ނ�Q	�HC}�D4:�k����f��H�[fA���9#^������~�4nƢ���R �x!/�4L_XȲZ�$J/��%�!�Ã��w�{U�F'�O�M���8����/�!�Ji5Jt�̲C�����4�n�EMC$�|]bUZa�\��k�|�e�4��<]�.:�Mĉ V��f7����/I�T����0��8��EӴ��G���6�]O��-亸�F�5�u�<��t���IF�_ٍ,l6���R������}�-�wB���-�l�멯亟gkt��:�K\E{�6�䆗�12�a��l�8� J|�kz�s$���6���v��*�����`\�z���&���b�iX��%j'I���x,�%L�D}��O_cS�%���Kʦ� #�;��H�վ�p5g#�7~�k�8���u�/Ԑ�sn�z�p�MG㺍Xk�]�?Y���%���g�@� �AKί���8�\��ym)Ǧ�+6�J'ħ�*���xfHY����i�k{��F:����y�}g��
C͋�����P�������B�ϔ���`���H	���N�m�7��(�~�-w�~Y��p��@�<��^���%Z-�3�9~7����|9�v�7: �����ō��E)2P��=ӌ�^fro���K�y�[�>�� х�L�䓖�	��#�*J�����"=ҏl�����>�2b^+%-�T�����%�������
@-���#�  ��JwH��%�~H����xi	I�r�i$D	i�]))���;�93���Gy������̉眉M��7�����a��{A&h����RЯ�K�O���2�wR�3��6���m7Zq�1=mgǬF-`ؒ�!V���F�ٷ��1���HM+1��}	rp��x�-��
;W�0U`=/-����bQ���N2r���1���$�����?���w�*�U-��u�����up�A�>��B����uֻ��k�8�i�Z���e�o�r�`��G8'�7� � I�!�zg0�h���!0w�W_{0��5�(�XV
b��H$��f�9g4�yKW�i�BD����5�*{�e����t��{���
��m�c"�T�0�{�"��{.�?�%�����lB��'���~<�����O�1�CQ//��u��2P����	�-��ϯ�u�ς�P5X;�Q|��jv�d�,D�aR��aX�=�� 냺yY�3F�nIL.b�'�<�'�Tl���g�1�Q�'9yj�S�O�}�>f������{㦳eM {�7��_=X��9���j��o4߮�&-�jh���pI9�[����İ� �?��oա�D�ϓ��b,�� ��Z�t⬄��f���b��oy�.�gW�b?��_+�K@W��]h���ҫO�?�l	��#;HK�r3=ު�i)6� �L.+I׳��8k���{7�B��;�{�\,����VԤ)���@�����3�:�$�0�JCq {}��&e���n�Mϵ%w���Cy9�w߁��	��l-�Fi����ٽz0��ztO}Y�d�i[F�u�bˠM:�T6do9��q��>�9I��$�N�����kJ�w�t�Qmoy��a�Tg4���|]]������.��_r�4ϴ���IJ��}[6{��Q��qj5D��/�N'%�LE��| �ʚ��V��:GKd@<tB���M��}g0�׃x!�p�;Ԉ�����uZqFs����2�Z�)��7N�v#k_c���}3���;I����q�t�wk���qv�4���J
��lw��+��%ٽ�\t�>�����fv�5��Q>~�zځ���%�dg�|߂_�w C%X!�v�J�ã=enH11�����f��Zl�����i6��O�A���v�P����O#y�:�&Z��+���b�͹p̞�vs��g�c(y�=��qԽ(���L��c4����h��Nf�0�n|V,����m�|����2�̒�j���ٽ+|GrWV���v���r��+�M���97O�RL���m�=jRa];����Ҭ@|l���`l{�.rF��Q�	H> �#tN��DU�K�#}�a��`O]	t0(�'��[�pǆTx>M����hJ����H��P:�T%��+U8����q����|
����Ja
��\�0��x���}���%c�ߔ��
Y��?�gb��H�m��;fd��R��/�/�.�su �wE?�Ww���	�#+j�5�	�hA����h%?Q��m`���HWPs�K��~n"�
��%Q�ϜF|�B޵�uw,ҝ��.]6�������ْ��^�D�Ej]�Zg�X@V�33��1�z:8��5!��ϯ٩b�p,r=��z��|�;M<�v�W�S�������� {z+�I��(�P��x�G�f�L�|�7��֧1l+�܀�Nވ�:���<�*�P����;�V��Sv�ӈ@�!@��$�����A�QQH��Dϩ����4;��˼Z�
�I��?YQ��.�A�.F��Ne�l��)*��r��c��Zka��C��񇚴�5��? ��!�i�.j`` $ Y�ט=��Kp�^�)I�M`������iPkIԼ����t����51d۠�z�K7��l~�[�$�jx� 
��ê[i�휴z^����J�5��_/�VkNi��m���!�/ �ٴּIC�5/$���CpE��H��:ۚ�kG�P�-�E�L)}����|�Os9G�g�#CغvkĄ�~ Y�pY�/�A���w��k-g�I\���X#�����w:��<�A�� ����������X���%��Z����D�e� ��-)�p䅶�l�gk]�bup���G�&�c𭵪�t=D���WӪ����@���:n�'��f�؎�����ZkM췖����ݩ���������D���U4��[<bWk�|�5.Q���R��h-�Z8�h�!�X󅗚N_�Z�a��]�JP0�7��Q�l�Sऍ�DTX(�Z���ZlE�?6�6f�r.�5�T��*�_��by�gi����s,$����AG���)M�fI��$�pL��O�Z;�kQ�p3P0�޳��UI�wmE�ٛ8�ߢ�H�<�+�.g[�+���qK~��ޥ�ު��K�U��m��C���Ii���#��9�Q��ѳ3\�u�d���6�B�	��6,��u(��ự�hm/{��Ck�\w��-�)����ډ4HZ���tp��bv'���8�f�v��{$��n��
��,�zT����Tb��o�ď��"�'U�g�SK\ŏ^Φ�-fTE"�׬�@
�D��ӄ�a:�ୗV��yG�M\���hZ.���v�����ͅ�d�m�R}��HK]���1Q��QO(j>C\�(�xؖ��`�U��6\2:s�~ˏ�r{�&��.��S���:��K����E�
�'ͽ�Ss�ܗ{R�����3���ujW�&n@R�So�<yIfh�����T0(pKP;���D貦]�Fޢ��6;=t�ra~�^6�q���m ��?���;�^sŪpn���'�Q@FV4ڨ]��o�.B�Xy��f�Fj����6{�j��0�u�)� ����Z���rE�)Q�jꜼUj�+�H/[��l{�%���4ɜPo9t�8_w�%g��L�/ҋ�,�c���O�:@(�� $��1#!�КdVp����V�4Z6\N1��g��R��b�X��`t�C�R5�ۑH���W���>���}}���wD_xX�����LZ��Z$��ɱ���R��$µ��Gg�jvh�'�z������wJ�U\Q�]�|��_Xfyg�d�˥ �����v�i%)�_�a �N:d-]
N����<����"w�J5�r�2�aU�r�`Fi;�$z9�����ѭ�B��$��f�"�5�O܅~���m�Jk<�������i�׌����#H�mu3��w�.���oR�e���a^��ִ�2��ң��˫Lli��w?T
~4��aq��&���ȯ_�p꓍��?����.i��G��\���؝���/i��x���� Vㆊ��˵��-����k�f.
��C��pCQ��}yB�c�S����4=*���i,ۮ�)ͭ�����,�g�����~S��U##|:����y���M�R#R�����E��a�p��F4�+�J�Iܪ��ǆ$|���?���.r�S�Ig3ߠ�����-���Jt��U5xf̱9U���R��~4:�*�w�uNrm��q����#��LISQJ����@X�Fˁ�R^V8a��ϓ�d2�2uK9�|�}У�$B�'�T��t�QZg]����'����҂��;�Ɂ��ѱslmF #n :zN'�WR�)M�n�\�{a��l��.�x*(p;T�����#�v픃�^8�x�4�������KH"�m����ۺ�4E���g�6�YB�;�h�_���!1]x�����J/%K�����1D�����8�r߶�����g�^!�F�I�R6�M ��� Љ�z6h�������>���7�
���L��y
�����:�"ovz�$�G��E9Z�?��k�#��70���SR�Zh���n��hO���o�E��?��">\<�N�˛�s_�:��Z���ه���^�`��)���x�M����g������z�3�$�[�<k�[���sf=<'�+#,%�J�]���ݟc��E�ԯClS1��gy�!���=����LۈՄ~����a;\���I���]3�c�YT��h�����0��½���EOd�/�N��^j����N»���@M;����^��!r��P~�)J�zɷ��� .���"�8/Y�&�2'*2���>�8���fw�&r�`i��!e��(bOg�B�"���(�� y�K�~�{�{%�)�c'�#C�VP]�Z�@m�4?����M�H����Q�]e�b�]��u�NO��'as\�]��G ���0C��*'s��"PO�W;�B�B�W^�o�(�G����!����߂��z���pf�Y����	i��=O��+��*o�5I��(�?�'���z����i��@��|W��&b�� ���CH^s��Z�ծ�O?�o[������U��%��ۯ�W�	�2�%�)�'ol,�H��&��{&|I0��'z��
�{A/(�Ua7:�	��K����d�졬E`l?���M��օ��GH���)�G�� ���Dj��[.�]o�m��Կh�.�ϻ��UM��/�Rf�S������%k�w��V"�^q+XJ�yk�l�>��_�z�=���-\O�. ��r�#Kg������^\��'��IQ8ŭ�J��6���N`��{z���0����)�D�E�.�{�ʳH;Bé�K�xe��)v;*�c�;G2�{����B`P�\R%��)� l9
��5�@�bh���s!�ҶR�+���(?��D^�9���� �*�J�B6���hw�A�M:�:�B���5{���&֪�Cc�@��bՃ�i��V���w����)�W�9�*���<4ŝ��-8	�Y!���"�����֜�YI�) O��¿l�+bM�#���6k�����uHɁ���ľ�2��	0�(� �� S�W���{cz�R��X�:���h$�#�2�^��g���b�h�o�s���z��,��w�����z�W�wd��p60/���_J�V���� 0�=~I��h�
�x+��q;.�>C���m�uW�]]���h�2���jW�U�Z��1<�C�艩�;�HII�`����0�I��)Y�7�����|Z�]S��uuӵ �z���;�2���J�F���:����7(�"x�$�`��.���+O~qI�weY��rF�l�P�S�������LZ��6�1��Ngx�.� ��~��j?L�BK��O����Xx+8�`�n��8� ��NX��2�]}c��Ѩ�^c�7%��8�`�����r0g\���I���|�ݳ4-ν����z����k���Y�m*{z�e�x ?<��W�,qE�I?�Ǭ�XT�Z�)�RϏ�i�a�Sr���Z�_ke����lb������ ��5�l�:�K�.C�*!�j8Q���5W��}���3lK�X����E�J��g^��z�]�LW+���Zۓ���Q@���^Sz�9����B����<B_�Gq��$༮��`f6�k1qb�F�̍y�!1˿�ӵ�\T��)���s3�L�2�ڢ�6'�5ﱓ���>$;oz`jYg Zm#���@E%���.+��Mg�
���\q�6�1�Xl�KW��݌�R�gd]>�s����H�TP���S!-5�0q��Z����VxojnJӞ�Щu5��4�����7�A�|��=�:������f��Z��?�y����vE -��-�C����~�f��ɫQ�t�f2��%���̀O��ڸ;h�8��	~0iЦ5�A���/�q�>�f27�������R�'�9����꓄p�g}�.�>+���~8^AJvU<#���b6o�3�][{��qcF�3 3�?v%A%h<c�v0n����D�CYcI��� ���%�"do;��f�\�V&��`y5�Yi���������z�#��������m�D;xV�6b:`��R�jl�ß!8�,%s��4V+%�#j`bq�W��a�7��!6�+ZvH}�8Ɏ=�ʯH$��m�tLz]rTԒٜ�&�?,�%�Y"��f5\D-��q7Q��H�*�+&�^+`Q��0c��g���dh��8�V�� }u�M4�i��C�XE�b�:��'��ʅ��(��ׇΆ��~��%�f\�����*=�>�O�p5�^��*��6�)p�xV f��~y��H��d��F��0,m+ϴ^������g9qu6�=ƺ���kر_�v��u�kQ����q��D��.`Ɍ"i�YwJ������u�sy�}���%���3Ԛ������e���3�o��#yȖ����!�4��َl�G��@� ��hW�ʿ��t���	(%{��$�ܫ�����+��u�4qF{� Ub�N��O$��vN��ɠ�� va���d�t|��}(�Y"�5�$'Ձ�f��QF�E�V�↷�W����F~�t?�-9?�vե�t���(�-:��K5��)�>�E���U���WgFh�h�s�3R��l�W�t�C�,�.��Z�G���w�n�j}DK���<�BR�m�|�����҈^�h��I	���*rJj�i��k62���%�K�5�X��ߵ�l��	M�җW��LH
��@+G���Cߪ�y�^�����f�+,�ԱNP'��
�/*V�"���Y�1HB�HLvC��<(�BT�R�;�b����3lٟ�D�,o(+�٠3��1V|U�B��9	VW�m_��ݹ�t�P_�y�x�9�BQT��۶M���Puc�1�J��n	�\r`��>	�ֽR�Zu�(v�PW��;�47!�9�>�zq(��X�@�5�w�[�	�F���'t��_f���1� ��K��D�����څʆf��r�|��O���*IT)�ł{D��qv���c��C���<7���D��s	䍐1%�Bv�x��E2#�Oj*" q׽Dc�\����Ih�H�^X� �Ԛ�}�
y�L���Ҕ��l��@zݙ?�|�o-=6���o�A�(-�
3oPM�9��ϑ�3
�b��ҽ��a�u�˜gR���=�'�
|��j::� �$���}��`t�]�'��dwӲ> �R�k��֢��7���3,��
X=�H=�(^:�IQ�U�~G�w�g�yگ��MI����l9��E����Ew���5d��5�t̕s;S�L����)d+P�̇�	��_J�ߩ�����X��uV��A��dS~K'�І�7oi�v�x����2l~L�X�ŵ�ڿ���ئ���F��䞔�:�N�ǧX�L]��kǔ
�N�"�g��F-htlct�=J�L6��jh��	��e-ť��z�a���AH��S��lVuw��SԲ��b�·�S}�#�2�E�_�_���|��o�D�f��%�w^��}*�
wc����sW��:�F���|�F�".�y1�B$4&5�g��b����NԄ�� 8��QQ�o�/����lY�O-�p�yXoP�ഽ����}GO���*�-��e���CO�S�B�u�Ɋ���r0�Ҩ��8�����P$����܎ok�
+
t���!�+7K�{�i>ѫ��m��f����/�{QiD����[�/�Se7�`\��Yd&B�
֭k�0j
Ra윔���z ��� *].��u��MIh�;TBzg�=߀�پ~u*����P���ۅ���h�U�<���`Ya����{G���a�zfPp�9%	�]#�8f�8�Q�//���Gk���b�ڤS��@�r�������TTa��S�%�RT�rx�6'��|��>��8�
�	Vɓ���Wa��*9����"0X#:ɧ����EL�.81r�}�~������`���^�+W�����6c��r��DH~������L��}��UR���S6n��M�fu[���'	զ��&PQLI�5T��T
�U��S{���yh�Y���g�8�i�_ǦH�=pX�� z��#6��.S�]�1�`�x'����,���@ֹ�NL��C�n$���ҷ��8o?xx���*9�}�ܐ�'�k{�m����}[��	p�U^�[O��MY��4��*ႈ#��o�0-����#�OJM
�MEU]�ө�Hi�5���Y~�&eQGR�����{�W{�H�E]��XT��r>�iy���v��/zhqGNW�Ŝgn����dΫC�7�I�\A� ׈����7��e{����O/����o2��	�y����9��Iu��~)D�nԁ�� �I�!�3ŝ�l�!�t�V��k���`˂_��V��zj�R����9嗼i_P��D5A3��T�ggE\0tg�&�ġ½_���ͧ6g�ʶ��1�5���z���9!qW"�ƗV��y��M��H"����kE�#8H��������M�*o��kEwIE�d�����G��d��x�� �y��U? F�Z��lj���S+���i��Hf	�h�-�+������V��=Wz��D�v��a͗�j-�۝2e1?�e���G	��58a��A��Jr��&7�?�[�\5`w%�ke�KF�7	٫ЃI���4�������C>�
}�K�C��j2y]3I��m!�����]NE�ժ�%-S��	�7��
�}u�ЎĬ5����y3��K�>�\�|���2��H�ZE�ƽ����Ї�1�*�Eȝ�?�c�@����h��8oC X��R�}@�n��r%�]�?d��&駩���7(���A{����㒔l:��!8f�N >��t����o��T�1��7�A&�G�m�o�ǭ��ߡ�r�~% E����˽��@�H@�������bP_PX��_5_X�x���`�L$_����+(��~$�m�K���X��{KØ����*���s����&�
H*ߺ�'ϩ��AC$�ڌ�t�2�H���FM�,�$��\X,�?�JW�$떨�
�C�w�fe�����+�ϸ�x�X3L�EH� �F=�S6�حkC~�OJ���3.������W���.��}_�w�]�<�ޒ��n��e�����w�2�QB�m�^BO�Ngm����Xs��T�����B��ӳt����l�j��jq{�c��`�w���-�9�t�@a�c��Z<|��G���iY]�����7sR�-����E;����&�l�s/U�=�0�u��Q0V鯑� ��1~B��{����c��xt��2�5��:�/�ݚ(�δG���aML��,��\+e&����ȡ�� ���`h0�2�:�_n>Yyu�a�/�s��=�+�ש���k���h����a�M�~&O-�͈����X�T2�3v^����
�.;�s��N��H�����٭pr�p7Q��m�
u�r��&-���h<۟ё"���]�í ��V�D����z�&�B�)��k��1��G���A�0�.�yq/SS��|~���i���a��n���|�����"��h�~JzIAW����ب�#�Q�5��1d�7�%4����_���:���L�kO�Vޠ�?Q�������2Or�2g�x���ټ�92w�[
����A�&�$�-�U��~�'bF�꬐� �K���G�F�K�3�~O���pv���d�,���	[���e/��9�6��H�E�Yְ]o�\���'�:U3~`�J�{yj��+(�!����X��E�5�+�=d��ke�V^жu,ҕ��fS�>#���+�ۇb��ٌ�4�Z��G���ʞ~���6���V;�u�z���	5����;Qks$�ǀR�Z[����s���7�\�ֻv�WK{��J2����R.��L����!�Pr���Pk��t3�x8k�/#�\ߜش�o-�'+s^Ty�����L��\��-3��x�\}�������v��g����v+J�b�!���<DC�6�P��c��X�N�)���F��"Q"N���?�*��[j��v��ڢT(⚰&���I��"��%�a�C��_P�W����$ShA]�.n�=_�z�J�ﺏma�7��>���P
���-|m��V��ǑUu�j����^ꑀ�\�|m�wq�]��=r�����bV�M�1r��VY�6:B���^G��
�sW�:��3�GO�����f;�J=�Py��c�ˬi���/zv�w�{|BG)��~�h]�u�?o�N/�ߪ��k����j}�<s�۵=�DB�~aI�ē(��4�T��U2�!�8o�]�C��N�E���S�lю��Y!WL�
��"��=Hk�݇��E�gx����0��
�kg�+P�J��~�@���,Au�HX��U;�g$}C�T��q�9���w���d��担�fDblf���^�|[꾋��� ���j4�H1�hk��`�:B^q���<���u��I#ޔ�(7����=��w�쬐��3���+�z��w��Lj��I
�`��aS�ut�7��;��_B&��w �C�q(M����fu7` р]����[`�;(lk�b��`��vc����T� �yƪ����_�}lj\}���k�RY.Jf�d���	��̀���#�6�d�QH!��Z١1�t��)��vb�Srn:� �;m�'Rb��§�#�j��Zd���U�ؕ�K@'��8�_�;|���]�h�]n�P�2�a�-(���9��Lv���|�R6UW��$�3K��Q�໮��b��6�����a�{WPzY�\��Wt��;E�D:��A0R��nu3.��f���;}'���D���2iN.s��*$���t����l�p�� ?�5=:=������5J|�:	�}jk?I�KH�d�T=2���	�+PKb7[�x�ur1��y�C3�o�L?r<�T��r�J�r:����ฉ���l�΀y��k4"�W�f�]YS�Y�F���!������Ǯ 5� �)�0#�FS,�}=�o���o������:#{��l�E\Y���[ǷӦ������y�߯[hE<n��ǠD ���X�M����5e��N?�ó����:�¥(�W�S���Y�Q�tAO(&}���|��������,lò����C�˚،x�x�11!OoOh3ߠ�M��څj[զ�|u���9����b�2#Q�flrK�ϽK���h{l���t�� ����V�	�`��m�>3�-5N ��JH8c���G�ȗ9��������Nv����� c~l��� ㅙ*��u)E�ڢ�tr}m���V��a�n�/��O�_Ї�������,/U���^�������i�����vSL���۩�z���Z��������C��x��a:n�xt��$<1ܞ�@{�`�0"K�ߎ�Ә~~��PЦ3]�_�7z%E�U;o9�����'���J����H��ZG�Y`.?'�?%�._�VZ�7�����P�l*w�m���8bq�QY�RV�z_�'M�Ñt��z�������XͰۖ���]�Y}i�6�TSw�w�-�"���G�S�՚������N��Mq�u�#��f\���}�;G�i��m�RH�}����Ie��Z��Xlz@��pB	�&��a�q�%V+�诶"k��8+�����7!�������(7�O�<n���!%����-���6���_|ܲ���:����-��IW72�I�.cX�6�Rai7���4�4��Z�}&�LvVRA�A�h��V�	�<NO4��_XA$���m��W�@^Y�W�9�4�+��TM`�����&�z?�Y����R\��N*���uZN-	]9��NXV_�w]�vﶯ�G��Z�ʚ��_�a�a��9�~�������@B({��MWp�]?�W�î�?�Y*$=�gk��'d
�*�'�ؒ�q��q=��%=J������Cz�Q��P��1PG:����h�fV]�i��T&T�G��}Ti�8����/��|
ᦚS"O%����h:c��
��!��t��%���7�����]�"�Wk�(���:���0�I���uڪm��mʅ�@5�q�"]P���~�.H!�nqkΑW\R����-Y³�w��6_c���b*�=�8q �	�{���QH�:ㇼ�$� }N��f�} �$�Ѡ�W���9�qXG@rt�D���k��9B�G4o<:כ-ן�T����+�0��w�	SQZ����}�{�`f��M*!��i\��\���R|s�#�ʆ5a'�,��4�޵�Ef����M�Aaü7(����ltL�3�X���(<����)����l���"0_bL.��B��
}*����O�E�)|?{�Kĩ�dϷ��XI���Dtb'�*��+���(�\^n�kN�֢��X�d?�4�еpI������YKD5�~E��$xF���Z/�7��/B���O&	 ��J��!����.�\���%芑񜠸�-�8%$޴[�!�֡l���2�7���s\h��ִ�>���<�0@��$�V8��d],�!���k�l�'��h?W8b&�Df�[��%;������R��!X��z��Ӿ��-(�������mnW��|���׺QJQp Z��
���)��y�M�eE��z�S#>w)���6%ʯ�9Y�I�
ZLj��Z�ƪ�����rot���HJ��e/j�>�RHA�ht�{�����f��x����j2����0XI(��T��������6�.|S�Q�|��^�8�%�өf��b(�c��=wAv�����:�f��)���Z��=��Ĭ���dH��EP�Ŕ���W��8N`F�!��`E������}W7�ج��E�U��-|-�H���?�0t��+������6�`�UJ[�c�ЉrK����1��Ot�W���tB���	�-��g�=nP�`»M�����*���A��V���{:4pJ31f���o����O�s��z�nR=D���3�<<a��苐t.&#�`���u?5d]��2�C�L��׷	'�������*w�f�A�7�Le�)9�0��aFו]@�R
@x��H�vZ�o[yH��3H묘m3ߠ��5.�
�	A5����8R� y��o3f�z���&�ލ��
��+�����]	
S����F٩���%���Ѷ�G���Ñxw��s��D��!� bxXj ��e�h̤U�����6(2�[�9?c�۪_&Ү�� �;��S���D�~�<v7�ͧ.�He֤(R�=����A���T�E,�8�#��zp�m����T�u�h�E$�wUz؈�d?�AV�����L�]�2F���s�����a���G��b�[����)GC(�פ�RF�a%j�K%H�^ݲo�V�<"99��S�?��#�מ�!a�׭1B�q�Bv��RI�?����)�0"�ě��C���Kj�&V�H�i�L �)|�W���/��SJ���lw2Mi�ߡ��v�d�w�WP8R�k���Wh"V��&��oP�`Tz����������xx� 'ʻ����auz�����xW��<q�ߠ���3����N������haֺ �)���,�6�-UU�P�����]{��`p��j��C%�w����	�Ѽ����H�z]�u��X��.��!p;��̄�aگ��q�!cP+C��i���#���K[�S]�UQ.��M݈��G�)��ͶrxRܚ�x��:��L]���9b)U��V�"����:�LS�UCZ�/��]1��6��&b����h� hI�sn�a�)��|�	ET�b��
�OW'ѩ��Z�9�p�]��#mǯ58B�k�*�yj�Ϋ-<�z�,�psU���M�Ġ�X�7i"ňWh��W�:�@�èu=�rv�5�\~�o_��B�Ҍ��ͬb���,z ���	j0Ƞ��
�B^Q+���	��HZ�%ޠ�� Z<;(�x85��;p~+6¿�\Aê{��z��"S	���w�X����1���@Wku�?��2�>p�
&�8�w:���A	oK�������~�����ugF<]!�̅T0�B(����w]�Z�=Ks�_b�YXd|4�~bȆ�Ҥ�}�֚�_,6�5�M���gk�5L���2PsxRk_�<ЯQ��Q+7k��4�E�O�s�{Ϧ�;�P~��V2j|�WVi5��4@��¿�ӘK2Ȯ�r�zU��j��~د������4,����Z$���v�L�?�E�XD�v��`|Xh�������{���Nj�Z"��Ԋdm��6�N�,A�_����16r��ӿ]G�^̏��]Y�a\�R��WX1�����ShHU.E��d�O�vi���E�@�U+1�K��i�yX���R��AR��ɔi���V�ѯ��#K���'�z���G�wa�K)W{�i6�9��,����+h`���M���A�et�S�<���l&��ʞ܊'�ө:_]�v9��*���!+��@m����R���H��O���I��+�>��/>v�Mϓ��x�|]���>��+�".T8&���V4���[sܣ�z�7&Q���p)�=C?/Fr�=��g櫺2��a�i�*I�:��Tmt� ]d�5��֌��{���($���/x�朤[M�gHb�=�)���uu��'X����1��Lr�/���&�i{k��VӤ�#u�!�'c�2�w�r�f<��#XX�+�q��®�v�q�`��jD,�@.{9��ͺ�zI�
D�-g.1�D��|�Psh����\|� z���0*�cF �0�-�}CtO�" ��sZZ�Zc�>� j�a"e7���M
��v5�_=R���3S8��A��4�{K��'\�V-F��!��6�+3����^Fy_���/�#���AA�$�)X�n�������g�I����,`U�!�*#�n_��B�H��~V�ᇛ�~�0�9�]�&TW����ّ�����P�.Hj;�)ʢ~��Q)��^�i�]Z���]U\�X��G��Mm�X�1����0}�{��UuW��td���(;5e\W�0+j�p}���M�/��s����ݡK�K6	�{������Ϙgh�=z�'��A�T%�'�&K#o�mGxs� ��ف"�1ĉ��ay�z�m�3)�we�L���$g$�JW��bZf!m��,��=p���n�� pw�)�K��>����w�#�ͮ�O�=�15��[i�B��t?�~I�h(}þa�`_�is�R��I�HQ�J����C��;��/.l�?����M��1�k ?��}�x��U�(��(k�־�� �5��}�/�"ĻK ~�C0�R�?@��o����C®�n�]9�s�+x1�U�[���m�$��F�~�О~�&�ГyK�h�pz����*�V>+����u �88[_�s�����g3c��S� #�(�<З��m�g�㒌gM�O�m*V�9kt�{+,cqJ��roc]�] �0PMڴ�y��I�����E��˒��ڀf~��y-�[e��O�Y���9$��70i��*�B9�X�s,���D�V�����s�x��������A�Φ��V&���GV�ŌO�Yf��Ԟj��N�ݞ�a���L�ת�����)�X�N X��z�]�Ԓ���@ܷ�<m��`�ʀ�C�֍�����3(�uCU"��@1"juh��*9�i��"��=)=�Ì� Z��A��wN�$����R���#��4����;8+N5�T���F@�WЌ������fE[���]'[�U;�	y]$n^���;���XLR_�kUxA ��/\(���p?CiԚ�1���d >�z{�a�&B�P�/����f�A!�Z�>@&{|����_���7=�K�m4���si�k���s�$��]W���	|E����8hs���0D\�b�4=Q��m�bx�3�W�{��M�,�ƞ�'b��Nܦ�&����U�� �k��j�d\;3� nB���0"��d���v��~5�=mQkmf���)?�6k��@9h�X�t�^i��a!�qq`Q@�h#�4Au�#��8$���[s첟B�ˠV�R�GSM��2�I��Щt��D�Z��]�&�Z�K���r(4K2�P�	��Jv+B`Q���Q�yk2��N�����-:�J��L��gж��N��瘊���cf�X�o�pleS;.�>�e g����w-��]Q;�44/�BB��Y�Eg��
��(N��/���}1�u�֚�ݴ���Q���}�a�U�u��b�_����Tܼ=*PXswE�e�(���&��i'��9������>w��#�%���"S��>�Z�$^��P�3�����A7Ԗ?yl�g6]�3
͎Va���_�ZjU+�Z�͋s��qDK��Lh�^[��@�@�^�����o��R+$Ikn���=}]gc.�Z����A�Q7t\$��*=EY����&L�eY3rQ/�a�˽@��
�AǍ�ǗZw
$v�ƞ�Z�DU�N�����Q���>�m`}f�5�(j�V�=>������K�o8�����i;6Mf�$+ĵV�î�6'Pk��bt�,��p����L+I����6Q��Yp~��W�II2P������a���,�!���4ŒZ?�ע����*j��Ф��yq<�u$��k�Pk/�0ڴ4Qw��������1��t�\ʬ;�o-�����g�A(C�u��s�������):���k�A--���&�������.�]G���nw
�}����d]��:G�q-�PS���WN��J/x����o�"w��ծ�3udE ~��4�-����f\�A��.��o���(~�N[���ծT�7jJi�YS�Z@2C{�I��� ��%��܇oɬs?������I����ߣ�S�����?`����kh�}ݗM޼�-�C�g̋��Wa�(57�׌��_P�.Hs�S�==����i4���޺�0ۛ;����}b�x�H?�$���b�i��-!X���~;˥�Li ]��S:�dy{~Mb�R�0|��*��Y�k��a��:NW?ܺ�ޣ�\��J��>4cjY��5�uA���1��<�|{~���Ӡ*K'$��,��`��DB���m�]h3f�x�/,�7�������6-ɝS��>r������j����#�v�A�K.i����'�>���φO*��B&-��+hLH�������ѭ S��9i,���z[�W�^��
Εx��H�|va�Y�B�A ���!C�/b�c�q���ڟq���I�5�,��¹�6l��k�	YX��_��+��!I=�9���,�[�]&ះ�����3$Q=2,h�oߕ���jC	������}.vI�O�Mf�0�.{�f8c�����ɿ�Hc𭁤��ȿR��kV�Vk,q���Y`��N����|Xy�0y�е	��n��ò��[�@r�9ٍ���5��JT#ʊ=R�/��8rCr�-#Z���9��Rr�S32(�a��'œ`t�gl��`�Ty�s�fH��1Y}&�icckZ�;G�4:�QK(�r0h>�J�2��3D�Ϯˌ��n�g�.X�,4T����J㞬��Ξ��E���c����ֺ�5B0�⟦�����JHq����v�P�b����]_Qt�OvfA�#�uZf.�+����t/���" U'�lC;�]��[�����`��d�������vq}VUI%ҶW4Ia��K��+^����Jm�U�����Y�����Ssk���"@�Sc�����7�(�i�6�*�������8;�{��^.Ի|���+<]��4�4"z�e6� A����Z��9��ª��xi��s�����Ӓ��[���8�B/�e+�^���w[rX�}�8ї���36��О��5KRz�V����.Z!��؞_Ce��/�̖�ˬjʷj�F��sd��@�rhr���,;+27�6s��)�W]��������@瘿�����=fT���j����Hq[���l��Ks�gk��r{2�_���Ԙ�6�\��_��c.�V������ct�icY��9�-)4�����NVY���'�J�
_|���s�j~���������Kl[l3Yns�\��lDf�xm�uԆ���U���4.�/��	��f^�9%��'a7��`P�8�qb�#s��!n`�R�m�TS/��s�:��Z�I�}��Lf��m^B�a���]�w�]�p��p{03�^�Պ���k�b�<=�'g�+(���2�mz�$��&�X�de
�UlS��N�\: +R���7��������v,l�����^li5rs��f��I��)5���Fa+Qi���H��xR�#��[����=�f�����M�֊z�����M�~.(T&Ʈ����ruAi3�\SC�)�}��E/v�j����k+j pI�8�h��N����FZL�q���P�0�5�jN̾�3Y�����)����%��]�6�� ~��]5��4�ն0k䍭���p8����j������(���f�A�֮f�s�8���|H2���j�*��߁�ud��"�)`�QTЇ�:�z(���ځ��.��w������/[�.}!�M�p�p�n��j��M�C��!e(�#Y�~����17�m�~�ך��4H3p(�cjhҡR-��,]JI0.e�����MG� ��ִ���F�����&_c�ǊҮ0��s����dSP��y��ɬ;���>zAUS�����o<C�
�&3�U�S6�|3#�\���Z-7�O�/锡)z��1�I����e�>3Z�5��� ��E��?�w���<~VH�w�s�ў7�^R">��v�Q,I�٧�&6#Պq�'Os����'l����B�&H�)z��s1.$�|;�*?�=8�P= 
���\I�4�=s�׆���P	��������F���]�P���܂���*�œ�T�&t3��s��#�L�2&ϸi��y�G��=���̨���v�6���T\2I-�YY�5�3�ޕ}�}�{��`�z�����L��M��*n�Z�χ�ݎY{��e�*�u�œB�<���h-H�ik��A�l͊g��x�W���Y�?X�J���~�ÁX�M$$:�ԯů	=���l��k����] 
�������O���W�^>w���:���@	�Ήo��]�R�{/���e�O��f�l��Z%��;g����"t˩?ԡJR/i7˰�Z�����Id�X��I�M޻0bЦ�uf`/c�fq3���
e�Idv��R�u���j���A됬�a�9x����v�`��d�s�Tu�^�2���$#��Z%%���Ȯe=?|��MW뿔��꽍x��Ve��X��[˻k֠�Q��N����ޟГ�&�`�5`�P�[7Y6g�!������C嶈z͸$x�A$��;�3�e����wf��B�
�M����bMq��6
)���t�g��/��ZB��_�M��!�
�#l�W��k�a�� �Y7�wU9E]z�@]|Xk����R�c���f�����M��36?�NV@Ӟ��)W&�Y~���1�Mf�5w�g��}.Rat�]V�˨����?�4o��~a�:>���
����	aಷ�H]X	F̓�T�R����VݶHv��%r��H�)P�1�U&zM�&��Pkm`�+�ҕݣ�~z�*@�f!����P˻k��{`y���`���z��%��d�?��J�����X�$@���	�s�` 0ȵ��o�" �ک{Vi�T�ȟ����gE��ꤕ�]�x�
��=���8�a�6`{V�D  �s-���
ĥa�:3���S0~�8tB�![����Y�pC�����%V�i6B<%���_���l�ːJl7��kO2�#�n���_��.��2��8Ё��'u���MÆ���? �b0m�_P��q*Z�+cT< @q�D�ﳞ]���o
G��r�����~�%ɝ{$;盵�&�x3����etX�;�I<rr�-,I�}�Η��	����ꧠ���/��x�v`�Ս�����x�8�6*���A�$��a�D�z��@�#'W��f������Q�u
p��(N�lmȻ�|p�Y(�׹��r����r㾻
|��Ya�@���W@�*�ܵ�(z�Y񧉞��;���M��0jZwc�9��]V%�C7$�T6�1� z�Fy�n�|Rg�ҲdĴ; u+�ؤ��b \O<ܧ��/Jn�$iZ� ;o{֡�O��@����������
`���N�4�+��tLz]r�V�]y�&��(r��(K��Y ���R�	�nrA~��q� =���5z�VU`:H�J&�<<|C�!YN�֖d��`��H{��d��[hl�֩�����	�a�nd2�/�Ư�_���a�PE����ɦ#��Zmd��+P���^06��i��-��5p�INE؄�eO�b���oZJg���ߡ�1/d���`���{�5����t�m�`�e�.�֓�U�	��M���N�j��H�ّ'X��Q%e���3Zz�.S���Y�ة�}~��}��Y�rSל�ú�4�!���F��Vg���E�uZ��}�v��	�)(%�j�>����;7�#�Q��gG��nʴPy�t�Udp�-��U]*	9U�����oik�x;%�s��߷��R��:_O��7�N|�F4����N�H<�=�<c�UT� ����f��ty�X;v�w���TƟ#ĸY����j�j�����P۬���sK��M�������I�=}l���E��6/0RR.8Q6�1��S_�Wvp�l�$�Y��*��4]��O{��C������g��9���3FL��d�C�־��*��T���!P}t��iB���z��%���@Y��|��$����˻Z%��C�GzEh溂w�~��K�D����۬P�(�T$�FĩK��C|��d��3P `���)��u��܃9N.��ݾ�y�_7R?�I��eu7��(D%�Ui�֞K-�9�����E����A@`����!�ƒ_�H���z���|$õ8۞f,�W�$X�_�� ���-ߒ޳��ƃԑ�-b���n��4��D)PlUh� �֮B�a��WsodĀ&;��š�Q�`#6�"�պc�����q�=�d[jl���-���%i[��W0�(���L^_��˚%Sc@�|��;С{��L��Z��J�T��gA��"+����Y_}a��r��f��=�F���e���<6�*����wK`��Q��wc�����*��m��Sc�h�]I�D&G,��۝$��4��J��,�cыX;zi8��/�����#q�f�g}��ǔk�4�9$^��:kD�L�_��\M�����d(g�vVm�L?}ƂW�{HvX��߃&������q\p�h�_s`��;��p��AKe��NA}@/ߢѢW���O�/��73�NTU��4�"j�q�Cm��0���G��k��<͞h���dqo��}9HGi7RGI��"�Q����7s3��R��O]�)`t�-ZUw�Z���ߛ��s��>L�������
�!�s99OS�R��ϭ��J�w����b���N�*v/ 𰔍�����<����|�~�(�B�5R�`}�����l�0{�}¯W�������_w۹jG��� n���_�W�F�NB��*$g�cS�О�zl�
�t��.Z��[6�%�w%�U�w����v��y{\�v�J�T��:�r\1W��/�o�@��g*�:i��Q�r�����k�;xW����\AA�jN����c�*e��?�C�~,C��C^��ç�r1����p�2a�~��[�_uMVQ�� )l�M$QX�Nu�D'��~�z=�)PX�����J�i�K�Nl��=A�wc���(F��j���[y�Ӷ�cEP���Ǧn�Č���2��ô�X���A�[�b}�$��
�b�=��`�0�'�Ǖ�Ĵ�Fo�Z�=��&5�Fپ��t�I���a�I�3,�H����ae���:������g2�D�:��������_Ur T���
`�Ǵ��WB���O�-BiAp���v��s�^5�I7�`nL$�b,G
���h���,"��UB���}
���?�<�����e!*Vc�3�&�| ͂�@�����u�"�}�~�m3�Bju
Z����'6�r�>;�s�ՙ��l�E��dP����E�ohj��]�D��},)��[�D�ǆ�b�o?�L:��?��4������p'^�1@&���Jz�¡�}��7��(�Hh��Nr�d��u�����WY� )߮���i(�8pG���%������a�`)�����fsq���_��`ѩqFZY�[�	A]�TE`��yjm=���an�p���f��>�5�z��TlDW�y��yI(��!+�@"��E˻k�"1 <�!��_+��s���ަ�#�=SXVǋ�Y*��e�7������DЖ�Ċ]Q4�������d�a@��p�\�8HӬO(;N���a�,M�%��v��N�8�H�h�U���0QLK���&��/��xͧ�=���Z����w���f�ken�0xqi���T��U�,9��q��?���kU]�lN��Jv�RLF���k�dQJ�[ ƌ�p��6@q�d����u	n])���j�Hx?��V<���/D����P�i������b=��E�$����J(o?��P>��em1���3��?�3La>:Yl �Rn"PQz_�CvP�!�'	4� �gb���9��Þ<x�r�,��C��!'��4c�/ao?�Ry) ��B����b6�@��I
p���q�����-��u60N�)ζ�+	�M����hA��h^  �J�(���u�����7��s)q8�[�bLm[���u���_�ZA5�fϟ�o��@b�3�Wg|�zV�u��7FBŵ��������v����l��~M����Q� �ǣ!�#Ҍ����*+���oн`Ԧ���'oA����𻦅d2�>%��4���*t����"x�9#���7�up.�3��WR��󥋟�͘#+K�M�"پw�i�����"x�dr��6�Z�o�e���i�{�>F��fL!	9��R��4FB�:���H�/N��0�C����)(�ow�,�ވ_O�.V5�l�����t�
�?��z��4R�ˍ��ɯ+���֧,��!R|OVt@4�
���F��_��S�GJ;�n�@�1�h�7�@^Y?]I�
���ᐢ���<>�;[��StsVr.��;+�fgO���B���r����h93ў.ha�"yt���6����`RUz��L����c�6s|��V]�*ݢc=�-~i�LKQ�f��1����g��P������� ��H�{׶�?��Q��R�P�]�}��!�.�*��������m�](d}�\j�J���*+v�$�S�o�{l3���,%
�R�W�%�����2��$��A	\&�ՙ�L![��)�@���`����{�s��n�D����=�<�V��i@K ����עE,U����:R�f�Aكvc��p����YX�']��i���L3�l3�k �9��m�I�򨼊B�'�e�&:'�8�@��U^^�"�'�M�$k!E����R��Ņp
�7���aj7�$�"?c$��)�<�aq��;J�틭"�_Ӽf��8������y�jKh�/(p���p��X ��V-�
�	)�B�����tNhAz�h%s{�~GȫKI�q3��iŧ{����(�����J�N&�F�W���������P.z[�&>ƾz����:7�Z�JzN#֠,��"Ƒ����u]$�vT&-�����׉�c*��&�yh�x���$v"�`92��eه�H��
��?Y�̇��~��

����zqD�>m���?�?8g��]EY�#;�՝ȼ,q��+(���"��f����{,q����Q��Gؗ �T}�LLcIBȞ]���7d��d�e,��YC��[��-[C�!ٲ�}��2��,�lI���|ι�}�����w޻�w߽�,�s��������@��A/�tN&[7���@� �����A
��������$ǌ���M|�z��*j��� M:j��q�LEf�>_9��V��1�Mɢ����H�_Bڭ�v�j��R�G�ms�Ъگ%a+��g>m>_�AI�I�n�Q�U*���#�~5��_������X��&��-n�KY<,T�/V�]~T�*N�{�I1�h"�ϔ������v�T��i/��۬���|�6̼1�hk�k�e`[G]��V�QeY�j��4"�.oj��}W.���q��:��v!4�UK�@��M�C�NbÑ,4A竟�<s��t�B/i��;��s��7$a0]���.i 9�~�_�M�Zb2Ͷ�iH·����lpB*a:U�k�<z68!/�D^��Y�������wCn��*����~-g�J}U�d��vγ���ZĿ�)
��m��<M��oi����!4����&�����!�h<���s�ph�Z�O`mYW�:����e�W�Mt67=сB =R��vB��� a1@���i�h����k`��I	`��T��5rޅ�y��:WBj��V]s�����4�5lݖK ��*�mF��������n��|�z5���$D�mVɢ��w�Hq1�٬#���Kկy�YR�*4�-='�6����9�C,]Q*Q��h�FSjˀq?g��RCqł3������x�S���5 � �_��Oؿ�{� ��<�m2U(7 �O+�1s{����.�u��R�k�T�����N�` iU$U���v8�^v���*�]��+�G��J���HBI6$ٞf�����k����R5",�?|�ҟP�(��"��#�x0��v)�x8^y
�-�8��"`	����Q`�X6G���JB"�����&>Cg��v�:���Y�bY�<�G������(�\���	����(�DиY:�0�`�|��@5�.�fO�%X���e��ץc�}=����ψں��&&!���~�nZA�c���{�/wG��!��]FQ��p������vO{ަ(~��! �s#vCb)��e> ')(��&�����%T��E�.�5�3o���~���R���ۖ^�Xb:��%�0$_1�Q0 �x�bMy��oI9NSP��KG��vMC��\"���j�	9O��Gx:�V�1tT(ufRt���"����`^�R#�sV�ҡ/����E�0���|�g�	{bK��:��/BRR�@SQ#fĝ�l�]p٘����^����I1��*����R�ߗ�'q��˛AAA��z�Zo1��eT��27��i�20��C��I~�V��:���-b��#�K	�e���es�b�L��V��<_<M���c�l|`���ζ7�nb����d���l�HN�@��M	��v4�)�����w����ehi%V�u:��G$�$�!k�Bs>�~�ǋ߫��ƞף�v��Tf�y��K=|�g�&( ˋWgs�}S�ESQ}��-�%��^[�$��Fg���5�{t�9[���&�*uj�,�����gt�K^�� G2:��{�)�`<��'V~���9���Jm�!�.�4�e�l�
�������zÂ$Oڬ����Ep57��(3W`�sf�_�����J/'�ͼ��v��A/Qn��`kؓn��~d�:�0z�FuW�m@l��̢��d��-�J�1�]�B�l�M��|<��1���[nf�x�4W�Lwܹ�,�Ǡy��tL0b%���v�#�T�h�9�4eW��4�5B����Y�������D?��/��gT��W��MT
*��C�����,:D�XM�
nb ��m��>�t���)3�NK]cſ�����Tjq��6mi��K-۰�6�֤Q�QH#�"e��쳋Я��T^�J���G����=C�a�� ���w�J�r���ˤ�5Cnܧ�+�l����+��Roed��x^99�r5"��	"|��1�!����
�I���_X]��-��l��M?�y,{5`g>IYjʴ�U9��st(�7���M�]K��7f��P���#0	��R㲭U����z�
�/�{�N^y�������R��}��gs<n����#�(����/�(:b��;m�-]^O��1��j�rIj�^����U�*�gk�}�
����ͬ��NY�ѪJ�������ºP��A?�=� ��6�1��bs�������i��!��#���\�}F���,]O��}�l�-�y��(N�n�_���E(�ԯݶ�HS$�t�ot����Ц,B��tF���%���8�}�Q7F@k�1��RP�wu�M�僋T��5�;�aƘ��*(=Y�LI�O��n��1Y@���l�RP�]ijYaDA_�.V����22�g��ZO�Kg@{h0��p�Ҕ��[�h|XHJ�1�~�ǚda���hZR��#�,y��\��h_��2�O�;#��
��qYx�T�n��^�7P*+�w���� mi�k�i܅�7�dQO���?Q&'��+��������,�[��GU'��
��Q*�o��Ԍ=�Ψ+�NЎ}jğ���GUX�=֌?��aN{�[ʾ�qS�?I�p���Y��0+B�v����P����̮ܯztյ�0�4N[���D�bm��4a+�HD�5���/qw�^�6�<��|��E2�~����2��\�if��ؑ���lP{�t��x�Du*kk�at�V���z��0ʬu)��}�CA��s�����Qe���pUG�`��RC�� �O�F	����qW������dg���~Dj=X�"	�^�ST<px�>��Ogo�;��/I2r|��_*k;��e�Je^ p[��T#�lJx����|w�:Φ�KG(V6y�C�R��#	�UJM@�l��B>�ʆ���S��	���V_�5Z@[�{��_`٦*�陨%�w���	��V}��A`T-�y�#�,�ʃ�j��&�q�G�Rۿ��+��+�U�����ĆA���XLtx�2δ���G��fE�%z鴐��V�,��(Kx���r@�36��l�Q���P�0�N����^�J�go!��ӶTԉtO���G	�.K��fi�2*��&�u�
�R�MNW�0]�-<��>�ۂfTm �ec=["
��D�H�.���c���B=����)E���`4E��}(I���� y���6[!n��{=�F�C� A8y����2J�rۃ;:X��NkD��)u����.��Qn��G�X6t�k�t�*�xX��*86)�K�Bq?���:�����;�Z��=/J��޹�����VB��v�>�t��Gd��ښ����(�v��Y�nԚ;&��I$+��S��%��ڄ�:Kc���?!t�}�1��J�fV:q��%�/��f���V���zE��njR�B��?ҩzYK|&�Z���ww��n��o��I�'ٰ��
G��A��R�V�����9�-F�D�f��4�RY���KBA'橭�����m���+}��{�m{�@t���rp(��`g갘F�X����	*T���HD&�f=	eH��8K�[!����9?m����íB��T�����(�@a���|�ӑ��':�fv6}A%琍�d�	3y�v�(�<�׺I&{��r��7�'�z��k���c��Y�
��&c8Rj!�����̳^w=�c����3�Xc���=�LCY�6�ɐq�1G��8�B�4C
:���Q|��50i{�E���0��R^�X��Z�e���88E���n�}N�.]�*��&0���r�!�L5Y�?M��$�.���Az�T;�$G�O���)-��n�y0����3?ɨ�˹�Rhq,z�'|����Vx�١���(��{�!di�X�Wx[ W�3���MG;��N���}��<���V��щ8�&�"��A�G�C2_�S7��1��Qd�c�ڨtJeUY''-���,"L����¬r
�(''9(gzg<��D�˲P���ݺ���I�%nF t�Z�|�:�=�G9k��˹��� )�ӓ�tfe� ������nگ#����)o=[�Ee�2(n� ��b1�����<�R��'�R_�*f�+���n8;Ŧl���o_{����T���0��Y��(��&���U�d��R7JE'.�>��X�
��&���-���P}V��נ��2��A��()���d*i�Ūp��3�.��l����4����7I�)�t=�Ry�&��X}�4�vO�u�L=P�աC�i9�w��M��MVr�V��Z�(��v��J	��ʠ)$ B����7õԽ�웽���_��+[�Rl�7]HM{C�"�K�?'[�}�ѯ�����°#���ƒ�Ƌ�	@#茗�������C�d��ˎ�A{r�ݧNk:�j�����:[�z����:M�r�ĚP�waXO�b��-�0d/+���o͌�݅G�?�W�2VQ��|�Ȧ�.�a�F�=YC��CPl��K��K���RwB�]��돬�cY����XKy��O`� ���d��2�**�ߧ�9B^�!ܯ/}����S�%�^�R���蕙��_���E��<(��-\�_c����R�v��!I����kB_��n��H�J3:�ؔ5!��|��.�ʵ�nk�+2i���{�
���(:�[�d����%�g@оc&��`�{J�4�.ʘ���n���X�':9��Rc��&x�X(Ԍ�1�]���a���a��~ ��t�a�9���^M[�a,&> �X�k�I��7�J�_�!P�������5�d�-Y���W�FPda%L1���ʦ��t���Ȍ=`j����Kk
x���-����*#�1O������U���ԁ���s��n�!�z�#×��_y�J^�z�L��E久�Z�|o?�O���!�@܀N�uYn���t�� wk���?-��[b/"�Ho���_�G4��&38Ȟ�!�U_<��Xrx�=P���Q���\�]gB�v|)4ـ}�	i*3 ��*�����f�W��# q�N����s�kA0k�7��J���T���҉C���޻�M�rO���&�������,SK-IF}Y
��J�R�M�����;���}~�K�?"�*?��
�	�u���!P�82>�6�=�l`��������)��W��X�w�uI�����}y���u�O&���}�2Ͱz�c]����M�"Ciqo1Ʊ���t�(P���r���d"��.S;��V�F��Ɇ.b�!��«\^/%�؏n����8����Z���Ɇ*�'���5:���}BsY��ū`�7A�����n	�C���p�e�z�����ԯ+C�	$;lߣ��lO���!X%qB؉d[���)j.����S,�/�y���/������]����(�YN~����[`�����3���'��ؚn��6���W�
g=����g�I!93
��ZQ�����zp�W�ٺ��B���\�-]��Вb_��徰������/�w$����yi�gh�DLxnK�=��7�����eLN{"*��ùm+f�ݏ�G3o�}�K�!H����z��\�F�i��$51��Y�6�k�'~�o���P���mlb��Lؚ�w;������P���,�f�.�L���k>��֡m��Q�4�-�
��6�+�-mmCٜi��)�}�"*�����4��]�5�$��H�H�EnЮ(�b�"�a�4/�&�ںr�t�O���j*�t��!��l�e6�ǳ	����uOmԁ���!�'}�Bh����u�
�KSغ��C��b٪��T~=�$T޸oh�&d����=F(g��>��ߣ���5���X��l��T�{����y�/�Bzt�N%�E%G�����v�|0/ֻj�Jwk��%K�v�0z�w���[A�sӃ�.>�]>��hh�T�)�U-v{��z�D^�"f5HK-ɥ6`s���z��O�-Rj;��J^��p��p��ä$��R�v)7�R�*��0�b�X�~+I��`��CD79p�"���D��H��g
��U�z���@V`��YH�����2� O^�Q>���R�*��wu�����ɡ�kք�������W��MY8�ȭ��)l�jǃ>�)�l��%�(WH��{=z���pFDQ-�c?�H/t��5?�_ǀnRy=M}X�[eBW��b�=��Î�ү-�fܯX�����TXO�����
��Ѱ��C�h�k ��w�~"�UZ�z��x6�^��u-~y؋R��e��8=�B���ևP����k����8:�~��ޅ�h+�3�^D�q�My�!&�M٬��2bL�Ӹ?D��ڗK����J!g=O�����v~�\/��I)�Q��|�j�K���X�����t�����RZ�V]����ؔ����(�U��q(�,�O���Z��D^�����R��,�h�h%6��M^`<�k�J-�Kp������YwR�~6����?M�a��z:�K���.Ƃ;������T��f�ݗ0_[�R���Os^ �Z��v�6/+��ݠq��A�j>6�Z�(X)5��v_�H���8�%�N���� ۹mm�5���~���6K`��|PzR�C]D~��m�v!�r�E���c<�:.F��~��sV+A��i����!�����(��
��o�у��I8u4v>�q��Ħ�R���RK�����Z��R�����=X�/Nx)4��z{|~68��k^�ٌ����d�n�(��xR��]�QMP��?{GB6��>���DR�"�<���x��AZ�,8�:����F��pn�p��h��qJ�J.��*�˖��~L&�w:����1�z�~�G�b�����%/���Zn|)�>y4�����}�`-��ת�#K�/��O-{պ�
Z�L�i��1R�R��k.��v�J�Pjz<'��ؼp���`MK-ƍ�sf�q0� /�R�R/H���!3�Ś<��I��y�o���T%r�=oF�����K~���e%~7��/��WK3F䮖�}�����N�ўb�Ѹ��[b^[�Q�KO��aY�h�x�����	M�m�Ӕ1ޡ �i�M�-��\�]�Oؐ�-�*�h(q[��@�t����-�;=:��,�	�!TP��ԝެp����=(Z*���Z�<��k�FMt9۫
E��WL��$��s�����^��:'�Ig��MN�Q�4t\�4�ʱv�P���r���4CQ�K�/����h4F�6�[v��^N����t�%�ku�m�iI/��8�}�Rz���_��`�z��'��NV��ر��s+V�Q��
�����E���0���U1fo�6�@`�p2]��G̨On!C�sbTY,S�߈,3m�)�
�z�!���h�(��
A\|#���4�ӈ�hc��m I�q-����]�q��&|f�@�? w�@�<�,c�V��$��(��
3娮����5K�Z� U�^��/!F3S>�_��ȿ��W8�!��<�>޴ی�j�,+���w�߀inn�碣�*��p��y�F;/�3 ����d�&�M^�W���z��;�c���+~�CL
����)! (�� �sɧ#�쓠�u��x:X��z��<�R�NN޸%8�d:��`f��n�C��#�]�J��zF�h�m�%:��1��2�@��|D7��$e,;9މd�E��<� U*f8����=<���BA��Eq4\X8���hckZ��#X�g���k�������/H���2��o/����_j<�{�6��k�4��z�i�o��;�\�/b)9���1�=�K�Z�_��u�-���@�����Z}�+:j*6"�ՂK0��}��V��s�XfC;p6	*�Gk�u�ǎ"u�R��d��(IA.�Q;��!���G<$��dS^�5ew<E�>LՃr�a�_���)��~e|6<�3�uu�1�&d���;+,PUƝ2�8?��ş��4a0c�i���$���vE{�Ł((�?�h���f��W<>��}w�ӒO�f�����&�Jc�D��C~Ʊ�܇� �����i�q����q~L�G1��4F��Ԙ5�߮��L�E�T�37��>:x�Ί��@�h*[���aθ���ע~S�/Y�۬����	3l��T&=� �]U��}�"+�	�MV�2��wh�f�B�Ǚ>X� l���[���fe{�b����0����vF���5_��B�x��y�P�-�Je�����E}���|���N"�>�#��0~Tg�����h�.���Pl��^姯�����f�����/�s�*S3ȼ����W�6��ȢL��p��c��4����6��C�.��Z1?������㉖��s���R�}����_���T�5��R���2K�U����ڗ���8B���-6Ib0=]jy���+�uM,�
w�S<��˳����X��Gb�4������:e���b �nn?{�؂m�q��'��d;��=�D�z�$��Z�������~����e'��JRjC౤�K��K�[�jd�#�R;�͎������|*� ���-�b���Z����M^z O:c��{���^M��%|�Zq���-�,b�S��q5�D�Hq�5+֒����Kqa���6�	��-����5B�7��X�`��|+�_���I���'d�F�m��P��${ٟ=ϴ����N��!=l�ʅ&v���e�KT!��>��KtPc�m�e��w���N�?� �AlR>ل��.���詘�<Z�o�Lk���{	�K{�_�n�n} U�c`>�۵[�����$���3��q����oizV��`10b毉�ʺ��GB�&��wG���@���)�S��-�Uc���k��%�t� �$�o-��7V+��L���X��Jyl�s3�8&?��zM��'�-�2˄�)�I �e���������u�TꡠR����@~ד����?8|bY�1�*V��>�.��P����k'���?K��V�О�K�����W��MCX�;7Wh��������Oo覎�<�C]^E��o���çy�+��F�S�?c;��p����M���6�,Q.�`#fZ���A 	�qUK��-)�a���|����������R����X�ѧ�YC5ã����	 ڤS������A��s�^e�c��uw^�ޕ��%��oP��T�Zi��u�\a݆��C��a�������% PXy���74bu��X���^|=[j�U[�~˦Gy�3F�R\�������WG�@@`6�����aA�T�_*�7Xe_ꘗ�٢�^��'��^uY�>r�qx�(�y�!y$"H��|�R���VVW��a��#��lW�w�'�Ä�o5��x��zK��˫�_,"~��l����p�%�I�Q^��V�w�eq�}*|��{�9)ѿ�a\GR��9zS�a7��}�)�u\{4@�<�r�î�1����?��2�'ꑟn� g�i��/k���w���t����u�I*E2�p�6y5\�'4���J�"h<CzM.�+�AK~�z�SSư��>�!�#��~�5'3��?D���&�����g��~.�� ��d���yb���Jj��p�狼��3�d,=\$��4W+��5!ֱ
��J��"��{R���钬M�B� �\�ߵ�����R�>������hA!���<������Kθvo���n-=ֺJ�t\O~���R����{�&k�*�:����8#�x��6��,���1~6�)'/���bPƥ�r*f�+��aN�p~���}���֡j]��r�~ư�R[C#]���[5� ��'8�+p��c��C̳����l��\N��ԁ菈��(��3��y�I��+թ{��[E����m�a�!W䞌sMc�p)�r�f���44�mΒ(v����d��oas�{U�2G�0!���hbVW�FK~ۋو�=s�LB?S5�HK�8�ʍ|�d!],�@~��zk��ĺW`/GC`��!���m�1}l��������9{�)����3$���G���E7ka�#��~C�\P-�_��\��7����ͽ:�&��W��,����ʌ�QM��!Y}�`O|�����Sp��Y�~͡��
sdV/Წ�7 ��|6^�EJ��gK}J^<��L���Wj�H�6�g�w�uO@�St$~�v0QD#��d�Q�y�i@-*���i�N�.*{UC|o27�N`^��+�z���tQv#�.�d�+��Of$+D�+J�j��vc�/�C@g�`#�2�J����1�0� z�G����Q:�!Ӛ��ޚc=���˒V��7Nrƙqd���TV��� [����k�6�$li�|.Y�nՖg�'�,�5�
�V��Y�{|�&�L�ʬ�s�g�q�k�M�r:|Zn��7���c$j%Xa��5ݫ���@�{�S�n�i���la*�S>;5�*u��f52

�>qx��*���������ӥ���bS��\���C���&��R���å6AI�JG���v	K����R���6��)چmD9�ܴ�V�K}�lQ���8O�FE�C\��d���T{�C�YLvF�{����Ku:K��¾���X���Q�{��ɖn���v%�޽�1�l��a^x���c�7�L;��� ܔ��u��GW���c����-�e���X��p�]U#V�y�l�$v�J=K50N��:���gp���ۀ�s]݀�����s��!f���*A�%�ڭ�r���+P-@�쓬:�U�s2j!b_k�aK{}1���d��Ic!�c�%�Z�BޒЄ%�b[��1Ki��{��_U��
����6���ǖѲ��`���I�'�2"�ۊr]]��Χ���6+�;�mi���a|����g(�)b��J��8ܞ?��Y�-��}
fI@���- N�g���6j���U�� ǋm���!Φ6+��j�]�'s�/�䀇��P`����g�7�H��������ؔ~߻�5ڟ�pXE_^��p�*5B�TL褡�g��R�+|��T��y�@�io��1g���6�j��؇k�؊����xXDӗ��OWَ�CY�#�_L����ovzM��792���"6�K	`��v�D�!=l��g`P��.����hJ��/�}��3}��eҷ���J����6g�{
�z,RD�]��Gf��\T�1�Մ�Cc�l��q��kv�u��V6���a[������N�ȧPx$���ǚ��\�\��@���n�1�b�1�)l}�a�uq#�EZ%z�ڳT����2�RV�=y���tӎ��g���A�fms ��r	аt� ��D�\�Q+�7o�bN��OcS$1��p`�8� �tz�=��y��}
*���z�4eEn�RaV��&��y��M׹�����ψi#�yMZu���О�^��H��Þ�l4��0�k�x��&����`6���bdV�	�뀍]�O?��)��FPz�;��
�.���_��!(��ې�沢#+�{*�Q����{#�؉�w���\���
 ZP�p� ����k*6^�X�$�K_D7�G��\[��މ,�K ın��>E�%��itkz�B3��_UEN�����k��^_J}X���$f���T 3(�ůH	"���Va���<���AJ��a����O��6'�B��1aE�h�[9��Ԃ��66*�N�[���Y,�e6��ufgoAg:�.�T���p��R�{�F���������A��r�	�H~�nw�3�2�� F��F3;�O�گ�x��k�1J{݁�֖�q�k�~���3��d�Iдw�s�Z�_�͒-����I��zLϡO�'��E�՚�b����2v*��e'95Dh	#gN!ܖ�G�&)��&>C��V��Jv?Y��A�h,#���2����#�[�O<�P�����)}��4C��l�3TޯWZ�CP�t��̗�QWf�'�h\�tN�TЩ�WЯ�+���!;��GR��ۄ�$��P�Ē�*�̉C��/����,�``!�N'5�N	�ϳ��C'���D2j]M���߲O
n�V��!n���>v�Ha�<��FjƮ\��xSֈ��츾:�I��Ӿ�.�Ee��w����:�߳���z�B�K����CE�Ih,N�mO]��d�5�����*������UI7'R��T�#*���� Q�2%��SƔ��4�fe�
��-|��O!vN�S�T��4�%D7��<�g��e�
�������e�`W�=4����h!����Jf��~�ˈ���1��p.AYd�Q�Na*��]N� 7��2���Ԍ��+v��ZE��^u���v��O��D��R�J��pĦ�7ן�P|�=I��<�J���p�A5Y�Ճ��~�'����K���p�D2��ʊ���=��Iv!��;B�0�pL{��/Qׇ���e�lۻk���_T��tgM�$@��\�fK��D��a��dΓLu��\cu���~��8~0��e���+��=���Q��C!�LW.��c�蜞Y��-d���u#�!����e���s��=���Is���X9�O!gw�tЬk�J!7�B1N�J���[o]���=ӊ"�Q����}�S9~��=M+߃{l�@�6�H_��<F�3P8����a����S&˜i[qK�`�a�pڊ�A��o��������c�<�������ɶ�ҸA
�!��7��֐�n�ihb>���.isG8�߷);�f³�����3s��� �h}iդ����s}%����B�ȧK���Aߛ���猇�d��N&�T��wp�L��	�ж���L�#����.�op�ްզ�f�Z��-���v�T�G�]�	x3����Td����&����"��L�pwU�1�D�;�U�/��d���L3���-B}���5�����W]�_2�a܆�;���B�R/[��ěhC��d�Ţ�f''/�a���]d����)��AgK��IeR���V]o��H���J�U�E;a��	�J�l�:v�g�%�}`�L�ض����Ơ!Ń[��M�O��s���t��x
��Й-4*���zz�-f\�v�p��*�i[O��u�?�ZI�"�z2~>M]�]��G�V�4�{Չ����ڑ�	G'~��*6a�oH�č�.���66���ߑ���9�n֧w"�_�'Q}7�\F�7	�d#hIy	�ڂ%�ݟ6�*d?7EP4��#�yJ���T�xYJ��Op� �~��-�H�A��'�m�3�<�zԳK��g1�R�����/�P� ��8@@4F��!U�����h#U�Y�V G�l���}��%[|˦����T����	�_��Y��N�S��,3���<(�H��݌�����M�ϜM�r�s#:L{+���=ɋtj��UԔ���N�+�D�i
"�*���ǣA�u�g4�0�۟��ƈ�7��"�$���?�rS5��e.Њ�,%�Y�`l�����Q���8���n��f��FSjk�B,p���t�0�nrI]�H��Am�hj�{Y�o;
ޅnn��;�HxIr9T{Q�ƪ�o)������{�������p-u�+�r�L7�tu��.#����k�#�ʤ����9�&*����P%�	q�N�B�w����\��`��q F����$���`�HV��6�*��"IXP�n� �,�� �d�u�M8�~�B�̓A�s��?�J)�Q�6ud�|6����,g�u
)��M�N����n��5���ߺ�@$Z�(�&4#%�c�l���c\���s�U�aT����Q����0�d��a�c���̭�ur��_>/��JN˙$;�o5�q�أl��}. ��Է)w`v��;d0^04ѕj�+��`Tֶ�J�Rl�z����VFS�D�#f%���m`D��98�?�YTL�h� c���+��NECx�&m����O��e�_�-b��o���G�:��Hw�F�D_�S��7���H;�p��p�8����U".Kз�5�g��A���j�����쌳f���ڄt��0@M�j�	n�CN�n��g���J���u����يк*��V����<��sN4z�w�Q*�2z6�-{��)��nkAUj�`�_d5R�	7����(ZF��S�%��1%jVK����s�����QqN{��J ����b��:J��9�p䒖�� �Qj��=}_P�*�t�h�t1ƙV!��@q��.����d����Dx�jo\Q�E�u�w��i�8lq�j=UKɗ�}�xX�mn�#{���Zs��ɣ�8|��]X��9���	_�zIx��@��c� A��C�&����Ҏ��c�޷�������4�����NS�O�Q�՞NU�N��ͺNauF4���1Dy�geD�?�ȅ�Ǔ���v�0ݿS�*6�[npI�Y��n����/������*�F�������&�t��9���}���y���+,9w��u��ߴ�E��>p+w���h�~�͟2��j�W e^hg~�(
��f*l1ь��Ԛ=D�� ;@��9�s�>�櫋D��&�Ʀ7�&ϥ"��؏�;�
q�-���
���.�Pe���A�u�S�2��C}��4�̌jl����۬L_�,9M�.�i�"�im�nu���f~���FK��b�VA�4�5����������V{}+�g�z�#R��᪊�(�"uB6���F�A�a��Z?BU��	h^w�Gj>h.���Dj��2��u�]�մ�[b����u���51+�q���;x�:*�.v�����0��0
{H�]4P�U;�]�(5�?�S-],��-u���Ӕ@�y�m-E6��̈1��@�Q�r�c]��$��h����Sm�!f���1{�cH�q����p_���>drN�QX���O�&��^ܓt�� �^;n����<=��$j9R�.3h����DK8,�˯�0Q�oT	F.Ih��T��4j	V��c4�ޕ�h n���jJ����\�m�~��l�Ju3�d�!;�����m��5��P��]F�ʉ�%
k�Yg§�.��v�^�O,��3���!����'�'$��f�7`�:���4h���=�
q��`l��ڷ�-�4�/k��b�(��"����(漉	�'gpq/��=��y�,���S�Zftnn��8G)����@�Aim>X��7$�>��C���9�GY���I�8����+S5��߄��;gf�}$E���p�Ƈ�i�l'��<�3u.N����P#n�V���-�ަ��2hҖ����\��W�%�I3O�z�S����TK,��R�Bd9�I=�S��Di3n�m����$d��\ʕ:�"����i�d0sJЍh�"�Ï����z�.6�ʥ�գվ>dT���h�Ȋ�]F�Z�+�f��+:��XRJ�����g�g�Q-�7�J���l8Jf#A�gACH��	w}�pW��-ڬ�/6�����kW�W��}h�	������3�������	����^���2���g�N`a�)'e=�����c��,��hc���AѺ3Lk���|t�ѥ>���J�Ze��A/%����(W�<�"��~�����$8g�U��������%X7�z��`��p@0��N�$*l��x97���Scn�� �B�n��ǌb��E����1ܴ�mr:��+ޙ_�9�y�lf*�R����~I���q��{I?ϩE�����/���"��m֣���;gsR6.�v������C�鵾�4�f��u�7Un�G��Mj8psl�t
�b���!�U����5ܻ����t!����Vd02*��z˕ڂ�2V����B~�:6]����MH��l'bUW�}�i��J��z������K�����w�3q[���z��> ^Aa�K��	F���%@�(�ԯ�eDn(�^T��sK�?�ȭ΄*p�wp/���|-�)�pH=SGA����4M��{i8UaswZ���D_u
�&��A�@5C˗���ڋf�.�xW\/[j�QwT�m���ҥ`͡���yn�&�~��P+�^����6�u2��U���e2��k��!X(K���:Wf9��q�|���r�a�W3~̀����߆��������ey��xs#���~Ӈ����~ P='�'r\�5z�ָ6Xʏa��j��� �寧��)ho[�6+��H�� w��4T���yǗ
[��y����}�Ɏ"̀2�v��m�ɖ�݁�H�P.5����x�Ag��PW+n*�7�=������M/��1!7�������B9~zg4�,��ut�	Uخ++>�7�,1��~�E(��nk*��7� 65Ǘ̏���D���jӵ��<����b�(��9�)�٧�R�:��4��N��"���^�MY8�чɆ���@�}��]���(��@A�F�x2�p�ē���=65��`g�SD�d	;�	�����%���Jli�fܒ��������<�B��s�P����_0:�5���XYx�13�ZD�!�z|z��>��{D� �K�ɯ�56���JZgә_�<W��%(��˩2�CXd��&,2bgS��#�.A�x!)��4,��}h?%�ҵ����1��[Y-s8��9X����T�|c(�l^�&��N�*�l	b�ͥ�-M�]���U�M��g�~~�4�F�.�U��[��h�m�	,�lSdG?�H�2�"��@#K'Z�U�?D�Y�)7Kq��C����y���,�X-�(Âl'�����<t�.����$"�t��rA���k~%Z�u�_֍�l}��+�7��Y�)_�K��@O�ߓ|Ň�=�R�Q����g�g`>V�_}����y�/��#��l�嗊@� ��4��B�Կ��Bv�ėHBV�5�e��v1�t���)"�E},!��3�/�#f�u�#-�0J���}���f'ʏ�I4/V`� =Y#�X2������U~LďP�E��ƃd ]�`����������e�ר�Gv�
�^�����^�(�_�S�兢�)3x�=H��l�����$�����|�"JgN�s�|�hg��ۿ��[h*u�~FN�cb�bQ��>�Fۗq�ǀ�����W(2\5� ]v~�^�f��ރ��2bK���l"܅4����34_�۹���M��hf�Y����c�.�j�pM��+�lp�{,��%u�`��#�a�ꨣrXWe�ˌ���̉L����BCK��v��1rʆ�5����߀�)w��-�mV����-7}NKY��l�����"����j��%4�%�{y����g�s�����jA��A˨���ߡTv�]�2� �u8�)��ub�����M|��ׯ�pM���)]wGZv��v���MaR*f���2oV̡�rv�/G��y����[4������6܋����p`杺��:��X&�"6~�dD�r��j�ޥz������:?�MP�}�D�
��R�.�������8��cUHt�ld��fM�	b1m�;قf'��/���*�JQ���~��-9H��w��{�;�e-V�	�:��J�v�vc����W}��i�ΏQ��~�tR'�oez|'V#NB���uX~H	ȓX[�&Xun�ڕ4�� )Ӧ�u�0��i��<��tD�j���wM�J<3�v�K���]�
���od//�uC�h<?��^�@�u2G~%���4(0k��(p�	�dQ���!�Y���2J��q�`�j��B�b3�(�nA9ϣk���}q�6ef �U(P�K����㠷�)M��q$���"��\��y�*����V;5�&Ef��	Kw�!M� Ê&0����E��a��vZ�R�L���ɳ��F�O�f~[�I�����5����ͦ(~�cA���sd��$��z���e_�/�f�w,��[��Te68��K/'��A+���M?�f�K�at�aKM���N�w�t���m��Ϳ�!��>	׈C�U�R�v�Q�5���Og�е�P���3| $�4�Z�����A����M5p���iPM#�瘏����2~�Ҩ�S���c�X4zmo�G���hJ0e�Ž`�E��t+�y\%�,���H2����R�S#g�XWf
�(E��4�Ri�i��l6h����r���,Wy�) a�D�>�>yM�?��a�����V� g�ɕ^��e4aܓ��Aϛ�M���f��M&h���u�K1P7n�z���������-�� U�g��ݪW�b�Z�y?W�C]��e�=gזG�~@�ܔ'|<�aG}7�@�f=͈�3��}(��D'��Ə8��iUf��C(���Q�#_ǲ[���Ë�&�L�4��Q�B
�j1o"7i�M�Mˮ�B�Ņ��X��G,�S(�i%�#��zDi�D�����0���-���9�I��Ftu��/���g=݁B�R���2����y���'����\vx�:��Bӳ	���[�v ������}��r�x��%Tf����b��҃�0�($J�HÜ7�q�>�ʘjrJ �z��]�O)��w�"��D:��5�.��c��@�A�"��I���R�SM�������bm�Oh���������I�ϑH�7��������:�8]݀���U�X?����2bڬ3C�����RZ4_���_�w}�8\��EU�j�"u-ɪ���a�.�烿%��U��?�A�����_���g(��w
oUW ��D��?�Xwƀ?����\�������h�)V j;^Ŏc�ء�C�c)�m��-��qƀ�a܋�R�6�:kZ�P2xb��A#��4��c�@�q@G�x�:��hk����1E���h�y��~�8�l�6d���a�a��
��8��W��+ma/���1�SNj��U'\>�צ�6�M�N|���[�Hf�ˢ�1N D���Et�j$Q�'�����[jF$ھS��!�5:�s.M�����U˒����0�%�B�H���[��/U��9*�<��o�@�Q�ĉ�i�!��/�uO�Bl��/��_=���-�?�}���G�Y�;���P�O��: ��Dq����-юz�U���Ȥ�K��+�φ�	J�R�&I�RqC`��]���QQ�	lMs��K.ÕIj��Yt TeĘ���S�n?�'����""XZgD(Z�@����&J�N�J/�u>��Āj�r��_��?D��vU��)��E��t��cs-'!�}
�v���4�ƃ��Z{Q(�:�`������}���*�q���qȔL<};���
����hZj#-U~J��˝ѓt��2�e���Ye��]\�X�2�6V��7 ��-Ṥ��=xi,�,_�����f�:ni�PI�D�6�i���h;��~ŀ&?��J)���v�)>�4Q�h	��EM)��G�Ss�lL�N1���\S9�>�M#E�V�P��l�����9�Ru�"UI5���J���\G�o7�m���?��ez��t��([��ʎY�ΐl��_;�A��b_G��z��%����)�/����rY1Ӟo�W�0G?����d�q4�8��V�</��G�G|W�Ͻlk��ǁ���S��6U��������?U\FY$U;h�󛞈w�N�׬�lb�������;�˞_�G�*��B�A�/π�lŁ`!B\ nbs�b�Qf���ӭ��J��G�ž����7�F~�B��5ˡ�h6`��x9���<d#m��A�s�џ�t	���i�>T�;��!�/�~#f͏ӈӍ�F)��$K�˷s�C^�)��7w��������~��
u��l��9�!���8~�{j�2S�~��C�ic.5�&O�{��Si�&��Z\W���7L��}��kF�<dTA`�Y�ԦS�:ZD�ؿ
m&��b���2�|�w�3�h�=@�y
|�! ��'��E`�tz��2�� ',~��:�X�-�4�2�5�$�"^O�\%t����%Ota3.�0����850�U{Ca{�m��y�+x�_3tJp�,� ��6B�V���煱�?t�� ���$ɹ��3Ú2���e�	�$���-5�����lėx�Ě����n��D%d'�y��`�aĥ��pdw�Y�	����Va�EC���ˑ0��q4�.�Xj.4vs� �IV^� ���1�����K�`�cjR���`h���E����Lj���ϙ_���Lț�^�Bl���!�/(��2c.ߋjt#�����H�]�����D��(�CAj�KtQ���cf�L6j�%\
�Q#o�1c��c��J���_Mwr2�	��(0��P�>͠Λ��קtU�/{Af��hTk��G(���P3�ҍaM����~�ax��<�#�Z8��'�$� *�毺� �*ޏ\g��c��� �J<QKe�WF}����d���s��~Wj��|SȌ��Ze7��4�r� j,�Fc���{<��;/���c����.��
Q��D���Zpp3)�@��O���2�5E�.�K"�3-�|�� KRj��S@_$��ˇ��\2z��3�2�s��ed���\u?�KJ-���t�v���e�N�ޡ��'e��ʾj�?('��u�آ�-����<�G�I�Owz�3�Gl'��R���D|��m��(�_�bF�����y�=>T���TjF���������r�\��Xc�֕�@2�R�o�ߴ���8�7��x�� ��j�v�d2;�� gMZ�=��Z�l��♯�-�l��:b�?Ws�m����(men��9�2���b�?� 0�d����9lܲ��K�dr��=�FKF�f&�� ����'�!�獌�H�Ԣ$�ԭbA)��L�4�Pߒ(�oT����BC�RC��ɒQ�=���e3�&�Ԫ�۹~�-*;,x�����!A��
��mt��u��)��1>��e�Z�eF��-΢G[DH�K�N*XϡJ�<;.^����p��Q��1C���R
�b�(Z'��JD<�^~����u�dzY,.,�&�9ΒQuO�M�L�#tz�`{,TB��t��Y�gkK�Lp�?#v*�J�d�kv��ɫ�C�tv�[� �zF7�zNX����T�A��S�8Z�XJΘ�C0;�_Кh~p�:�Lg���r�N�lO秎.nb�Ub����*����@��4��dc3�9e<����3�/(w�����d.͝k�Lu�dL{�Q�N�R��ez�Ww�R;jF��v���=�KD�-ʝ��k
��~F�Z��-��
%���6G4�fxYm	�p	�[Kg�e:�]%j�6$�L�>+����M�zs4?0sa�]7��I�/�f(Rj�#F��&?g����d0�'3�x�ϣ���.�
��śf��Y��/�U�P�:α	ΐ"���B�ߒɑ@7���ٔv&���/v�x������8�l��>"y����4�IN��I��kSo2:/ZT��g�V�X��j�,#��"�a��$�EW��dZ�
m��z�:C���O�%S�nD�"i�)d%��ޢd�ġ�G���\���0��Y023p���]�,* F�m�g�)���R�e {mZ�)-�J�v�ό�+�Ss��i�/؆�MT%n�#�R&�E��pTU����\lgckZrxwDc=K�RU\&G���諧����{����` I����K�F��oL3k���z:�{���0�<�O_�ٗ|xyuk�S��~KMbyIH��>��zu/Z�=��a:��HcM��i��2^�`C?&�K��	[�g;���M�H$�R�C#�v}NE6ùX2������SB	��ێ�_ ę��d��̈��;��ցoV���I����wP|5�%^teL�>��0�V(�灳~�1��Kl�34 �ݵ�v�s{>�r2���t�u��K!���H�̠-V�OL�aC���V[5~pjd���ƺ�����͗�8IH��)/k���-��`r�K�_��xDA�� �"1��dV���}��'�ˑ�/hc�ޡ�5�}��ߢb���>�A�����Fd]>���v_g�T@�����Ӧ�iM���"H5nWwD�����E�t5|K�F8t��m�ͦj�7�\�!�����h���,Ն���#u�ǲ��
��|����P�m�w[=�y}�^�k�pa��5!�m�ud�(�R��������=	��މi~�ۺ5ٰsX/�����f7�{[s��lCMZ���/����Y�Va�a��lo#Ko�����n,��)�L���y������&CO���& #�$�&YY�����s_7�	r�8x�T�+�K��og��;��ò��8w�&��ֻ��v���c��Γ���?ś�l_�=
��*'���s,�w�&p��ǟG:��1o{�e��T;#W��#9b����g!:?���ۡ���J����fK:pQa�N�J#��V{�Дf�q���iũ��SY���t�T`ԕ�$�ɀl���k�p���0R'�	!�F�%ceQo)�{���K�L=2��読k���l~�׌�����A,�f�7�SA�u�E3���52n��d�c����Ѭ�6�h[jES����\aqy��|+����YT��q�kf���=ݰޖ\F��э2f ����hYe32�ȳ-�sg�?��"�C��2��Lu%�_F�w�����a��Ȁ%6�:g����Xr-�o�i���!�hH����nM�*�1���*=�����T�$(y(�
2�����(�)k��-�t��wW�Mw��$M�c?xc=M����i���1�E4�S�D��S�Ϯ�ҮT� I~e������C]fa�3�F`嵕�����+��J�!�)�,ѯ'P�c�%�X��L`	.��(���x2��zA��nB��[����3�8��>�{���o�}�I�Y*�48͘7]]�˯�H�`~�pҢ�rI�s�\�[��bW�g���|�ҧL�n\�-��u�$v]t�>"��k�0�����د+�@]'�.��߫(��Z��7��V�k~�ݑӮ�!|�\]�i~wOWL�����3�L`K�Œc?Uދ���O ��`���z��l<ZqZ����>����t^�8����	��R[�����x�/㢶���˩::Kz�-��皉1�06��k�!��כi�4<!R6��k�c��*�:N	%��ф � >�F#$�W�ok��k0hCMF��0�fe�m���P��ߦG��IT^�$��R�Lm���_�����`��,(��L#��Z�ː<�bkpӬ�j��T�:�k�L���z�����kK-�Iz��5�Ïe�`��I5��z��z�~m����F;�O�ߌ����X��|O[ń��&P��1~_��Q�
>�$ץ�y5`����@�/}6YMY+���$	6�~�T|��U���=���9���(��۸R;-G��y�{
9�ۦ��H3n���<Fa�IXOgKU�ȿ�"J}QbQ��@HB8�ڹ�Db���\go^����Og�zA.�ILh��A��c�%�����!���f�a��f#�i��r��5��y������o�� �<�����@��S/�����M]bm��4���쌧�*_��kW�8��ޟuW�.8M��;&D��ONO�����0�ΉClz5�0=ֈ���G�z��'����'-W� w�=���(��¤���.wXn�E�w9�O�	�"/���{�P��rε��a$I|�����}��ԓ5]�58�8��0؜�a��,��/n	�h�x�U��ݕVz$��+�`�Z-�N{��n������o�"������#�]�&�R�" ~�\1f�)*Z�L�"���v��u`7��a�k�������C���LX8�/ds�Z����	�T��g�JU�Zj�|a�>�+�Ge�GkŚp5�����(jb;�`�Ά�����a������.	���G���L�?�
:b���8l:֬�Ӏ�Gi�J�2�;���ք(�.N��yR�p@�$24�s��R����ƾ�����d��hբUj]�Zk�h�Z���ڪ�`]��q��Z�n]h��[AEA� ��CB $�� !d���~Ϲw�%���?�˼;w���,�s��}�j��J�ï�Ϲ�������.����H��{��7�4V��&�r֛}��]�JX�F�0�JQ�u�����+����i�Nؕk}�7Xu�c�� �ݚ�[�+o�����۫���gኰ8�V�~��x�1�\9�����?��9�Y�Bv�����~N���/���&����]ry�1���iv�'���B��y����%�5�<D�]�w8���Z���(��VA)(�2�[��x}e
(�Z)%m��v\�?�3��Q�!|/���_H�����\-�a+�^� �����A�[C�PG�]�M���狉%�1�4ԧ���Só��//������S��g0f��7E���ա
nu�π'��7�YC�]������Kݏ^����c���Ga
B�Ic��t�9�p�����*w} ��	t|(u/���/W�1n����_�l��3��.#�ʙ��+0���/�B9۲��|���q���|��C��2Ć=OYqe���֧]��J.�5�Ry*�x�/y5Qn��KB���a��D4�����>s
ML��i�~�y=r�[����~�$Ů>;�Y���?����<Ww��!k��]��d�qy�����<��B$����3�=���=���QNs����tr}Hf<��<�]A3�����C\݃� բ�s��N���v{�X%ϋK�-�kdvx��g�� ��[��=����(�M�-���-u�K$��t�v�L?�%B�����S�����`,��o�~��܌����z7��ۧ�7�X/�u��������Q�j
}5$�c��.Z�_��E�\���Y��pW�Z{��?9�"і��w��{I�m�%�1����Rfs�L�FE���`��/C��!:M򲘌��9v�vdXx�u��a����g�^s(�j͜��Nq-*�I~zS_+a�>��~ve<~S�k������ /�=Nʴ�&�ԗ�]�KW�/��W�D�aঌ���\d1�t�Z���T��uθ&���b�fQ�(|�t��G�`�h��z��ǫ+�v�p=��kHO_K�{�x���p���
|^���Ⱦ���ϷI�[�L	e��<�])�ʌN
��o���O�l�I��42�9��]�'�%�CN� �ZjWC�V���+ѝ�8���~�ڃɻ�݃O���<K�-a$=�t�[z��g���;T��I� ,?<�M���+X�9�D
	�o��!8���!̐�d�h�O�B��?���>�\S�6�$	O�K��:����ٷ';)�Gٯ���N����!����wؒ�aL�|U��rԖ\�
>�^��P����\�}�O]�Q��İL'�o��<�Qp�Q�/�?�*�u�{?w5�m����Y�����Ca��x'�'�����j�8O4��F_M�5�EoT۪�F�USإk���r�w�W�ק������r&糗��\��Q���]������O�ؽ�L�ސ�l+L�8��En���l���6�'�Ƀ�e@J9�
2�T����v�bȼ�%OФe���"\�p׎�6�Y*Z}�wHj=M>^뮻.�/��}'�Z��E�B�	�9z��E�߉��B>n����i��Y}�_Bؼd�L�%�zם>��%��_�I����R��;�<	͘V��<����no�3W�{�Ua�$��y�?�p�߂�mi Q��sr�ТS����M
��y=�H�{�+�s�3�D����U�ݺ�0�U8��#��/�\�o�ݰ)
�O���|���7��Fф(��U�"=���O��Z]Ko��zT4�F�߉�oz$������ˁ0\�Sb1G��+�j9E�jҙ�f���u�wՒ���]tg�
�;�����e�rK!�����U�
�)�n�-t3J��\/Q�(jt��Г\jh��	�
�p-�Ft���ݘ���|E�#z�Ӯ�J{!��󊖼�)d>�;����kGS_��X�Bs��O��7���-���������mWI��!]�޻b2|>� ���������]w�烃�2����*�j넏�Bc?K�ܽ�Du��j�M�B�5�\�e��+�h���j�$)�z"��[H���](�o������Ȭ���λŶ�Ȟ�h��sU���ɼh��œ�P��a��Ẇ��.��R%u�l���;m����&y�}K6p�-�ؠG�9K�^bM%���w:��c�����u�n�w:����*i��Lj&��]�9�W������D�(���j�z�̇yJ��o�����K�B�
�L��[�>ۦB�������!�����CiMJI/���]�]�Y#�=̂�|�ǔR���m�u�9���!��ϝz�o1pw(_^�
��Տ�)�hwI���Ev��Ƀi�(������y�ʟm��1K3�ss��ѡ�� 1z�\g����h���vz�j�7������E�:�����4	��xQ�8���X��7f��*����q�~_��@e��!���ǒNcT��D�:�JJ�L��i�债[j��/�"B��O��]a�`g�Hm��
�_t�'�_�{�8�}��)l�oC�+��8+}����T�`���ed�zWgLnc�g���:����3�3�Jm�tJx �tx=Ԁ�aQ�<�'A�I;R��u��D:�B�������ß�%5�:�'R�FYq�t�~�^��\ ���N�A�3h7oPDu����C�չ8�E?�C#f�����.�q��Ǩ�y3�9��GMכ���a��_{���ls"��jI<�����p���~%{)���\auwtF\	%�w^��0�5q����򁆈��߻��ev{B�w�Y:�������W�A[x�����^�p�vE8����Eq�3b�U����}�QRRn�
�%�	g����/"��5!���Lg����G�+]@x���ϣ���B�Sh��^�
�X��fA	Mī��Aoa�~�I{��dy����aR ����W]gѼ�]r���{����
�ڻo�5I�������_DٿÐ��R�k��Z%Į�V��+G���Pwv���7LZe�-`.�F���8؝N~ �vr#����'YҦ����e���AMW?4_��|-��ih���V縼��/G�9�}:k���b�l�nW�|�j}�:�3ul8��B?�ײLp�F1����6�]�9`4=��Ҩ~�uIot�_���N��w���r�C�݌�۫d�c���,�gϱ4�����c����Zu�˅���Ѕ.��[��,�Z�c��r:n=��@j��s��uW��'��T�_ǖ��i�=c�q?F�f�Q�����W���M��?�맏�vr�sL���.�m��6�؃���
3b�����-���[�0��%�*%�$��Z��Η�Xts� �+��D���Ժ8#ǩ�b:@?{�Yx�w��ӭ�I�V���o�<�V|�;?L��Ff3�'��ÿW��U��]f��� �ke`��6Ԍ�����rde�Z�����xT���Fx0�ҕ0*�I٥�=���C�+Z�B��I�LB��1�O��@��ˌI4�6�$-�w�����r3D���l���.
~7i-�%�F��}�~���C�\�����ߩ�2p���q䋔����l��QRN�W�G��x�����M��|']��%~�7sX�g���,�+�U�j���➬q���񗪯]�����ذE�9�s~�}�#;�����.
��8� �.ͥV��H�8�-��B���$�0�3�k�y����q���r�<�U��L�pu汰m��s�5�+ΐ��%M@���\��ʐ�/~(����0چ�4��#1�*�H�ʱ��au�~ַȑ���/iT>�����O�4ɭƃ�?^�s����ڴ��0����K�A��T_9JF�&_+�w�K����[�jLD��4D�%��`�wOK>��@]����*ow�2h�;}�������r��̨gJf�\y�D�G��SX�q_��sζ	-!����nZq����F��6��%�p_�U�MrLo��r�q�N�Dނ��'[��ר�XqV���������h#a5�[����Z�w��ײ�2u�������͈�(�D�Q����䁖p��h�.��N�B�����o'�Ɂ�M]J!����_��ryD�_��_�<HM�+��p���u���Qޓ4H���c�'�o��s> P&QS]�/'�%; �ύo��,/�{p
�V��8֍W.Ȓo��MJm�g� ��Ki��І�CΞ=�_G-�Çf[ ��C\䇢��%}}��{-�E��O{�p���^C8N`7详��P��4�[B>��=�2��,`W^�Ɩ��ӼL��A#��/����,����W�ݽ�Pk)��Qy���y��Wm��L�=��!8.���j!G���i�w$?N���p��7/�o&���� ���(���?��2��97�)=�J	���6U�~mʨ�~/���>t
#�?�:,Čo{�5з�=ư�ߵV]үX�F��Q1�5
�9�]I��فj��G�N��eۡ'�[D��[�]�A�#��^a��n����.��8�9�=��=I�r��^� ����|E%��M��)��G0�2��>�W�K��7�(rY�`>*�>
0�z
�?�" �����jz&����c�^^�g�\2m8�U��z���Z�=��ǩc=ȝ�.�r��cZm`������{X^b(��п�t��3��9��j���a�/��������`%I��.��-z��C@���',r�$C �S�O@�0����L��ϸם���&n%N?�"�C�����"zD:`-7��f2��2O�6+;�vU�Oe�z8MWo��{�f�7�4�O��o,���r5MWg���o���j'��LS�-{�&+�У�A����u�i�K�D>�����Ƞ70xOOsa���.�7_�\�7�N\���^��.:6��npJ���J�I~Vwe�t�i�DԨn٢�o�љ�F� ͗�S��]�[�U�g����d(,�ǳh� �{�qQ��'\�CQ��+��Cs/}�
{;����|��߁�^%S��aBۍ@�V7"R��N��3�d�������"����ʘůa���M����M�QqųNB��P4c韨����W$��C没��2�Ӥ�f��Q�(�?X#ܤ�$2]�eԘ�d���֒�䢥��z:O��c��ʏp����L�j�.Q��H�} �v h4_"5��T�������'�N>Y�p���!���:�C���ia�µc-0�����v��ჼ��m&����[i�K����[a��J�ޑ���=�%zпp��0I����{ <�\�j�mv'���O�b�,� ���B���8,��V�2�Z������hQ!��лm0��66���N��i�0��4��.�?	�����	{��Ge�"�e�p�}��ﺂ���F�W��X�'?p���q���!k����=x�+��x�7Il�O��2��ܧ�+��s�7�p������ۏ�)��>ة���BI�L�G�C|�^�3��8�0���&^�Ց���t�h�����@��_��1uM���2w�{ۂ���O-8k6Q�D E:���$0+_����=߼���sC�e}�LQ��� Ψ{�0]��P����y�#BTN��%&2ք�y�� �����t��K��@�{h���e�,l��yx�;��.z~�n����g��6�~
G-b��z�!�o��p*�/ǂ㏾q(x��F:0�7���ސ7N��:Y6������$�<?�R[�qPE���(�B=�5�fެIz8�g�}}F�e�=׏d�=p�)�}�(��=\��)�fa�+�-]���&����
���^�ˋbO�m�G���&������0��9�
��ro�|'2�t���Ts���FI\��3��D�=�*�(��ƊNx���@/�%n�<��R֨�K�\LI\��������Y���u�E��!Wn�&5��a�G�1�ֽt��y㍰����,�>�f@F����\�YRBṖ�q�:3��,�a��~l���v�y�XG����l��Q�#/�>�5�:���X2Cx�߬rwQ:F�c�Sۀ��^%���N�r�u���5�-���!�s�!r:n�X�p?���(�}��N��9U<���*r٭��W��������;�N�q�'X�*�T}�>�N�Ko�+�5��b�;F��ЧHg ̻�սV�C�B�A��Z��ރmU�Z��]ի��*�y:�35�0��;m�$M�yMg��D��C�0��� �����qHTs&��W��Q����S�a���FI\Wx��2^�����	/�ϑ�	L���Ǖ�E�����Fo�Y�ɚ_�^�$��~.���d�I߉ 7��2t�s�+�������+�%ڏ�]���f�͍��^�\,��#�ɑp5�_.�Xj�}4�env�t��x� O�W6vg�|�}��TNξ��3[�������G��a�Ra��<���r�d�A����z��ﰋ�=raX���%C��{hSL�������p��Md 7���i�0Iv~���9�l9����s�/ɭґ�:��H�=����%
N���v�5��x�s2���'��/���~����p��d�u�T�{��ha��7�%�Z��z��ܣ/�k��N6z�?���S�he���J���,t�6 ;'Bl'�����؛*s��2�~����|�]��p��p#c���Gn�iK{�<ˆ6�7qöm"�\
7�(i��°Aק\�E�rPz¿�:$��Kz���C�E򾢐^����~����:�s0�}q%�`\��\��>ʧ�C�w���B?�~Tf0��Α��~Lޱ��Y����)�
�h�$� �se#�}�b��;he�ۃ]��w��d�h�I�F��~����.�7�W����$�U�n�/��e��ţ���N
��p@0$'����,w�a���5�/�����KHxIB��v;�hJD���w<a"������^�w�j���{!$����A��[d���J�d,���D�z���j{?��U<Z+1E*!�?��V�~i�!�t��K9b��M_����?��]�=+6�>�*up�A��-�μA4;L���=!B��޸0vH�f���z���nz9�Lt4r��Ӯ�dខ�-O}���Ԇ�=b����]s]�H�#G�-7 �4��� ~X�'��M_�5q�	t� 
��� ���G5it��O\�9_��ܦ�����m���]���n֯sҴ�,���׹Dz�{L�2�5{<\iN�N�m�C�z���x���nF/u�����~��d|�����s<��_Y��5�7�S��Y�I�#�am���Z3��s�`h�AᇢfEw���O:��*���?�z�p���$.�Y�4�D�^�w2�z|��C�H��OL�~�cw��Lwu&�P�o*A��m���ϡ�O�ON��L�a��]D�B�rE��T��^�������Dd���ҙ�Q��@W�H��o�b�὏e ��q��YZ��#��^�a_��|��������?��&0q�y�f�L?d����'/F������{P�B�5���1�+�$M��������"�~mf���&g��l�}�V?�+ )Ϙ��D�n��/�Gj���!���I|�/��sF��*X��|$�[2+��͕8���~��]|��o����Gt��Lm��U�PO�sj�Iyu�&30�o��5=�p|Zq\� �~���&�B�~/��( m>�K�1�G�O��@_ǘ�&1˦��nW����Ѽ�8��s|'��࣬v�of.�
Lq��hq���7_��
^�����J�T�����H�j?��V��㋅�yyr�O`\���a���)�0q�U����ψk�ʼ��C��ȣl�|z��`w�K0��8����X�L������c�0x�)?�[&�������w���5"�Y�ƻ$s2���t��I<�K����VKu�lR���-8� 2����yh�ů3D�%.a�����ڼT�~,�w���!�������$��	
-eԖQy�|2��%��m0����g,5=d��ٮ�i-�0�_s���w�W�D�	.ru���$��J���#��S���ɂ�Ј��г���a�ʯ�����M�¼����k/�K�&@�¹��>L/3m�`v��Rx*��_ԣ��/��y��Y�.�0�|�_yA�u���Nm��	x8N$�� ���������Q�����|���An���q�t�d���,Z�L��`B�Na���������O��}���j�<����	����:�>�@���@�R�N�K�^<�Yv}���	�;��D�@_i'D��&�5���/'҄a������9���^��|�x	�GE���6k�Lr�z�"�<��f6�jjҟ�e_����z�w�Bi��W�A��|��a�Hzo	�7�>�IW����}i�l������ɝ K祾�AބT���4Uȅsp�1Z�OE���U��-/�����G�~���H�̭�s��1I�au*&9�IÆI~^&?�O�~�u,��Rڻ�ZkL�){�+!~����Ue�yeoz��-�������d/L���Pb!K=Ɛ����<�vp����ԧ���Wo���ZS2L�A�}$RE
�ȋ4G����(B���P�=�V�~'��wҶ(�
�QP������x����p��-+��\�L�Ģj~�Z�� t��k�'�������䬽��
%�?ވ;�>�R4��򱿅����S�cUC`���E���Z.�:�!��j���U�T�_:�QT}�C�O��A�1��F<k�C��P��(�h��&�¡����4�����]�N��_f��C`k=�O��1��f�H�s��ڹ��U1��C����=G�_ɺLKOwkC쒲Ø�vm:0<P�_s���#Ic�sa��0��9)�)ri�ʿ�UTi�[���F^�3��ru���X���N��paF���"�\�=B��`cOE�|{�d���L��3 ��W��U�e�]0ȕt�5��;���xaщ�WR*�Kska�R&�U�>���%�6�Ы,��y~!|	�7늱��૫"���ٶg5����8lƈ{1�|hj� :����9��F��e#�0��NՂVD#!�=]��+mc���U��t��٢c�
�6{��U��g�N�8B��)l�֒r).��|"���
�}�W�	^�/塊�~��R�j�>ûy� ;�͓�MЌ�L���ظ���@X/8#b-;A����fzӫPv�-	|N�"�
�v4���Ỿ�O�������!��=_Ӓ{�8��V���)�!��~(`�⺄	/���h��SvI9�t ��/�@���q))r0��ځg<�Na�+%]�w>U·c����ʛa�y�/����g����r�s��%�g��ľ;�D�k���z����hud5p 1�ү���_F���U�O~�Ý}1w�- �~>�:������OB�����:�j�Y��������+���I�7͉ײ��X듎�z\�W:�^�BS%vK�J�0KE!M�4I�Ư'FP;��}�ſ����{Hѫ����{ߜL/�z�&<�0K���P��e�^Z+�,���=h�j:�/Kw|����ă��E�TE�n'���P�g�b�'��!�g�]�zV��t�Wхv;G�?*r-')�]4��T3�7�ȝ�������]f.��eI�n{7�QG�$:�XP��{:�3�b��}m�Ҥ���K 0�9-��'����7�;V�,�O�!�0�6�� 4a@�{���|�p�Ҝ/{��Z�rE��c��Oa���"`�K�K}�!ӣadw��g�x�_�&ZXFkժ�����RC=��f��6�=+u?��$��J)j��G�<"r�ِ}�E�卑���BH�ڣ?��2Ӣ+<��x#�����a��h�}e�D���k# ~��\�*�/1F��1W�Q�{{a��>A�D_��#�)lBC��x/��)z�q�qA��&f�o3ՇԛFk
SyAӽ.����=P<����eR
�~h���+�e>�\sJd��p־��w���	'ȷ�Y��&�f��Y��uw�7��I�	��ް�e?ӱ�v��e}>W�b���N�=P;Ǚ��G�h�qn~�$z�[*�i���m%<~��
�*�|ᆀo�H��A�tM�0���С����vy����ʙ�\��S�$�����tH+����1�}4�gM�ƹ�������y	������2�t/��y�u2�@k�dV;s�n�TOWܴ�"hXe�OA�b�V�o�;4�=aFx%��˙
;�Fu7=��\��~������=ƕ���w��3�י����=�o"?�^��o�⺅N��lnL[b9��xD�ξ����7�.�nQ���s��a�]ܻ�Z�At���0�4��0��o��C���Ѱ -G������uI���֧"�xO;( �ۨש�.����q�A�J	��E���_+m"�zd;P�����۟P-@'������m�q���!�t����Ф�?��5�����[�^5����F�����/��-<��ر!d��j�?w����y�	߸�
O�#��w�v�:�j`\?֊����o��eR���ě�ItF��:�/���V���ӡ������h�mt���W���^��g�Bk��6����d�=�%<Lj�(����<�Ǆ��)�Ǆ�������,�I��d>0����!ܜ�I��xRS�������564�#�*_�]C�ڄq��5ѤFփ:i=ASC��㺧L?C|����~��v�uM�q]��֏0��T5v;�l�|�.�.R�J:�YG��Wr�հQ71�:0�#>{WUU� Wp�4;��g�?F�^洹ӻPa�V��N�SH��n�k���<w��������"{:9�iN8��(�8�eA_z`��r��F=�������E�U�U�=d�#l1��p��|���?������WZa�O��:#���oߛ�(�e���1�F�I3��i �.�Kb?{0�[p���Uf�[������7���NpI�Fa����x��r�ƯO��#�w}p"��EL�s�>ad9Z������\�9�� �(�p������'ڗl��Mx��<�p�V�Dfi��pt�0}MOF�ږ��R+r�u�Īo�]0�9�	7�����o2y�k��k��X;E��\�Bqaˏ�Ht�Ř6��fK&k�E��<-�=^�z����x%�?"���e�B� ��C�9�V����M_�q��:��n�j.�˾�����.d��~�?��p �cɟ���{_������0Z��t�6%ەz���m�B�`�+	�a�NYJ��spet8r���-�����U��F(3<��
澌����0W�x�_�q�Eb5xV���p����P��C�������\SكCi���A Xwb������F7���s*b���� 0<=���*ue๡[o?O	�4�׻���V����hd���^��,�
jI3��w{��Q��,X�S~!���fd�|K��ď����z8\sߗ��*!�rk�y�l.)�oiΆ��r�KiG7��N�͞U]���O�um�L?#��8�9C����֍�g�*f�&J�HX�A_hwxCr��5=��?�78m f�^�0��r��,f�s&���E�4L�����7T�x�Եz3u��/�������9� I7A3
��s�##���۱�q���.ʡ�Ը��E�$��V]�hI�p�o�O0Aw<CD��Ӿ�B��<P�"��1ju�Wq��ԻPg�����L��g˓@�?Jg)�M�=���Sҟ-8�>c̰F���؛9�M������12�uY�_��=� �q��O~%����c��U|���:Q�j̍tOw]' ��)aI�sg�����2�~yQ5��8�c`��/� �>t�-��ȼ�/��c��/1!�6I��Ө��n1���x�"�-y)�%]�Vkc�9����+ф��c��1hh��R�$�u����ӕ޿'�~]x�~������u��o�������w�՜�7ړ�U�@A�a�vMcw��LH� ��ϳ�O����£���ϗ�ȱ0��nqcQ~+W��fp	���������B᫵��h�T^h�C�¤��Q�f����W:/l�^v6,���GU�m�[xt�}�WE���(�H�-+�x|׏�h�k���}���È��3��2����G|�L��G��ܫ0��ru���� ��&e�Ή��\������Wj^�UͿ�ҢO���|*7������w�������`����v��G�U��.v4���0mz*=�Q���5g<�zH{]x���э?W�{��aJ*����?�%��E��\t%�a,=D�K!��B�j��K�bd���vbx���(��t}�Wx�"o. P���_רǪD9��(�D��b9K��B���V�w"���h<W_�|ݣ��GIx?��������
�B­���;~�=k�}{�Zy�Q��(W���U�L����������T��~ᙗ#��ա8�:s�j�U�W}K��yK���t�%�=ΙgU��:n�}U{3ظ��}��p����hUtY4��c�O��K����K�2[������]_��"�x�������=ד<'J�Y>���.�����GF����q�T�c�3�F�8��<�;�$�o����X{n����7`�Q��]#�ɑ���c��{����삁�'D��G+Q�K��M��v}���5��~,׀���$�'&q���i�����.W+>��r_�^�
F�L9�����������-��l�Vkx�W*���z�.y�����N�n\/q���O2P�Z�C]�s�>��[��:<̣_躑�"�k����q���/�a�B.��k���N�E�Qkv��n	���%���I�?4�l��r��O��.���Z�UN��I���D9_�h9k��<nfcu�b��qO\����k?-΍��Y�C�
���b�?���߻r�ſĪK��b�}MU�i�y�̓)�H?}��o�|�ﬦ�'��׸K7���+g��[��4-ft� ɫǄ��.xǕ�O�
�x��Q��*�(TP�{��ψ����#.Wؗ�\�2á\(K�x�${�=}��V���+���jD�+K�u����~��)�չUJ�7N"���)�1���U�0��y��������4t��a��;1��:�ȝ#��b����ғ���P�B>��,	]�Z�2vW�N��8ѵQ���~kg��3."�����QA�s,��c����%��Y}�4��b���ԕ�[k<�S�Op�6�qR��5I%�/��G��6�$>dhw�����}F�%�ڮ�\��V\�3��Ѐ#Ѐ���Bx���z�����k��P�[��߸*Y��K����=�`���"W%��t����S�����_��1��@tY����o��;���s���F'"�9.��-�G���e�K0}{�~��K\�o��2�A�U����=�2�+N��~rXY����v�m%�w
�ݗ�(�]ߛ��ߟNU��C/GJ�T_Ű��c>>�4}�'��3REyI|Vf���m ���-��)��S;9V]��38���[�6��%zFh�����f״6p}Y�qmp*�'��)�{x^A��mI}�FخQ�hRsR�C�-z֮in�i�[տ��/��d���V��̸��j�0��{D�ɼŜVNL�%��ܸ�^,��P�f�2�ps.�G{�ʾ43�oA0�Y8��/2�zW�h�1������N������ݱ��j�X�4dخ!#>�;��
�\�O����t���[�ҪV$�0Y��\igЍ���6J�9�a�z��Z� Je���;2�Ҹ,����J��kJ��ɚ���I�}S��0e���ʵ��6D�U��a}�i�j��j�w�C(RM���$(Y��tV���ۤxcP�W��Q5��#Ֆ/̄�PX2���M6���R�֓�����SB{�!i��^�zV����֠����B�J饯����V��vb���x}��mT��4	*ўN���?*����AY��*0�U<�ԂZ�	�6u�Jh�M���@���2���H� �X��u���]
Ϊ-�,�������s���Fe8��q��c�:7Pk�mk�'��63e=k��7��w���`'�7E�rtw�a�O��m*{�&�N�wRf�֗�r5�l�R�V���@��[�#�TS5K�m�����o
d�fw��W�y&s�����ֱЋ��+����&���Dd�Mj[���bm��ԡ>\��2�6vTSPaN[����I��*���R�Wcv�3���+�,DH��,\Eg���0��hYAc�+7�:��`�j�,7�j��:��e�8Uʥ�mՍ���6�~�`[_W�ÓV�W���:�N�����:��$hR6��k�Z�y��iY��0�6�K�����B����ASO�)�j6�����ྣ���\��͖�_i���o�G��=�|i/�q�:�hw�4�U#�����q'�ʤ���Y����TT�7�`F�m��}��g|��&�ެ/Ei���R{4��J$���o��
M��R���+�h(�rm��!P-Lhm���*Fe��㬮��ѽ�0�45}UI��)(P5rDmա���J��Jtuʮ~��X_�WeT�
��Ur\[�P���\� ��+�D�V�
ؾc��J�RA2n�Y̐l�>܀N�Vf�\iA~Ŋ����"�Ug�#��@��J˾��-��P��ʘv^�}��8߶�u�ړz��
@��i	�����TiGc�[8�@'��L�]L\�,�`�̶r�E;�D�S��l`;TL�!R�qm���D�
.��&��%Y�z+m��B'R���mJa�Y��d���ƭ3hqLs�a�ً�+f���ּ�S{�-q���/-W����id����.R�#Y֬���vH������kj�1�m�i/��;��~:���M��$�����n��l�����A�:���7���.�k:�TT� vz��܅R�8H�*��
�^�[ê�%�eSR;&�|l�f�v��N�M�(#y���G`g�,���:k�(�Jw>QL�t��r�6@�r�
�e	 �\��D���:&bU�:����k�@RxHݲF����`�f����֘���9��UJ��-Z�%]Z�Ɲ$�oC��k���F
la/�Y ��ຈ�q�T��u6&*[s]�T4�N墂Z�!����#�d�M�׺
�9�=�I��{�
� ɬX���=��m�l��?��2���aث�鲶��e���i��/��&�4�o�]�ܖ PB�}˺Rљ	
��i�W�]D�6���I��y�"Z��ȹ��>*���[�vLT)�����^����F����9�cw������iI!_o�8�r��ex�r�S���XsX��%��Dwiדu�kQ��/u���X��*�٤�����ĸ��gl��#uDw�֛4ۋ%Qڢ/�D����W��6��,מR_1Z;q%Z��^�r��,H��bY�C}]f�+�;e��_w���Յ���#�P�S�)�=��40TOD#�w��6ߡ$�GO� �ic�$M�UBߪ���~G|j6li�\���k��d��S�Q�ӏp2��Q���J-��C��n���
u��v�W[���jC$jV��)���@m+�Ei����Xc��҅��]�#������ن�d��p%&h8l]͞��j��-f�Z��Lsh�S1̺+�J�ym�K��u���i�v���הq�q��;S�^�U-����:��
u�=�5'2�h� +�)���A� -��J;��G�K�ߖh�}���9����uFr�]�mus�"nS�V��2��+���/��ϣV���EW�1����7�(h+g7(�׉qպ�%��Q�Yϩ�h�w�v�ś:H�u~���(/;��tRa���[1睜\�R�Jϼظ�8X�o
Z����ɹJ7�J����t+SS�B�.i��K���S�������e�~�����Ӹz���F���E�ÝN&�]A=�y�6�f����K��c��Դu'�`�ѡ)����"�(������
0���,-(�(�Z� ƴ���R��"V*W���[9 N/�4�u&凷�%�W'�c���H{�H��Hi�з4E֜�Piڮ����ab���^��6��OLgD�][��JO-���-��r�ԲoU�L�'': ;z&m?�r�����Pw5'PWq��l3omlFr�R��J*6��}G�.�\�m8��JMB��G\Y��UK �@��֩�-������z�����`s4�8UWI�̶T+E����!;�˂��+�RV�`��lG@�p�]8���j��k�;:�N���;�,�>�������oF�2�E��5R&�J�Ĺj����=W΢	�]���ys�^�"��D��ưy�~��$^�A)�O�y�$�p^���{���!Қ\�FC�M�ZY�U���iUH1武���޵��C�����������l����ܕ�\&���R�Z��K���i��jTCЮJ��_��=~NQ�|�ǈ�
+P���#'wb�L��0�M_�mV�ߏ�w�������F)(EiQ����(��Y��3·��EN�jB���P������8i�-����gi��Βx��,R�Mԯ��'B_��>�*	��j��(E
��k��lv��&db��Q��xO�W��7^��)O<a�S���Ϊ���N�jƯ���d{�4��WIB<BD�Y���'��6\�2�G�+��~�S�t*�j���v{�Be�Wu�����+��-�9�5��^�q�gk�IS����:=�Ac����Z���!c�
kt�uY��DW����*n�@�K�`$�kRx�T&�r$G�<��*Y�&�z�Fx+z�F�
�a���*��e�:-�5I�r\��z�!M�:�D���.���f���Zho
Z������"�����gD"تRSec�m�QN|���E�̔�A�0i�L}E�{\�-vG"�G�H�^�`�ڕ.�N����Ư�B�Ӱ���Y����~x��O�Mj��|o���_������ra"d�1����}]�
v��`�#���"�hPJ�-m����4o��`�S�L����]�Ky��|�,�0m[�k`�ӗhB���m{.m�M�i��pa�꤃W� X��SG庳Z�x�t��2�,?E��޾�z�J�EKM���5އ�T�~���I:(�״'����_�����d�X奦Dr1�[W���%�w�i_{���}]bM]C&�� �5�4o��V�b�Jxb�)J!U�@���ER�Wn`L��L+�	Z+Kt�ͿV㋿(�|�`���(�(Lz���gZ��r�ͺ-��ZY�FV�:IJ�7Q��V��e��_�b"�TE���s�C�N�����RX��\XBͻz�`#�Ҡ�v<���@�_�Ny���Pz�ou�ҷ0G&���~ʴ\Z*m�S1z�/r�Nȕi�T]����lH]./��Γ�?�������������ZO��t�K>�.���DC�ˢ��gy�W��U��k���h-!�K� ڍk��(�O���|M$�9�\S���N������)�v.��΃*Rk�R����i����'�&�`.������$�_[�i#L�b�FMqo=BG�t��$6v0 �~��va��BUg�.�zy���(�Q����v㪆�9Wu��`Y/\-�����^o�Tĥ-�!E렣��")J��5���Ƈ�(yl�s%�:��l�x��$���\B��Ӭ�}��&:���_�h.0r�1I_[�E��k�̐�ѩ��hY��D�����Z�I�ڡ�+M'(UE �{5'kN�f���jY�~}���g��t ����"�.��J���J���{{�$J�s���Z*�J�~�����a�"d��Dyġ"�s�.����9���Lg%|�s4�Rm�dZ<�,�Z9� �\ђMR�x�8թJ�:��dK�V`�t�H�V��R�u}ַ�܋Mt*��:D�\UZ�Z�JͪtJG�`J'�A�]��T�y:˪dł�Z�K��:/��,���f{���rU����wf V��A�ਗ���Z�v���Cʒ�/�1CV��T�(���ki_��\`P��d�NY�-Ÿ�!��*��RRT -M+0A��v�N�va��I9F�z�	��Q�+�����pj,�vi�>ǠX_ʈŻ���� ��&FTo`�4#�SkM"�Ewi�p�^���d�ۋv�ٯ.~��p}��Ո_Q����{��P;�)e_ꎣ�l{��*��u%��iW�թ��ՋK31���`5R#�LP��21�U�}_+d!4i[�n~/��o���RHEP:Y6vi6$�r�8u�'�咶��)�k�����:�5շ�a&���pD��-��W��,w1o�:ݵ�I&f��BO�ݬ�U�%�ÛeS/�Y!������D�vN_����1ͼ{��a�:�����ZyXT��z��'���JJ �;Jy=5���VG�q��:����RWWIQ�l��}fg��u�:�V�:3�e}�Ts��W>B���6TRv���m-4%�˼�%���h�!^�z��K��dJ���:ZØ����{0�5���8�����.��7X����%SW>������نs����kW��Uu���?��0�F�b8�[���8y���z��&U(��22޾5����ݥNo��$)9��E>�&T��k���Z�#��w����yվr���5y4�h���R
	����7a$��R�_U�_J�$OjLx<Y+kь}:�\cj�ΦS�H�H�iNy3?`�13-��ol�U��-+.75o��5�/<���Zs0k��u�^��V�i���r9𘈵-RRJ,�N[ǌ
�Lw��a��l���.Jղv��`�k�Zk��?�c�*M�hc|���'00�n��O��L� %�3�׉2�L����^��Bؼ�(�Yd{SM��j�8��&7Mg�A�>==~.,�}�\��e�~��)EA;�PD3����P�'�'R�vա�:�=��i�V/Ü^ӯؿ�����C�Kb�l����zT�η̖�&�{q��b�2˙xͩ��"���y1�*�`N8H^\U�6��X"��v��,3}�O�!�|so�9�J���<R�M�r��C�sQ���)�q]�D�vUGTp��{?5tRO�ǖ�XV+�dX���0�KTD6[��J=��3�8�DjМ_�-Km�[0[zMD�T��͕�-��&�β-o����cU`B��H����W���A��o��X�����ʵ�qU��4|'�
�h: ,��e@����&g��k�[,��X�C�:ٌV�(Wt���._����il�Y�U�Fu;��6%IS�7�,3�Qϩ߸|���ړJ/`Ğ{x�DQ��R����Z�O�6�k�\����nW,Ѵ�\��Θ+zn2��E8�n�@O��Gn�^�iU���xAL�d=6�7I�ga]TC��l��X�ޤ^�pˆ$J��������*ɦ3_D�#�2ו�q�;�v�6-�p���B�l	.���~�������";�JVK%��R�9��`ִ�"eΘ%|����T���7�/��O��k)��Mj���ܭ��M�����5pmpi���raB�i5��.��o+�%�7.���!i#��W�������;��������:��W�柮��2ء���E!h�l��ӵ| ��i���\r�X)�2���GXݶ^�(9y����Y�]6bb�Y�����6.'j�
�E<$��S$N�K�� (��W��@�M},g7��M��l0���20k^7N���Ka�?x4�鸽}����@�Z����l�A̵҅h� 
��_񖺥��=�}&�:JkI,����r�:4��k��MI���(�c�X+��Bn��"љI�$�z�֒xרd�4Ʃ�Q���������-J���|%�_�%��5b9�["����q+��m9����%��Moo:t���l��J8�D��p�&$���S�����G"�N�B��ky�4	h��}��u�V�<b��=Ԧ�TiŔG(!�2�#z��FCw�Қ.{��od,ޢ�9���oM���8�6|�֛���J�-E������,�o��:KY�0C����k�|	��_�M�faA��[��i�j��ZD������Vc��jǛ��f�$�ک)Ȑe*�~6�� ��%��6��F(|��,��H��p)��/�%�%~�EJ�W7���*�o5
��)٥��$�G@���]Td����J���d��+��t�Vɰ��<��)ݸ�r�NfL���I�iI�+ǘu�a��?�I�4��+��2�:�u�XŴ_QL/}M�@t���4�E5#9Wڋ��t�`�����-� ZH����kc�]A����a(_qB���g5ߵB>q̗��`��5!J_�H�e�,�m���lCE2VI-1�j]IluL��U_���t��iR�K��D���Q(��0�+�3d�V�N�[����� �fS�A�6{N�w��Um�j�tcH��d;�Aݵ�^X�Ԃj�M�QQ���@�@m��D_,-���M`�,�T|��Um2��k��dAB�˙^��Dژ+���Xf��#9	)[E��f��ں��H�y�����Y(r	���@*4���Z�'tr=�Oz�`2N�[|[�((���1���W.yq�Z�V��.��]�4�u����5�'��6뾯��a\����M�M#J����Uz�9\�����;jN�.�+i_#)/�|�5w%����QP�\U|b�~��r�Vc���6%Sg����k�:Y�f�/(�����8��5���4-����,M�M��*�ZM�P�/�lY��w-����W�����Ktj��>61W�!�X���kU�&8:�thiG�l��o��F=��m۠/�:�#�N�Ȏ3��!�.��.nϧ5I@Q���窺���>�vK�+�P��6sFM5�����f��Lg�s-���yO3����#[���TC������[M��E�6]r���5��:�Lh�B���Z�kZ����ka��Ӫ��oR����4h'W�6fc	�8	��l�y�:���Z&���Z�x1�8P��oZd�k�[�+Ps�ޚg�{;��:��_�~K��h
#��P"~��0�o]�|�Q)���(��Wd��觱���Ŭޣ���+�����4���2��_<��
� V�
D^>���KpBRt#�(�مz�H1+�m�"��h��n�3'��|���v�+q}-`q�W���M}�bIMY(l�u+Н��{��	x8���k1���Ϭ�h^!6��F�d��i���Vp^�����s�Б�ѐZT�R���� �Am�q��$d��Wo"��}���F@k��`�=��J <c�|_2U�3֐)m�ދL2nk���&��$8����}�L�*:$�Y��&�S�K]Ug%8´_+���̄3J�=u�����_���"��6xiʑI��r_%
�=�-��V��#��Z�(
d��K��K�6�ځyu�
%u@��Y/����52�s�g�6h�s|��[~���.���fm�����DL��?q[D�I�92#��3�0&+�50l�;��J2"l�S'�V�n=�R*�Ƈ��<��UR �W��3Hg����ZktR�B�^U�r���%S��s���D�-�
����')�E����f����y�R�6�xД��V.�t�r�D�p�4p�"�
��f�E4�0=[�տR3�i��n_����1����"|��; m��l�ӓJ��ڵQ�nfuw��-� r��
�W|�#�xӀV�Q_K٩�j����f�a�o�Z�KP/�N�0�k[Ђal����(CQy�A�/�*>���<�vz��xN�׸,�]���:�F��yGx��(]A������jT +�]��ۄ�%����%��+	B��5U����QsW���\��c����ͩ�k�T�|��>��CC����Z-Z�2>%�Xs��w�]ˎ �D����U��G)܀)�D�~uiR�qU��]�Կ���p��Ќ&��r��2��z��.���^H�~\
=^���*yE��wU#C��P�3J����`(�F��x�Fee�ㄑ��d8�[bCA^���;�j��m_/[9����[��[)[��to��%[e�,ٜd�h���J3�`�*l����J���2ޝ�`��Bv���ʕ�~���j�ǥ��NkY�BT�Uq��F��=�9݋���5�;��銧���|_!��4k���;��}�M����2Nnz� ̦-��v�����
�;�TBQ�ژ&� :��O��e!if�Ji�LW���i�9�i.�+n�9O���IC�W5oA�v�^�l"J�e;Gl����B�R�����,�OY��6�q�>t'�P���*'���v:�I��q���](i=b�K���k%>eSy@6R�g����u�@%)���T��&}R�����X=!�&~6Jd5\Q�N`�:b�ʁ�Z���X�>���a�����6�J���bYU�	_E'�{��#��/J���_#Ei�#e�)X|�H�L2�ک.\_�m�;��W���3�SM�-�`a@����h�(i_G,�k�;�#TgO��'���bC�ů@��R�ܯQ�d����8�0=e��O7؛�j�TZ��[��&m�R'�I\�O�tl7�¤��M�淠eˁn*q<1���M�����W�=�ZE�_˪tY����j$u��sG���Xb��+��R���6��0ˋ M�ғBs�Va�yo�eޜ�S���Amu���DcR������Q���k���<�p� ����Eq�WI�j"n�d�Z���D֏q�S��se<�7�\��3_�������B��I��}vj��<kN���v�m@��-���5/����^`�����ƺ��J�T���߽V��m�7�>�[*���ļ�ג��&���\I���F���9��-�$��ëZ)v�$+a|�D^$M	����]-�y��b��]�u|뢫�¼2S���0���c<p��+�gO�M 7�z�Z%U	��
f �&�(K�'�� �f[���V½s3�U���ד��j�J�:�%�:�A�ƸK�稕���8�0Qd�T�	��n1h-�W�)q�߽���������[�9nU��z�8/��Kt;��b�UP�{8�]������0VO��H0ɏ����%p�΀�� X�H����D��U���m�ꥯ*Áq�r�F���h��׏|ŀ�I�Ns%�W	(���&t2��8LMYPi���Ii����
^B3捣�z�̊(i�M�Zh�,�g`J�-���ꄦ2jPB�]���}B0w�W����9I �<�0W��
�8~K-��(9)�x���׹�R�~I.�7Z�X_#�Y�]-�XNJvȬD��E�oY����m��E�%1ø��%����.k�y�}�7�W�/1�vϝ�kݭis�{�e<������(M�e�s64DS�נщ�Z%��M��
���>�Ѭ�2�,
�W3���|�Z,KT�_��-v7�eWٍ�k�D�q� �<���Ȅ9��N}:�#<׸����,K���������D]�*��[�q��v�Y�R��̂>��fC�>A��6]�/�_�[����@�6�B�;��,�O#�n5/���g�ռ:p���׻	_`�Nݽ��HS�����`m)Fxmt%��� �R�u�Z	�W���OO�a��wV1~lu)���c+Wӯ�i>^2@��Ƀ�4Is�{����#�g��-j���/��
�nޞq�Q��勺�.t�t�E��?����v������
��Η,b.#��"���	Z+�Uux�Q��t�����D��ie1���-�R����j"e�b&^`%��ԥ�(�!�㪺���� U�%�p�m�nqI�B�t	��1��g�Ç�~�\��:�d�!4���J���N�T��+�J�,����Re>���O�4Ԑ��`<Wx`G�A!�e�6���U*5�,5� �U�F%�g5{�s���,��]����:{��v����?���'y�ݶ���C+u���!a�z����ϸ�i���@�Co�/�yw8駁'v8��_O��7��$�ԄA����:��H����7�c���7�jn��z����G:��bS�5��	���{7�M8�����>���pz���>6����' 8�z 'LTDE��o�h~�cS���򞿅�5�˧\}���v��uŷA|��y0կm��k��SJ��v�eּ����������v�m�6�zz��6�D���G�=�����nH�~K�1=��'{�iw�F^�=���;���qq��3)�F�8�>�Pk�5�2'����[9�|��+�_���ǻ��k�צ�	��\~�:��ZM>�����Bзv��p�#��1&�Q�=|T=��62���3�A�>�����hw���b65������)���ݤ���'��o����X��:�ts�Hot��|��VD��~�,WM��_����������z�u����t�����Oo��੟������o�	���v)���k'ę��̣�u�rM�4N$�*��x����I�a�v��]sr8��e�-~O���y��ǧ�n\o�X���^�?�DCoQ=ʏ��
�}�J��p_�s���o��v<y��q��n��@.�;��݆�|��9��\�e�s�����Q�����^�4��c�u���s}ƿ���[k�3�z�݋���[i�����gbx��uy'v}z�_|�MJ̓��g�љ��8Vaw�J������W��Yɿy9~���>%�wV�M�d��߶ǯ������#�;�I�s�R����Z���{��^BEP����~�wH�g]��[�91u G��<��!L��{�D]{��4�ߢ�X��6�{���l�wĐ�|q�������/�����Avp}�|��;+?�p!h��mg̿���s��W��Ǩ���]����O�q���g�Y�wW��]�|�O�>�=D�`�[S���&\y�zH��������� �$��$���I���]�<�����:G��e���'H��G�'��V]q�S��_P�� ����2X9�8<�"@�Μ]��]�<�����o׆�IRs��|ƀ����~��R�9u�w~��g�������L���!C\����\�_�x��vy=�2�����x���[��kګ���r;�~����3�MN<���j%�e�N��~�w~�y�%���/�^۽�X��~�~�_kk�h+~/�3�P�u�\Q�4��@�����2"�B�.p��Kx�����64�v������F�/8��Ρ> �?��(i4���:�x�~���5�[������|�W5ߛ�w��s\�f=��T�|z�ב��?��<<���'`.*~^��k0��b�ۮ�����<cn��Ň�t�����.�^�ׇ��J�j1����׿u[�Q�����S��Vi���uֱ��"�-�Kf������u�AX!����ݷ��YĄ�oT���[��}k���柾َ�߁�����?�߻��T|w§�z�DQ)o��7"7�X�K�ܴ{ț��b7ۿ�՛P_p�C�m/��{�����vDt[�^+%�8�QJ~�ُ����Y�'~[1�Uuw�=�{|�~!�� ��-Iѕ)�-n[�����կ�rs��� i�z�!O���
~�f�e��7"�S�����5�|�OoNO��v��O�8>�:�u��!��#'o����;A�p/p�6�s�{�z���LxL��O8��Ӷ�߾�S�~����/.�Y�c9����Lw��!�?�&�?��.��|�C����c;n7��o#�:��:�ʶ��������A�G��j����I�W^>�R�+T$���b)V(2��^wW�^�}�2Y�%�W+)�E��Ư�s���z���,��O���+G�^��:=3�fjg��i��v��&��.���k�w���vw�R�m(�hw� �<�#���}ʂ����D�H�M�w�cK��0�Hޘf[��{�Z��}�j�0�p���mƪ�2��4냶�C?�ɔ���?i����9�x��*�����_w�D���r�����\�]ot{U��ɏ0�&|����^X�Ģ9C9ҏ�x�}M��ː����+�>p�X��G��)74G�y�@��S�GDϔΓ��`�a�GC�N`=$+���Y�ڪ%.e��?��j����G�]����`"����gƁ���ɗ=��rX�cK�7D�Ա��޻B{��<-�/��paBY�
�>g�+�BuVӂU�` �Y]3���$�U[�.V�����aǶ�Y��Ɋz�Ya�M����l�5�V��XRnVVP���I�35�)�|�RW<0�P��V��(�֞��U�~;Ja��
Y9�����*�"
p�*������A+]�C#5��-=��@B6:��Dȁr]+ʝ��2U�|�k=��`���ta?�D�Qm0���f�l�Ƃu?�MC��2�̬"[�1�fΊ�f��
�XYA����jZ�

=��������Q{fN( ��U�:f���^�'2{h���푛��"�Ű�O=�-}����Y%c��n�B�Y��l��՞E��m��:0pn�n�\����1�7�� �)�[��;�Q[�@�������Mqxi���+R��������ܻ�dUR�
ֱ˶2�r�..����=S�9k&��5���1��x¨��Q�f�q!�@���J�Ȧ��3�,֊l�v�rѕ��<����+gŚoTk�Z9_*k�V����Y��u\�W��r x�ZX���{։�B#�1͌5']V����@K����.-	N�d��YYF4��3�fC��V��gdM�s�-6�ٍ쫂�Z��<�4���9ڱT��V+H��͕d �BQ�t-X��3�K��n�% 1��'D���pE�=�uYb!�
�B�Y���{x�~&k�Y�J��P�]ny�󆝟�9����*3:���p���z'�ԕX.U�)��*g1���l,��.�L]Nc���ʤ����l��AV��2� ��Q����v���`�NuĂ����P�[�����n��*T�z%�oC�>HuH0�9�Ag�X�"���3X�Z������3��su�U�k���ĥ��d�L]�z9+����d�2�y�=m���k:�1c՘uV��B�	G�����`-�55%k��$��TU����5�i�u]���OF%�%+0� Jи���.��5aԙБ����T��54�D��`�!-*��F�=�$�ޱLgm��f�
a?���YG(=nk�iu����p�T��à��Q�Thu�V��JDBQ����,�g��p�|�ʋ�X��bU�q�&w��5�	��H�j6=����k��d�b�~�{B�4ӧ�D#0�5�*�\��gh次�>�a+������nӜ�H��즞��%+F1+G�Ʊ)�t���uh����=����:Jj
�L]�b�aU����Ki���lCPEKMǂ52�ȈJW,XU���Bz-/�J�l��ᕜ�uȱb�Y�}�=�&gf�Y{�	N�	�G>LX��%k-n�:��q	��>&�߅�X�
�!��\����tu�D!ev	��$��ڱ`M�I�j��	v��P�1g����t�p�];����d���k!W��4�1|^B�A��(k��Y��gY�ybVZk�X�<��F�G�!4��@q�p��^�s6���i�Jb��IV��R8
F�.P�����+KO�%W��Њu8J|Vr���6�����ӎ�}����R�:@�|����ZOT�;�;�z�L�$��kX�b�8+%**V��+`-��Kg�FԂ(�&�+̜��lB�kV�#+���p��J�su!k�ݚu�,X�Sj�:4�Lo�JV�LR=̖��K�a1����Н:GĪ��Z�Z�fU�gڐ����Rb{��I�A��Z�+50e:1[��V�L≉�d�P3h1��:�nk��Y��{�,�`� �!i����fZ�X&Ӓ+�׬}O�_�_+>o�cXݦp��@Pk���"�sVV���<��:&bN�E(
�>�Q���=4�:kjJ"�y׍b�Q�n��C{:k��ĬC�󳆵X��kA��H���B=�f[�,�R�:����/h����Ć�8��u�r�]a��+e��;�1%��������(j0�Ak���FЁ#����t�K2��]����Yg�B��HϢ$fݦ��jT��#�;Eι�&֡�B6X�_�5.��gjΥ��*Z�.�9�)��X4�:�w3h��~��c[�:��)���9k�Y��tQf,X�X��e�R�b�Р��Th�֊,X�!O}-V7(%��Q�3Y���炬�e�
��Jkd�'`���YI&���̋��Nu�*�gV5@�G�J�WD�|AK欙V�H�g:!�g`E�q"Z�o�cYi�¬Ո뺇O�2�au:uǀ	bJK(���d�I�ɚyF�j�$��u|<�Þ�u��_>kXY#�*9?k�Y�Z�����M�|i� \�5+�c�dEP�eL�d�Uo��Khb���ջ�P�7��Axm���B�{��X���$=�b�9+1�c�,��*1. ���vr�#�n����5c	�%J.}�Z������|9�q����.B&��lXY���l�b(���'N�h(0�%��Z�=uM�p �=>o+�ڍi�f��n�U���c��5���0k��X�N���*B�H�1X�ױ�..U9�V��K+M�	� &��b-ך5�#+�gAe�YG�d��YS6X�Z,K,��/�(�<E��c/m�&�+ׂ�*���&��?��	.i��?�b�Y/����F��z����Ȍ1�zYd"�-�a�ƊU8�%J�����O̖d5lo��"��ҳHsmz��}p���l�e���.ܒ��qËҚM��"�cc\I�^�ɪy�2�01�:ک�"kam�Auͺ\�_�6���B=�@�2��zX�	�i̜	Yh�R� KQ8��hD�0�q�f푁���E/qw̖kPaȢ�CQ �&*]=���6�\IRj�>��W��k<�5�za�t9P�.�RW"��|6i⁦kV�3V&����rVQ�U)��*��9+�d]@�fl�v�j�y2V�v�o�XYD�%+ӥ�$�!���P�6N���%�AX+V�^n�����L��Ys��q>Vy�B򳨝ԙ��Na��=Q�r� �c�:�8�57{��X���9����+V��L��N�`����Y�2�fX�g�5���`C�d8-V�Ud(=V�%�v����h���	�5k+X�U�dUU����da92-���b�dG�>�r�b�3�=��J�bUuf�B��g5�f��$�d���Y��{�Ӹ�RRR��\V#k�yW:���+�`�]!zd�pDk�hd��Aw�c`e��rcV#��5k���!%pl�j ����Jy+���*X���C��
�uD�ؑU��D%���`�P{#\(͎g5�Ͷ����L�R3ܬ�2�������J������+�:N�5=\�:4����mE|�5�=�Ɯ��t�ǀB!O�b�5ԤݞM�Z���;b֬�Y���S��M	�sVV����܄�fM�Y�d��t�ajw[��3nȺ��嘳�ker�Ċ��� �v+YamzD�ۭk���d�Å=�=�(α`�^r*+5��ճ(�j��jX�R���f���+P����G�*pVjD-Y��l��l��=�j6��l*���%!CHL&t�rϢ�cL��kb�4�f�t(HW�
�ҹ���XB�i[�wƀE`����ʊ҃��5�Y��	^Q�!a`Cުf�Y�)k�f5pd�l��HP��*�HX2o�_\��X���ԓ5�s)��j�e�VY����^��-�y\yw����O8Ɨ���کj�wV $�0+�m�j�\�`e�+R�Q��ǀ�*"&ꨄY/��)Y�7�3�a�������O�J&r2
V�h��و��0�:��r
k�4�0[R�䱫�9k��
$*�U��L1�f�Y�cǓ�q��%*Y]��U���QG�j6%�LV�g�*�E^�*錵cg��ܫS�k��f����Z�zסn�P�z��=��=,�L�1":k0�So�0=S���zY�F����hg�^��a�Y�(!)����2z F��Y�ˬ	�q���.X*t�uF�y[�)j������T�ٴ�U|��L�/�:]�h���m@kz���q���t���64VAVY�0�/�V=��Yi�^��2kV
�ɢ�������1g�au��=��\��S:�*i	�X��<Qɪ����Y�e�Z�&򞃕ҳx�%��QT༬�:k�L�Cz�^b(WW��o\]�Y;����*)�sV��˚��Jg�bJ#JR���g��|�atd�ƀ�i�����I�<6�X�g*1uV��,%kq��H�}tDԔ��Kt(��#�P��L��`�z��5f�������;io�A9���9+��X�_�!��l��s��-� KIͶ��]�F9KV)L;�fK�5�t�����q���ˁR�r6�ǳIn��붊屬��+�b���u����*��/�p;�� �X�NVYsV$V��
&-Ϧe[�-r	JV9�UIV5��k(����k5]���09��h[h�qe�e���F�� m�>挮�4`M5�����:���V��d��6�X���#�!�ڣ$T���$7󕃮 |l+Ys9p� �j+ul��V����J���.b�$sγXbg�Gu_����f%�XQ��f�a䘷5YM����f�� +s��{X�L�u�~p� �Qm���٩���GU�Kjfʳ5�`Q��[}>����B�p����j����(V�����)ۺ�9���~�b�q��R�s��P�
س�MU,
"G��&T�T*-�)���(��j�+�ȕ�b��7f�N���J�N
���r!x
+]���ض2��V���Vjt�Y��K`E���=L�p-�S.YY�MVF���vH���L�-Yh	gm�nj��{S���H�<]�Ήe[��(��?����OHDR�$                                    vW     S          +         �                   �
                   ������������������������E         _Netcdf4Coordinates                               D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           \        DIMENSION_LIST                              �     �      �     �       ��4�FHDB X�        ]\VT       systemwide_capacity_factor�{
     U       systemwide_levelised_cost�
     V       total_levelised_costޙ
     �       timestep_resolutionqS     �       timestep_weights��     �       
energy_eff��     �       energy_ramping��     �       energy_cap_per_storage_cap_max��     �       storage_initial��     �       energy_cap_max��     �       energy_prod��     �       resource_units�     �       lifetime(                            TREE  �����������������                               .�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OHDR4                                                  $�
     S          +         �                   ��
                      ������������������������I         _Netcdf4Coordinates                                  D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           l        DIMENSION_LIST                              �     �      �     �      �     �       �}&OCHK    ��     `      �     0   REFERENCE_LIST 6     dataset        dimension                         �            d�            2Q            YW            �j6`            �
            ޙ
            '�N9OCHK    ?      @ 4 4�  +        _Netcdf4Dimid                �e   d�             �
            �s`"TREE  �����������������                                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         OHDR�$                                    7u     S          +         �                   ћ
                   ������������������������E         _Netcdf4Coordinates                              D        _FillValue  ?      @ 4 4�                      �7    
    is_result                           \        DIMENSION_LIST                              �     �      �            I��TREE  ����������������                               ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OCHK    ��             +        _Netcdf4Dimid                n��!OCHK    �+     �       +        _Netcdf4Dimid                  j(�OCHK     �
     �      O        NAME    5      loc_tech_carriers_carrier_consumption_max_constraint j�:   �
     \      �
     [   )   �
     Z   $   �
     X   )   �
     Y      �
     S   $   �
     T      �
     U   )   �
     V   )   �
     W   )   �
     J   %   �
     K   )   �
     L   $   �
     M   %   �
     N      �
     O      �
     P      �
     Q   %   �
     R   $   �
     7      �
     8   )   �
     9   %   �
     :   )   �
     ;   )   �
     <   %   �
     =   )   �
     >   )   �
     ?   )   �
     @      �
     A   $   �
     B   )   �
     C   %   �
     D   )   �
     E   )   �
     F      �
     G   %   �
     H      �
     I   $   �
        $   �
           �
        $   �
           �
           �
           �
        %   �
        )   �
           �
           �
        $   �
        )   �
        )   �
        )   �
        $   �
         %   �
     !   )   �
     "   $   �
     #      �
     $      �
     %   )   �
     &      �
     '   )   �
     (   %   �
     )      �
     *   )   �
     +   %   �
     ,   )   �
     -   )   �
     .      �
     /      �
     0      �
     1   %   �
     2   $   �
     3   )   �
     4   )   �
     5   )   �
     6   GCOL                                                                                                                                   	               
                                                                                                                $       NL32::hydrogen_to_power::electricity           $       NL23::hydrogen_to_power::electricity                  NL11::curtailment::electricity         $       NL22::hydrogen_to_power::electricity                  NL13::battery::electricity                    NL23::battery::electricity                    NL42::battery::electricity             %       NL42::demand_electricity::electricity          )       NL23::hvac_transmission:NL32::electricity                     NL41::curtailment::electricity                NL21::curtailment::electricity         $       NL12::hydrogen_to_power::electricity           )       NL32::hvac_transmission:NL23::electricity              )       NL22::hvac_transmission:NL21::electricity              )       NL12::hvac_transmission:NL23::electricity               $       NL13::hydrogen_to_power::electricity    !       %       NL41::demand_electricity::electricity   "       )       NL41::hvac_transmission:NL22::electricity       #       $       NL41::hydrogen_to_power::electricity    $              NL23::curtailment::electricity  %              NL22::curtailment::electricity  &       )       NL11::hvac_transmission:NL13::electricity       '              NL13::curtailment::electricity  (       )       NL23::hvac_transmission:NL21::electricity       )       %       NL33::demand_electricity::electricity   *              NL11::battery::electricity      +       )       NL13::hvac_transmission:NL11::electricity       ,       %       NL23::demand_electricity::electricity   -       )       NL33::hvac_transmission:NL32::electricity       .       )       NL41::hvac_transmission:NL42::electricity       /              NL42::curtailment::electricity  0              NL33::battery::electricity      1              NL41::battery::electricity      2       %       NL12::demand_electricity::electricity   3       $       NL34::hydrogen_to_power::electricity    4       )       NL31::hvac_transmission:NL33::electricity       5       )       NL12::hvac_transmission:NL11::electricity       6       )       NL22::hvac_transmission:NL41::electricity       7       $       NL21::hydrogen_to_power::electricity    8              NL31::battery::electricity      9       )       NL21::hvac_transmission:NL13::electricity       :       %       NL31::demand_electricity::electricity   ;       )       NL32::hvac_transmission:NL31::electricity       <       )       NL31::hvac_transmission:NL32::electricity       =       %       NL22::demand_electricity::electricity   >       )       NL42::hvac_transmission:NL41::electricity       ?       )       NL21::hvac_transmission:NL23::electricity       @       )       NL11::hvac_transmission:NL12::electricity       A              NL32::battery::electricity      B       $       NL31::hydrogen_to_power::electricity    C       )       NL13::hvac_transmission:NL21::electricity       D       %       NL34::demand_electricity::electricity   E       )       NL23::hvac_transmission:NL12::electricity       F       )       NL41::hvac_transmission:NL34::electricity       G              NL31::curtailment::electricity  H       %       NL32::demand_electricity::electricity   I              NL34::curtailment::electricity  J       )       NL21::hvac_transmission:NL22::electricity       K       %       NL11::demand_electricity::electricity   L       )       NL33::hvac_transmission:NL41::electricity       M       $       NL11::hydrogen_to_power::electricity    N       %       NL21::demand_electricity::electricity   O              NL33::curtailment::electricity  P              NL22::battery::electricity      Q              NL12::curtailment::electricity  R       %       NL13::demand_electricity::electricity   S              NL34::battery::electricity      T       $       NL33::hydrogen_to_power::electricity    U              NL21::battery::electricity      V       )       NL33::hvac_transmission:NL31::electricity       W       )       NL34::hvac_transmission:NL41::electricity       X       $       NL42::hydrogen_to_power::electricity    Y       )       NL41::hvac_transmission:NL33::electricity       Z       )       NL32::hvac_transmission:NL33::electricity       [              NL12::battery::electricity      \              NL32::curtailment::electricity  ]               ^               _               `               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL21::battery::electricity      �              NL42::ccgt::electricity �       )       NL21::hvac_transmission:NL22::electricity       �       )       NL33::hvac_transmission:NL41::electricity       �       $       NL11::hydrogen_to_power::electricity    �              NL13::lost_load::electricity    �              NL34::pv_rooftop::electricity   �              NL22::battery::electricity      �       $       NL21::hydrogen_to_power::electricity    �              NL12::wind_onshore::electricity �       )       NL31::hvac_transmission:NL32::electricity       �              NL31::wind_onshore::electricity �              NL32::wind_onshore::electricity �              NL11::lost_load::electricity    �               NL12::wind_offshore::electricity�              NL11::wind_onshore::electricity �              NL22::wind_onshore::electricity �              NL33::wind_onshore::electricity �              NL12::lost_load::electricity    �              NL21::lost_load::electricity    �               NL11::wind_offshore::electricity�              NL21::wind_onshore::electricity �              NL23::lost_load::electricity    �       )       NL32::hvac_transmission:NL23::electricity       �              NL22::ccgt::electricity �              NL41::wind_onshore::electricity �       )       NL41::hvac_transmission:NL34::electricity       �       )       NL33::hvac_transmission:NL32::electricity       �              NL22::pv_farm::electricity      �       $       NL34::hydrogen_to_power::electricity    �              NL34::lost_load::electricity    �              NL31::pv_rooftop::electricity   �              NL23::pv_farm::electricity      �              NL21::battery           OCHK    T�
     `      N        NAME    4      loc_tech_carriers_carrier_production_max_constraint >�eA   ��
     U   )   ��
     T      ��
     R      ��
     S   )   ��
     N       ��
     O      ��
     P   )   ��
     Q      ��
     G      ��
     H      ��
     I      ��
     J      ��
     K   )   ��
     L   $   ��
     M      ��
     8      ��
     9      ��
     :      ��
     ;      ��
     <   )   ��
     =      ��
     >   )   ��
     ?   $   ��
     @      ��
     A   $   ��
     B   )   ��
     C      ��
     D      ��
     E      ��
     F   )   ��
        )   ��
           ��
           ��
           ��
           ��
            ��
     !      ��
     "   )   ��
     #      ��
     $   )   ��
     %      ��
     &      ��
     '      ��
     (   )   ��
     )       ��
     *      ��
     +      ��
     ,      ��
     -      ��
     .   )   ��
     /      ��
     0      ��
     1   )   ��
     2       ��
     3      ��
     4      ��
     5   $   ��
     6   $   ��
     7      �
     �      �
     �   )   �
     �   )   �
     �   $   �
     �      �
     �      �
     �      �
     �   $   �
     �      �
     �   )   �
     �      �
     �      �
     �      �
     �       �
     �      �
     �      �
     �      �
     �      �
     �      �
     �       �
     �      �
     �      �
     �   )   �
     �      �
     �      �
     �   )   �
     �   )   �
     �      �
     �   $   �
     �      �
     �      �
     �      �
     �   )   ��
        )   ��
           ��
            ��
        )   ��
        )   ��
           ��
           ��
        $   ��
     	      ��
     
   $   ��
           ��
           ��
        $   ��
           ��
           ��
           ��
        )   ��
        $   ��
           ��
        )   ��
           ��
        )   ��
           ��
        )   ��
           ��
        GCOL                  )       NL41::hvac_transmission:NL33::electricity              )       NL34::hvac_transmission:NL41::electricity                     NL34::wind_onshore::electricity                NL33::wind_offshore::electricity       )       NL32::hvac_transmission:NL31::electricity              )       NL42::hvac_transmission:NL41::electricity                     NL31::ccgt::electricity               NL41::pv_rooftop::electricity   	       $       NL31::hydrogen_to_power::electricity    
              NL23::pv_rooftop::electricity          $       NL32::hydrogen_to_power::electricity                  NL42::wind_onshore::electricity               NL22::pv_rooftop::electricity          $       NL22::hydrogen_to_power::electricity                  NL23::battery::electricity                    NL32::lost_load::electricity                  NL21::pv_rooftop::electricity          )       NL23::hvac_transmission:NL32::electricity              $       NL12::hydrogen_to_power::electricity                  NL13::ccgt::electricity        )       NL41::hvac_transmission:NL22::electricity                     NL33::ccgt::electricity        )       NL23::hvac_transmission:NL21::electricity                     NL11::battery::electricity             )       NL41::hvac_transmission:NL42::electricity                     NL41::battery::electricity             )       NL12::hvac_transmission:NL11::electricity              )       NL22::hvac_transmission:NL41::electricity                     NL13::pv_rooftop::electricity                 NL33::lost_load::electricity                  NL34::battery::electricity                     NL42::lost_load::electricity    !              NL31::pv_farm::electricity      "              NL42::pv_farm::electricity      #       )       NL21::hvac_transmission:NL23::electricity       $              NL41::pv_farm::electricity      %       )       NL11::hvac_transmission:NL12::electricity       &              NL23::ccgt::electricity '              NL11::pv_farm::electricity      (              NL32::ccgt::electricity )       )       NL13::hvac_transmission:NL21::electricity       *               NL32::wind_offshore::electricity+              NL41::lost_load::electricity    ,              NL33::pv_rooftop::electricity   -              NL12::pv_rooftop::electricity   .              NL32::pv_rooftop::electricity   /       )       NL13::hvac_transmission:NL11::electricity       0              NL32::pv_farm::electricity      1              NL11::ccgt::electricity 2       )       NL31::hvac_transmission:NL33::electricity       3               NL34::wind_offshore::electricity4              NL13::pv_farm::electricity      5              NL12::battery::electricity      6       $       NL42::hydrogen_to_power::electricity    7       $       NL33::hydrogen_to_power::electricity    8              NL21::ccgt::electricity 9              NL41::ccgt::electricity :              NL13::battery::electricity      ;              NL23::wind_onshore::electricity <              NL42::battery::electricity      =       )       NL22::hvac_transmission:NL21::electricity       >              NL11::pv_rooftop::electricity   ?       )       NL12::hvac_transmission:NL23::electricity       @       $       NL13::hydrogen_to_power::electricity    A              NL34::pv_farm::electricity      B       $       NL41::hydrogen_to_power::electricity    C       )       NL11::hvac_transmission:NL13::electricity       D              NL31::lost_load::electricity    E              NL22::lost_load::electricity    F              NL33::battery::electricity      G              NL12::pv_farm::electricity      H              NL12::ccgt::electricity I              NL32::battery::electricity      J              NL33::pv_farm::electricity      K              NL13::wind_onshore::electricity L       )       NL23::hvac_transmission:NL12::electricity       M       $       NL23::hydrogen_to_power::electricity    N       )       NL33::hvac_transmission:NL31::electricity       O               NL23::wind_offshore::electricityP              NL31::battery::electricity      Q       )       NL21::hvac_transmission:NL13::electricity       R              NL42::pv_rooftop::electricity   S              NL34::ccgt::electricity T       )       NL32::hvac_transmission:NL33::electricity       U              NL21::pv_farm::electricity      V               W               X               Y               Z               [               \               ]               ^               _               `               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o              NL11::curtailment::electricity  p       %       NL42::demand_electricity::electricity   q              NL41::curtailment::electricity  r              NL21::curtailment::electricity  s       %       NL41::demand_electricity::electricity   t              NL23::curtailment::electricity  u              NL22::curtailment::electricity  v              NL13::curtailment::electricity  w       %       NL23::demand_electricity::electricity   x       %       NL33::demand_electricity::electricity   y              NL42::curtailment::electricity  z       %       NL12::demand_electricity::electricity   {       %       NL31::demand_electricity::electricity   |       %       NL22::demand_electricity::electricity   }       %       NL34::demand_electricity::electricity   ~              NL31::curtailment::electricity         %       NL32::demand_electricity::electricity   �              NL34::curtailment::electricity  �              NL33::curtailment::electricity  �              NL12::curtailment::electricity  �       %       NL13::demand_electricity::electricity   �       %       NL21::demand_electricity::electricity   �       %       NL11::demand_electricity::electricity   �              NL32::curtailment::electricity  �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL11::ccgt::electricity �              NL42::ccgt::electricity �              NL22::ccgt::electricity �              NL31::ccgt::electricity �              NL13::ccgt::electricity �              NL33::ccgt::electricity �              NL41::ccgt::electricity �              NL23::ccgt::electricity �              NL32::ccgt::electricity �              NL21::ccgt::electricity �              NL12::ccgt::electricity �              NL34::ccgt::electricity �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL33::wind_onshore::electricity �              NL41::ccgt::electricity �              NL21::ccgt::electricity �              NL42::wind_onshore::electricity �              NL12::lost_load::electricity    �              NL23::pv_rooftop::electricity   �              NL22::pv_rooftop::electricity   �                       OCHK    �
     �      +        _Netcdf4Dimid                <�t�   ��
     �   %   ��
     �   %   ��
     �      ��
     �      ��
     �   %   ��
     �   %   ��
     {   %   ��
     |   %   ��
     }      ��
     ~   %   ��
           ��
     �      ��
     o   %   ��
     p      ��
     q      ��
     r   %   ��
     s      ��
     t      ��
     u      ��
     v   %   ��
     w   %   ��
     x      ��
     y   %   ��
     z      ��
     �      ��
     �      ��
     �      ��
     �      ��
     �      ��
     �      ��
     �      ��
     �      ��
     �      ��
     �      ��
     �      ��
     �      ��
     ;      ��
     :      ��
     9      ��
     7      ��
     8      ��
     3      ��
     4      ��
     5      ��
     6      ��
     +       ��
     ,      ��
     -      ��
     .       ��
     /      ��
     0      ��
     1      ��
     2      ��
           ��
           ��
           ��
           ��
           ��
            ��
     !      ��
     "      ��
     #      ��
     $       ��
     %      ��
     &       ��
     '       ��
     (      ��
     )      ��
     *      ��
     �      ��
     �      ��
     �      ��
     �      ��
     �      ��
     �      ��
     �      ��
           ��
           ��
           ��
           ��
           ��
            ��
           ��
           ��
     	      ��
     
      ��
           ��
           ��
           ��
           ��
           ��
           ��
           ��
           ��
           ��
           ��
           ��
           ��
           ��
           ��
           ��
           �
     �      /     m      /     l      /     i      /     j      /     k      /     c      /     d      /     e      /     f      /     g      /     h      /     W      /     X      /     Y      /     Z      /     [      /     \      /     ]      /     ^      /     _      /     `      /     a      /     b      ��     D      ��     C   OCHK    ��
     �       +        _Netcdf4Dimid                B��OCHK    E�
            +        _Netcdf4Dimid                h�ֶGCOL                        NL23::wind_onshore::electricity               NL32::lost_load::electricity                  NL21::lost_load::electricity                  NL41::lost_load::electricity                  NL21::pv_rooftop::electricity                 NL33::pv_rooftop::electricity                  NL11::wind_offshore::electricity              NL21::wind_onshore::electricity 	              NL12::pv_rooftop::electricity   
              NL23::lost_load::electricity                  NL11::pv_rooftop::electricity                 NL34::pv_farm::electricity                    NL22::ccgt::electricity               NL13::ccgt::electricity               NL32::pv_rooftop::electricity                 NL33::ccgt::electricity               NL41::wind_onshore::electricity               NL31::lost_load::electricity                  NL22::lost_load::electricity                  NL22::pv_farm::electricity                    NL32::pv_farm::electricity                    NL11::ccgt::electricity               NL34::lost_load::electricity                  NL31::pv_rooftop::electricity                 NL23::pv_farm::electricity                    NL13::pv_farm::electricity                    NL31::wind_onshore::electricity               NL31::ccgt::electricity               NL41::pv_farm::electricity                    NL23::ccgt::electricity               NL33::pv_farm::electricity                     NL32::wind_onshore::electricity !              NL11::pv_farm::electricity      "              NL41::pv_rooftop::electricity   #              NL32::ccgt::electricity $              NL11::lost_load::electricity    %               NL34::wind_offshore::electricity&              NL13::wind_onshore::electricity '               NL32::wind_offshore::electricity(               NL12::wind_offshore::electricity)              NL11::wind_onshore::electricity *              NL22::wind_onshore::electricity +              NL13::lost_load::electricity    ,               NL23::wind_offshore::electricity-              NL34::pv_rooftop::electricity   .              NL34::wind_onshore::electricity /               NL33::wind_offshore::electricity0              NL12::pv_farm::electricity      1              NL12::ccgt::electricity 2              NL12::wind_onshore::electricity 3              NL42::lost_load::electricity    4              NL42::ccgt::electricity 5              NL31::pv_farm::electricity      6              NL42::pv_farm::electricity      7              NL33::lost_load::electricity    8              NL34::ccgt::electricity 9              NL42::pv_rooftop::electricity   :              NL13::pv_rooftop::electricity   ;              NL21::pv_farm::electricity      <               =               >               ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P               Q               R               S               T               U               V               W               X               Y               Z               [               \               ]               ^               _               `               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                             NL22::pv_farm::electricity      �              NL34::lost_load::electricity    �              NL31::pv_rooftop::electricity   �              NL23::pv_farm::electricity      �              NL13::pv_rooftop::electricity   �               OCHK                B        NAME    (      loc_tech_carriers_supply_conversion_all ���   /     =      /     <      /     ;      /     9      /     :       /     5      /     6      /     7      /     8      /     -      /     .      /     /      /     0      /     1      /     2       /     3      /     4      /           /           /           /            /     !      /     "      /     #       /     $      /     %      /     &      /     '      /     (      /     )      /     *      /     +      /     ,      ��
           ��
     �      ��
     �      ��
     �      ��
     �      /           /           /           /           /            /           /           /           /     	      /     
      /           /            /           /           /           /           /           /           /           /           /           /           /           /           /           /            /           /        GCOL                        NL33::lost_load::electricity                  NL42::lost_load::electricity                  NL31::pv_farm::electricity                    NL42::pv_farm::electricity                    NL34::wind_onshore::electricity                NL33::wind_offshore::electricity              NL31::ccgt::electricity               NL41::pv_farm::electricity      	              NL23::ccgt::electricity 
              NL11::pv_farm::electricity                    NL32::ccgt::electricity               NL41::pv_rooftop::electricity                  NL32::wind_offshore::electricity              NL23::pv_rooftop::electricity                 NL42::wind_onshore::electricity               NL22::pv_rooftop::electricity                 NL32::lost_load::electricity                  NL41::lost_load::electricity                  NL21::pv_rooftop::electricity                 NL33::pv_rooftop::electricity                 NL12::pv_rooftop::electricity                 NL32::pv_rooftop::electricity                 NL13::ccgt::electricity               NL33::ccgt::electricity               NL32::pv_farm::electricity                    NL11::ccgt::electricity                NL34::wind_offshore::electricity              NL13::pv_farm::electricity                    NL22::wind_onshore::electricity               NL33::wind_onshore::electricity               NL41::ccgt::electricity                NL21::ccgt::electricity !              NL12::lost_load::electricity    "              NL23::wind_onshore::electricity #              NL21::lost_load::electricity    $               NL11::wind_offshore::electricity%              NL21::wind_onshore::electricity &              NL23::lost_load::electricity    '              NL11::pv_rooftop::electricity   (              NL34::pv_farm::electricity      )              NL22::ccgt::electricity *              NL41::wind_onshore::electricity +              NL31::lost_load::electricity    ,              NL22::lost_load::electricity    -              NL12::wind_onshore::electricity .              NL31::wind_onshore::electricity /              NL33::pv_farm::electricity      0              NL32::wind_onshore::electricity 1              NL11::lost_load::electricity    2              NL13::wind_onshore::electricity 3               NL12::wind_offshore::electricity4              NL11::wind_onshore::electricity 5               NL23::wind_offshore::electricity6              NL34::pv_rooftop::electricity   7              NL12::pv_farm::electricity      8              NL12::ccgt::electricity 9              NL42::ccgt::electricity :              NL13::lost_load::electricity    ;              NL34::ccgt::electricity <              NL42::pv_rooftop::electricity   =              NL21::pv_farm::electricity      >               ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P               Q               R               S               T               U               V               W              NL11::battery   X              NL33::battery   Y              NL34::hydrogen_to_power Z              NL11::hydrogen_to_power [              NL22::battery   \              NL42::battery   ]              NL41::hydrogen_to_power ^              NL21::hydrogen_to_power _              NL31::hydrogen_to_power `              NL32::battery   a              NL22::hydrogen_to_power b              NL23::battery   c              NL12::battery   d              NL23::hydrogen_to_power e              NL41::battery   f              NL12::hydrogen_to_power g              NL13::battery   h              NL31::battery   i              NL13::hydrogen_to_power j              NL42::hydrogen_to_power k              NL33::hydrogen_to_power l              NL32::hydrogen_to_power m              NL34::battery   n               OCHK    e�
     �      ?        NAME    %      loc_techs_balance_storage_constraint ����OCHK    �!     `      +        _Netcdf4Dimid                e�֟   E%     j      E%     i      E%     g      E%     h      E%     d      E%     e      E%     f      E%     ]      E%     ^      E%     _      E%     `      E%     a      E%     b      E%     c      E%     P      E%     Q      E%     R      E%     S      E%     T      E%     U      E%     V      E%     W      E%     X      E%     Y      E%     Z      E%     [      E%     \      E%     5      E%     6      E%     7      E%     8      E%     9      E%     :      E%     ;      E%     <      E%     =      E%     >      E%     ?      E%     @      E%     A      E%     B      E%     C      E%     D      E%     E      E%     F      E%     G      E%     H      E%     I      E%     J      E%     K      E%     L      E%     M      E%     N      E%     O   GCOL                                                                                                                                  	               
                                                                                                                                                                                                                                                                                                                                                          !               "               #               $               %               &               '               (               )               *               +               ,               -               .               /               0               1               2               3               4               5              NL13::pv_rooftop6              NL21::pv_rooftop7              NL21::pv_farm   8              NL32::wind_offshore     9              NL23::pv_rooftop:              NL22::pv_farm   ;              NL22::pv_rooftop<              NL13::lost_load =              NL34::pv_rooftop>              NL42::lost_load ?              NL11::lost_load @              NL22::wind_onshore      A              NL11::pv_farm   B              NL22::lost_load C              NL32::lost_load D              NL34::lost_load E              NL31::wind_onshore      F              NL12::pv_farm   G              NL13::wind_onshore      H              NL41::pv_farm   I              NL32::wind_onshore      J              NL33::pv_rooftopK              NL32::pv_rooftopL              NL31::pv_rooftopM              NL21::lost_load N              NL33::wind_offshore     O              NL42::pv_farm   P              NL41::pv_rooftopQ              NL33::lost_load R              NL12::lost_load S              NL41::lost_load T              NL21::wind_onshore      U              NL23::pv_farm   V              NL11::pv_rooftopW              NL33::wind_onshore      X              NL13::pv_farm   Y              NL31::pv_farm   Z              NL11::wind_offshore     [              NL11::wind_onshore      \              NL42::pv_rooftop]              NL23::wind_offshore     ^              NL32::pv_farm   _              NL12::pv_rooftop`              NL41::wind_onshore      a              NL34::wind_onshore      b              NL31::lost_load c              NL34::pv_farm   d              NL12::wind_offshore     e              NL33::pv_farm   f              NL23::wind_onshore      g              NL23::lost_load h              NL42::wind_onshore      i              NL12::wind_onshore      j              NL34::wind_offshore     k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �              NL23::hvac_transmission:NL12    �              NL32::hvac_transmission:NL33    �              NL33::hvac_transmission:NL41    �              NL22::hvac_transmission:NL21    �              NL21::hvac_transmission:NL23    �              NL41::hvac_transmission:NL34    �              NL32::hvac_transmission:NL23    �              NL34::hvac_transmission:NL41    �              NL12::hvac_transmission:NL11    �              NL41::hvac_transmission:NL42    �              NL41::hvac_transmission:NL33    �              NL33::hvac_transmission:NL31    �              NL11::hvac_transmission:NL12    �              NL31::hvac_transmission:NL33    �              NL42::hvac_transmission:NL41    �              NL13::hvac_transmission:NL21    �              NL23::hvac_transmission:NL21    �              NL22::hvac_transmission:NL41    �              NL31::hvac_transmission:NL32    OCHK    �5     �      D        NAME    *      loc_techs_balance_transmission_constraint ����   o7     	      o7           o7           o7           o7           o7           o7           E%     �      E%     �      E%     �      E%     �      E%     �      o7           o7           E%     �      E%     �      E%     �      E%     �      E%     �      E%     �      E%     �      E%     �      E%     �      E%     �      E%     �      E%     �      E%     �      E%     �   GCOL                        NL12::hvac_transmission:NL23                  NL21::hvac_transmission:NL22                  NL41::hvac_transmission:NL22                  NL23::hvac_transmission:NL32                  NL11::hvac_transmission:NL13                  NL21::hvac_transmission:NL13                  NL33::hvac_transmission:NL32                  NL32::hvac_transmission:NL31    	              NL13::hvac_transmission:NL11    
                                                                                                                                                                                                                                                                                                                                                          !               "               #               $               %               &               '               (               )               *               +               ,               -               .               /               0               1               2               3               4               5               6               7               8               9               :               ;               <               =               >               ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P               Q               R               S               T               U               V               W               X               Y               Z               [               \               ]               ^               _               `               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL13::hvac_transmission:NL11    �              NL32::hvac_transmission:NL31    �              NL32::hydrogen_to_power �              NL34::wind_offshore     �              NL13::hydrogen_to_power �              NL42::wind_onshore      �              NL13::curtailment       �              NL23::wind_onshore      �              NL12::pv_rooftop�              NL32::pv_farm   �              NL34::wind_onshore      �              NL41::wind_onshore      �              NL23::wind_offshore     �              NL34::pv_farm   �              NL11::hvac_transmission:NL13    �              NL12::curtailment       �              NL34::curtailment       �              NL12::lost_load �              NL41::lost_load �              NL12::battery   �              NL11::pv_rooftop�              NL23::hydrogen_to_power �              NL12::hvac_transmission:NL23    �              NL13::pv_farm   �              NL31::pv_farm   �              NL11::wind_offshore     �              NL42::pv_rooftop�              NL32::wind_offshore     �              NL41::curtailment       �       
       NL11::ccgt      �              NL13::battery   �              NL23::pv_rooftop�              NL31::battery   �              NL22::curtailment       �              NL22::pv_rooftop�              NL34::pv_rooftop�              NL32::hvac_transmission:NL33    �              NL33::hvac_transmission:NL41    �              NL11::lost_load �              NL22::hvac_transmission:NL21    �               �               OCHK    �G            +        _Netcdf4Dimid                ո�2   �O     Z      �O     Y      �O     X      �O     V      �O     W      �O     R      �O     S      �O     T      �O     U      �O     J      �O     K      �O     L      �O     M   
   �O     N   
   �O     O      �O     P      �O     Q   
   �O     :      �O     ;      �O     <      �O     =      �O     >      �O     ?      �O     @      �O     A      �O     B      �O     C      �O     D      �O     E      �O     F      �O     G      �O     H      �O     I      �O           �O           �O           �O           �O           �O           �O            �O     !      �O     "      �O     #      �O     $   
   �O     %      �O     &   
   �O     '      �O     (   
   �O     )   
   �O     *      �O     +      �O     ,      �O     -   
   �O     .      �O     /      �O     0   
   �O     1      �O     2      �O     3      �O     4      �O     5      �O     6      �O     7      �O     8   
   �O     9      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �   
   o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      o7     �      �O           �O           �O           �O        
   �O           �O           �O           �O           �O     	      �O     
      �O           �O           �O           �O           �O           �O           �O           �O           �O           �O           �O           �O           �O           �O           �O        GCOL                        NL41::hvac_transmission:NL34                  NL33::battery                 NL11::pv_farm                 NL32::lost_load        
       NL32::ccgt                    NL34::hydrogen_to_power               NL34::lost_load               NL31::wind_onshore      	              NL34::hvac_transmission:NL41    
              NL33::curtailment                     NL13::wind_onshore                    NL11::hydrogen_to_power               NL12::hvac_transmission:NL11                  NL32::pv_rooftop              NL11::curtailment                     NL41::hvac_transmission:NL33                  NL42::battery                 NL31::pv_rooftop              NL41::hydrogen_to_power               NL31::hydrogen_to_power               NL11::hvac_transmission:NL12                  NL22::hydrogen_to_power               NL21::lost_load               NL23::battery                 NL33::wind_offshore                   NL21::pv_rooftop              NL21::pv_farm                 NL32::curtailment                     NL23::hvac_transmission:NL12                  NL22::pv_farm                 NL13::lost_load                NL11::battery   !              NL42::lost_load "              NL21::hvac_transmission:NL23    #              NL32::hvac_transmission:NL23    $              NL22::wind_onshore      %       
       NL42::ccgt      &              NL22::lost_load '       
       NL41::ccgt      (              NL12::pv_farm   )       
       NL33::ccgt      *       
       NL34::ccgt      +              NL41::hvac_transmission:NL42    ,              NL41::pv_farm   -              NL22::battery   .       
       NL21::ccgt      /              NL33::pv_rooftop0              NL32::wind_onshore      1       
       NL12::ccgt      2              NL33::hvac_transmission:NL31    3              NL42::curtailment       4              NL21::hydrogen_to_power 5              NL32::battery   6              NL42::pv_farm   7              NL21::curtailment       8              NL21::battery   9       
       NL23::ccgt      :       
       NL13::ccgt      ;              NL13::hvac_transmission:NL21    <              NL23::hvac_transmission:NL21    =              NL31::curtailment       >              NL22::hvac_transmission:NL41    ?              NL31::hvac_transmission:NL32    @              NL21::wind_onshore      A              NL23::curtailment       B              NL23::pv_farm   C              NL33::wind_onshore      D              NL21::hvac_transmission:NL22    E              NL41::battery   F              NL12::hydrogen_to_power G              NL31::hvac_transmission:NL33    H              NL11::wind_onshore      I              NL13::pv_rooftopJ              NL31::lost_load K              NL23::hvac_transmission:NL32    L              NL33::hydrogen_to_power M              NL41::pv_rooftopN       
       NL22::ccgt      O       
       NL31::ccgt      P              NL33::lost_load Q              NL42::hvac_transmission:NL41    R              NL12::wind_offshore     S              NL33::pv_farm   T              NL42::hydrogen_to_power U              NL41::hvac_transmission:NL22    V              NL23::lost_load W              NL33::hvac_transmission:NL32    X              NL21::hvac_transmission:NL13    Y              NL12::wind_onshore      Z              NL34::battery   [               \               ]               ^               _               `               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               OCHK    1`     `      +        _Netcdf4Dimid                4�9�   �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �   
   �f     �   
   �f     �      �f     �   
   �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     p      �f     q      �f     r      �f     s   
   �f     t      �f     u   
   �f     v      �f     w   
   �f     x   
   �f     y      �f     z      �f     {   
   �f     |      �f     }      �f     ~   
   �f           �f     �      �f     �      �f     �      �f     �      �f     �      �f     �   
   �f     �      �f     �      �f     �      �f     =      �f     >      �f     ?      �f     @      �f     A      �f     B      �f     C      �f     D      �f     E      �f     F      �f     G      �f     H      �f     I      �f     J      �f     K      �f     L      �f     M      �f     N      �f     O      �f     P      �f     Q      �f     R      �f     S   
   �f     T      �f     U      �f     V      �f     W      �f     X      �f     Y      �f     Z      �f     [      �f     \      �f     ]      �f     ^   
   �f     _      �f     `      �f     a      �f     b      �f     c      �f     d      �f     e      �f     f      �f     g      �f     h      �f     i      �f     j      �f     k      �f     l      �f     m      �f     n      �f     o   GCOL                                                                                                                                   	               
                                                                                                                                                                                                                                                                                                                                                          !               "               #               $               %               &               '               (               )               *               +               ,               -               .               /               0               1               2               3               4               5               6               7               8               9               :               ;               <               =              NL13::hydrogen_to_power >              NL42::wind_onshore      ?              NL13::curtailment       @              NL23::wind_onshore      A              NL12::pv_rooftopB              NL32::pv_farm   C              NL34::wind_onshore      D              NL41::wind_onshore      E              NL23::wind_offshore     F              NL34::pv_farm   G              NL12::curtailment       H              NL34::curtailment       I              NL12::lost_load J              NL41::lost_load K              NL12::battery   L              NL11::pv_rooftopM              NL23::hydrogen_to_power N              NL13::pv_farm   O              NL31::pv_farm   P              NL11::wind_offshore     Q              NL42::pv_rooftopR              NL32::wind_offshore     S              NL41::curtailment       T       
       NL11::ccgt      U              NL13::battery   V              NL23::pv_rooftopW              NL31::battery   X              NL22::curtailment       Y              NL22::pv_rooftopZ              NL34::pv_rooftop[              NL11::lost_load \              NL33::battery   ]              NL11::pv_farm   ^              NL32::lost_load _       
       NL32::ccgt      `              NL34::hydrogen_to_power a              NL34::lost_load b              NL31::wind_onshore      c              NL33::curtailment       d              NL13::wind_onshore      e              NL11::hydrogen_to_power f              NL32::pv_rooftopg              NL11::curtailment       h              NL42::battery   i              NL31::pv_rooftopj              NL41::hydrogen_to_power k              NL31::hydrogen_to_power l              NL22::hydrogen_to_power m              NL21::lost_load n              NL23::battery   o              NL33::wind_offshore     p              NL13::lost_load q              NL11::battery   r              NL42::lost_load s              NL22::wind_onshore      t       
       NL42::ccgt      u              NL22::lost_load v       
       NL41::ccgt      w              NL12::pv_farm   x       
       NL33::ccgt      y       
       NL34::ccgt      z              NL41::pv_farm   {              NL22::battery   |       
       NL21::ccgt      }              NL33::pv_rooftop~              NL32::wind_onshore             
       NL12::ccgt      �              NL42::curtailment       �              NL21::hydrogen_to_power �              NL32::battery   �              NL42::pv_farm   �              NL21::curtailment       �              NL21::battery   �       
       NL23::ccgt      �              NL32::hydrogen_to_power �              NL34::wind_offshore     �              NL31::curtailment       �              NL21::wind_onshore      �              NL23::curtailment       �              NL23::pv_farm   �              NL33::wind_onshore      �              NL12::hydrogen_to_power �              NL41::battery   �              NL11::wind_onshore      �              NL13::pv_rooftop�              NL21::pv_rooftop�              NL21::pv_farm   �              NL32::curtailment       �              NL22::pv_farm   �              NL33::hydrogen_to_power �              NL41::pv_rooftop�       
       NL22::ccgt      �       
       NL31::ccgt      �              NL33::lost_load �       
       NL13::ccgt      �              NL33::pv_farm   �              NL42::hydrogen_to_power �              NL31::lost_load �              NL23::lost_load �              NL12::wind_offshore     �              NL12::wind_onshore      �              NL34::battery   �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL21::demand_electricity�              NL23::curtailment       �              NL41::curtailment       �              NL32::curtailment       �              NL22::curtailment       �              NL31::demand_electricity�              NL22::demand_electricity�              NL13::demand_electricity�              NL33::curtailment       �              NL11::curtailment       �              NL12::demand_electricity�              NL42::curtailment       �              NL13::curtailment       �              NL42::demand_electricity�              NL12::curtailment       �              NL41::demand_electricity�              NL34::curtailment       �              NL31::curtailment       �              NL32::demand_electricity�              NL33::demand_electricity�              NL23::demand_electricity�              NL11::demand_electricity�              NL34::demand_electricity�              NL21::curtailment       �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �                                                                                                                                              	              
                                                                                                                                                                                                                                                                                                                                   !              "              #              $              %              &              '              (              )              *              +              ,              -              .              /              0              1              2              3              4              5              6              7              8              9              :              ;              <              =              >              ?              @              A              B              C              D              E              F              G              H              I              J              K              L              M              N              O              P              Q              R              S              T              U              V              W              X              Y              Z              [              \              ]              ^              _              `              OCHK    �     �      +        _Netcdf4Dimid                5��o   �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      �f     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      �     6      �     5      �     4      �     2      �     3      �     -      �     .      �     /      �     0      �     1      �     #      �     $      �     %      �     &      �     '      �     (      �     )      �     *      �     +      �     ,      �           �           �           �           �           �           �           �           �           �           �           �           �           �           �           �           �            �     !      �     "      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�           '�          '�          '�          '�          '�          '�          '�          '�          '�     	     '�     
     '�          '�          '�          '�          '�          '�          �           �           �           �           �           �           �           �           �     	      �     
      �           �           �           �           �        
   �&     s   
   �&     r   
   �&     q   
   �&     n   
   �&     o   
   �&     p   
   �&     h   
   �&     i   
   �&     j   
   �&     k   
   �&     l   
   �&     m      ��     l      ��     k   OCHK    G�     �      ?        NAME    %      loc_techs_energy_capacity_constraint _���   '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�           '�     �      '�     �      '�     �      '�     �      '�     �      '�     �      '�     �   
   '�     �   
   '�     m      '�     n      '�     o   
   '�     p      '�     q      '�     r      '�     s      '�     t      '�     u      '�     v      '�     w      '�     x      '�     y      '�     z      '�     {      '�     |      '�     }      '�     ~      '�     J      '�     K      '�     L      '�     M      '�     N      '�     O      '�     P      '�     Q      '�     R      '�     S      '�     T      '�     U      '�     V   
   '�     W      '�     X   
   '�     Y      '�     Z      '�     [   
   '�     \   
   '�     ]      '�     ^      '�     _      '�     `   
   '�     a      '�     b      '�     c      '�     d   
   '�     e      '�     f      '�     g      '�     h      '�     i      '�     j      '�     k      '�     l      '�        
   '�           '�           '�           '�           '�           '�     	      '�     
      '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�           '�            '�     !      '�     "      '�     #   
   '�     $      '�     %      '�     &      '�     '      '�     (      '�     )      '�     *      '�     +      '�     ,      '�     -      '�     .      '�     /      '�     0      '�     1      '�     2      '�     3      '�     4   
   '�     5      '�     6      '�     7      '�     8      '�     9      '�     :      '�     ;      '�     <      '�     =      '�     >      '�     ?      '�     @      '�     A      '�     B      '�     C      '�     D      '�     E      '�     F      '�     G      '�     H      '�     I   GCOL                                                       NL34::demand_electricity       
       NL23::ccgt                    NL13::hvac_transmission:NL11                  NL32::hvac_transmission:NL31                  NL32::hydrogen_to_power               NL34::wind_offshore     	              NL13::hydrogen_to_power 
              NL42::wind_onshore                    NL23::demand_electricity              NL13::curtailment                     NL23::wind_onshore                    NL12::pv_rooftop              NL32::pv_farm                 NL34::wind_onshore                    NL41::wind_onshore                    NL23::wind_offshore                   NL34::pv_farm                 NL11::hvac_transmission:NL13                  NL12::curtailment                     NL41::demand_electricity              NL34::curtailment                     NL12::lost_load               NL41::lost_load               NL12::battery                 NL11::pv_rooftop              NL23::hydrogen_to_power               NL12::hvac_transmission:NL23                  NL13::pv_farm                 NL31::pv_farm                  NL11::wind_offshore     !              NL42::pv_rooftop"              NL32::wind_offshore     #              NL41::curtailment       $       
       NL11::ccgt      %              NL13::battery   &              NL23::pv_rooftop'              NL31::battery   (              NL22::curtailment       )              NL22::pv_rooftop*              NL34::pv_rooftop+              NL31::demand_electricity,              NL32::hvac_transmission:NL33    -              NL11::lost_load .              NL22::demand_electricity/              NL33::hvac_transmission:NL41    0              NL33::battery   1              NL22::hvac_transmission:NL21    2              NL41::hvac_transmission:NL34    3              NL11::pv_farm   4              NL32::lost_load 5       
       NL32::ccgt      6              NL34::hydrogen_to_power 7              NL34::lost_load 8              NL31::wind_onshore      9              NL34::hvac_transmission:NL41    :              NL33::curtailment       ;              NL13::wind_onshore      <              NL11::hydrogen_to_power =              NL12::hvac_transmission:NL11    >              NL32::pv_rooftop?              NL11::curtailment       @              NL41::hvac_transmission:NL33    A              NL42::battery   B              NL31::pv_rooftopC              NL41::hydrogen_to_power D              NL31::hydrogen_to_power E              NL11::hvac_transmission:NL12    F              NL22::hydrogen_to_power G              NL21::lost_load H              NL23::battery   I              NL33::wind_offshore     J              NL11::wind_onshore      K              NL13::pv_rooftopL              NL21::pv_rooftopM              NL21::pv_farm   N              NL32::curtailment       O              NL23::hvac_transmission:NL12    P              NL22::pv_farm   Q              NL13::lost_load R              NL11::battery   S              NL42::lost_load T              NL21::hvac_transmission:NL23    U              NL32::hvac_transmission:NL23    V              NL22::wind_onshore      W       
       NL42::ccgt      X              NL22::lost_load Y       
       NL41::ccgt      Z              NL12::pv_farm   [              NL13::demand_electricity\       
       NL33::ccgt      ]       
       NL34::ccgt      ^              NL41::hvac_transmission:NL42    _              NL41::pv_farm   `              NL22::battery   a       
       NL21::ccgt      b              NL33::pv_rooftopc              NL32::wind_onshore      d              NL12::demand_electricitye       
       NL12::ccgt      f              NL33::hvac_transmission:NL31    g              NL42::curtailment       h              NL21::hydrogen_to_power i              NL32::battery   j              NL42::pv_farm   k              NL21::curtailment       l              NL21::battery   m       
       NL31::ccgt      n              NL33::lost_load o              NL42::hvac_transmission:NL41    p       
       NL13::ccgt      q              NL13::hvac_transmission:NL21    r              NL23::hvac_transmission:NL21    s              NL31::curtailment       t              NL22::hvac_transmission:NL41    u              NL31::hvac_transmission:NL32    v              NL21::wind_onshore      w              NL21::demand_electricityx              NL23::curtailment       y              NL23::pv_farm   z              NL33::wind_onshore      {              NL21::hvac_transmission:NL22    |              NL12::hydrogen_to_power }              NL41::battery   ~              NL31::hvac_transmission:NL33                  NL33::pv_farm   �              NL42::hydrogen_to_power �              NL41::hvac_transmission:NL22    �              NL31::lost_load �              NL23::hvac_transmission:NL32    �              NL42::demand_electricity�              NL33::hydrogen_to_power �              NL41::pv_rooftop�       
       NL22::ccgt      �              NL21::hvac_transmission:NL13    �              NL23::lost_load �              NL33::hvac_transmission:NL32    �              NL12::wind_offshore     �              NL33::demand_electricity�              NL12::wind_onshore      �              NL32::demand_electricity�              NL11::demand_electricity�              NL34::battery   �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL22::battery   �              NL42::battery   �              NL12::battery   �              NL32::battery   �              NL41::battery   �              NL23::battery   �              NL31::battery   �              NL11::battery   �              NL33::battery   �              NL13::battery   �              NL34::battery   �              NL21::battery   �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL32::lost_load �              NL33::curtailment       �              NL13::wind_onshore      �              NL31::pv_rooftop�              NL21::lost_load �              NL32::demand_electricity�              NL12::wind_offshore                   NL33::pv_farm                NL31::lost_load              NL41::pv_rooftop             NL33::lost_load              NL31::curtailment                    NL21::demand_electricity             NL23::curtailment                    NL21::pv_rooftop             NL21::pv_farm   	             NL32::curtailment       
             NL22::pv_farm                NL12::pv_farm                NL13::demand_electricity             NL32::wind_onshore                   NL12::demand_electricity             NL42::pv_farm                NL34::wind_offshore     OCHK    b�     �       K        NAME    1      loc_techs_energy_capacity_storage_max_constraint 1�kOCHK   ��     �       +        _Netcdf4Dimid                  *� �GCOL                        NL23::wind_onshore                    NL23::wind_offshore                   NL12::curtailment                     NL41::demand_electricity              NL12::lost_load               NL11::pv_rooftop              NL11::wind_offshore                   NL32::wind_offshore     	              NL23::pv_rooftop
              NL22::demand_electricity              NL34::lost_load               NL31::wind_onshore                    NL32::pv_rooftop              NL11::curtailment                     NL33::wind_offshore                   NL23::demand_electricity              NL13::curtailment                     NL12::pv_rooftop              NL32::pv_farm                 NL34::wind_onshore                    NL41::wind_onshore                    NL34::pv_farm                 NL34::curtailment                     NL41::lost_load               NL13::pv_farm                 NL31::pv_farm                 NL42::pv_rooftop              NL41::curtailment                     NL22::curtailment                     NL22::pv_rooftop              NL34::pv_rooftop               NL31::demand_electricity!              NL11::lost_load "              NL11::pv_farm   #              NL13::lost_load $              NL42::lost_load %              NL22::wind_onshore      &              NL22::lost_load '              NL41::pv_farm   (              NL33::pv_rooftop)              NL42::curtailment       *              NL21::curtailment       +              NL34::demand_electricity,              NL42::wind_onshore      -              NL21::wind_onshore      .              NL23::pv_farm   /              NL33::wind_onshore      0              NL11::wind_onshore      1              NL13::pv_rooftop2              NL23::lost_load 3              NL42::demand_electricity4              NL12::wind_onshore      5              NL33::demand_electricity6              NL11::demand_electricity7               8               9               :               ;               <               =               >               ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P              NL21::demand_electricityQ              NL23::curtailment       R              NL41::curtailment       S              NL32::curtailment       T              NL22::curtailment       U              NL31::demand_electricityV              NL22::demand_electricityW              NL13::demand_electricityX              NL33::curtailment       Y              NL11::curtailment       Z              NL12::demand_electricity[              NL42::curtailment       \              NL13::curtailment       ]              NL42::demand_electricity^              NL12::curtailment       _              NL41::demand_electricity`              NL34::curtailment       a              NL31::curtailment       b              NL32::demand_electricityc              NL33::demand_electricityd              NL23::demand_electricitye              NL11::demand_electricityf              NL34::demand_electricityg              NL21::curtailment       h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               OCHK    :�     �      +        _Netcdf4Dimid                 K-   �     g      �     f      �     e      �     b      �     c      �     d      �     \      �     ]      �     ^      �     _      �     `      �     a      �     P      �     Q      �     R      �     S      �     T      �     U      �     V      �     W      �     X      �     Y      �     Z      �     [      ��     >      ��     =      ��     ;      ��     <      ��     8      ��     9      ��     :      ��     1      ��     2      ��     3      ��     4      ��     5      ��     6      ��     7      ��     $      ��     %      ��     &      ��     '      ��     (      ��     )      ��     *      ��     +      ��     ,      ��     -      ��     .      ��     /      ��     0      ��     	      ��     
      ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��            ��     !      ��     "      ��     #      J7           J7           J7     
      J7           J7           J7     	      J7           J7           J7           J7           J7           J7           �&     �      �&     �      �&     �      �&     �      �&     �      �&     �      �&     �      �&     �      �&     �      �&     �      �&     �      �&     �      J7     =      J7     <      J7     ;      J7     8      J7     9      J7     :      J7     2      J7     3      J7     4      J7     5      J7     6      J7     7      J7     &      J7     '      J7     (      J7     )      J7     *      J7     +      J7     ,      J7     -      J7     .      J7     /      J7     0      J7     1      �        x^c`�-   `     OCHK    ��     `      +        _Netcdf4Dimid             !   V�QGCOL                                                                                                                                  	              NL13::pv_rooftop
              NL21::pv_rooftop              NL21::pv_farm                 NL32::wind_offshore                   NL23::pv_rooftop              NL22::pv_farm                 NL22::pv_rooftop              NL13::lost_load               NL34::pv_rooftop              NL42::lost_load               NL11::lost_load               NL22::wind_onshore                    NL11::pv_farm                 NL22::lost_load               NL32::lost_load               NL34::lost_load               NL31::wind_onshore                    NL12::pv_farm                 NL13::wind_onshore                    NL41::pv_farm                 NL32::wind_onshore                    NL33::pv_rooftop              NL32::pv_rooftop               NL31::pv_rooftop!              NL21::lost_load "              NL33::wind_offshore     #              NL42::pv_farm   $              NL41::pv_rooftop%              NL33::lost_load &              NL12::lost_load '              NL41::lost_load (              NL21::wind_onshore      )              NL23::pv_farm   *              NL11::pv_rooftop+              NL33::wind_onshore      ,              NL13::pv_farm   -              NL31::pv_farm   .              NL11::wind_offshore     /              NL11::wind_onshore      0              NL42::pv_rooftop1              NL23::wind_offshore     2              NL32::pv_farm   3              NL12::pv_rooftop4              NL41::wind_onshore      5              NL34::wind_onshore      6              NL31::lost_load 7              NL34::pv_farm   8              NL12::wind_offshore     9              NL33::pv_farm   :              NL23::wind_onshore      ;              NL23::lost_load <              NL42::wind_onshore      =              NL12::wind_onshore      >              NL34::wind_offshore     ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P               Q               R               S               T               U               V               W               X               Y               Z               [               \               ]               ^               _               `               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               OCHK    �     �       +        _Netcdf4Dimid             "     q    ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �   
   ��     �   
   ��     x      ��     y      ��     z   
   ��     {      ��     |      ��     }      ��     ~      ��           ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     U      ��     V      ��     W      ��     X      ��     Y      ��     Z      ��     [      ��     \      ��     ]      ��     ^      ��     _      ��     `      ��     a   
   ��     b      ��     c   
   ��     d      ��     e      ��     f   
   ��     g   
   ��     h      ��     i      ��     j      ��     k   
   ��     l      ��     m      ��     n      ��     o   
   ��     p      ��     q      ��     r      ��     s      ��     t      ��     u      ��     v      ��     w      ��        
   ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��            ��     !      ��     "      ��     #      ��     $      ��     %      ��     &      ��     '      ��     (      ��     )      ��     *      ��     +      ��     ,      ��     -      ��     .   
   ��     /      ��     0      ��     1      ��     2      ��     3      ��     4      ��     5      ��     6      ��     7      ��     8      ��     9      ��     :      ��     ;      ��     <      ��     =      ��     >      ��     ?   
   ��     @      ��     A      ��     B      ��     C      ��     D      ��     E      ��     F      ��     G      ��     H      ��     I      ��     J      ��     K      ��     L      ��     M      ��     N      ��     O      ��     P      ��     Q      ��     R      ��     S      ��     T   GCOL                                                                                                                                   	               
                                                                          NL34::demand_electricity       
       NL23::ccgt                    NL13::hvac_transmission:NL11                  NL32::hvac_transmission:NL31                  NL32::hydrogen_to_power               NL34::wind_offshore                   NL13::hydrogen_to_power               NL42::wind_onshore                    NL23::demand_electricity              NL13::curtailment                     NL23::wind_onshore                    NL12::pv_rooftop              NL32::pv_farm                 NL34::wind_onshore                    NL41::wind_onshore                    NL23::wind_offshore                   NL34::pv_farm                 NL11::hvac_transmission:NL13                   NL12::curtailment       !              NL41::demand_electricity"              NL34::curtailment       #              NL12::lost_load $              NL41::lost_load %              NL12::battery   &              NL11::pv_rooftop'              NL23::hydrogen_to_power (              NL12::hvac_transmission:NL23    )              NL13::pv_farm   *              NL31::pv_farm   +              NL11::wind_offshore     ,              NL42::pv_rooftop-              NL32::wind_offshore     .              NL41::curtailment       /       
       NL11::ccgt      0              NL13::battery   1              NL23::pv_rooftop2              NL31::battery   3              NL22::curtailment       4              NL22::pv_rooftop5              NL34::pv_rooftop6              NL31::demand_electricity7              NL32::hvac_transmission:NL33    8              NL11::lost_load 9              NL22::demand_electricity:              NL33::hvac_transmission:NL41    ;              NL33::battery   <              NL22::hvac_transmission:NL21    =              NL41::hvac_transmission:NL34    >              NL11::pv_farm   ?              NL32::lost_load @       
       NL32::ccgt      A              NL34::hydrogen_to_power B              NL34::lost_load C              NL31::wind_onshore      D              NL34::hvac_transmission:NL41    E              NL33::curtailment       F              NL13::wind_onshore      G              NL11::hydrogen_to_power H              NL12::hvac_transmission:NL11    I              NL32::pv_rooftopJ              NL11::curtailment       K              NL41::hvac_transmission:NL33    L              NL42::battery   M              NL31::pv_rooftopN              NL41::hydrogen_to_power O              NL31::hydrogen_to_power P              NL11::hvac_transmission:NL12    Q              NL22::hydrogen_to_power R              NL21::lost_load S              NL23::battery   T              NL33::wind_offshore     U              NL11::wind_onshore      V              NL13::pv_rooftopW              NL21::pv_rooftopX              NL21::pv_farm   Y              NL32::curtailment       Z              NL23::hvac_transmission:NL12    [              NL22::pv_farm   \              NL13::lost_load ]              NL11::battery   ^              NL42::lost_load _              NL21::hvac_transmission:NL23    `              NL32::hvac_transmission:NL23    a              NL22::wind_onshore      b       
       NL42::ccgt      c              NL22::lost_load d       
       NL41::ccgt      e              NL12::pv_farm   f              NL13::demand_electricityg       
       NL33::ccgt      h       
       NL34::ccgt      i              NL41::hvac_transmission:NL42    j              NL41::pv_farm   k              NL22::battery   l       
       NL21::ccgt      m              NL33::pv_rooftopn              NL32::wind_onshore      o              NL12::demand_electricityp       
       NL12::ccgt      q              NL33::hvac_transmission:NL31    r              NL42::curtailment       s              NL21::hydrogen_to_power t              NL32::battery   u              NL42::pv_farm   v              NL21::curtailment       w              NL21::battery   x       
       NL31::ccgt      y              NL33::lost_load z              NL42::hvac_transmission:NL41    {       
       NL13::ccgt      |              NL13::hvac_transmission:NL21    }              NL23::hvac_transmission:NL21    ~              NL31::curtailment                     NL22::hvac_transmission:NL41    �              NL31::hvac_transmission:NL32    �              NL21::wind_onshore      �              NL21::demand_electricity�              NL23::curtailment       �              NL23::pv_farm   �              NL33::wind_onshore      �              NL21::hvac_transmission:NL22    �              NL41::battery   �              NL12::hydrogen_to_power �              NL31::hvac_transmission:NL33    �              NL33::pv_farm   �              NL42::hydrogen_to_power �              NL41::hvac_transmission:NL22    �              NL31::lost_load �              NL23::hvac_transmission:NL32    �              NL42::demand_electricity�              NL33::hydrogen_to_power �              NL41::pv_rooftop�       
       NL22::ccgt      �              NL21::hvac_transmission:NL13    �              NL23::lost_load �              NL33::hvac_transmission:NL32    �              NL12::wind_offshore     �              NL33::demand_electricity�              NL12::wind_onshore      �              NL32::demand_electricity�              NL11::demand_electricity�              NL34::battery   �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �                                                                                                                                              	              
                                                                            
       NL32::ccgt                   NL34::hydrogen_to_power              NL33::curtailment                    NL13::wind_onshore                   NL11::hydrogen_to_power              NL42::battery                NL31::pv_rooftop             NL41::hydrogen_to_power              NL31::hydrogen_to_power              NL22::hydrogen_to_power              NL21::lost_load              NL23::battery                NL34::battery                NL32::demand_electricity             NL12::wind_offshore                  NL33::pv_farm                NL31::lost_load               NL41::pv_rooftop!      
       NL31::ccgt      "                      OCHK                5        NAME          loc_techs_non_transmission 1v�   7     _      7     ^      7     \      7     ]      7     X      7     Y      7     Z   
   7     [      7     Q      7     R      7     S      7     T      7     U      7     V      7     W      7     C      7     D      7     E      7     F      7     G   
   7     H   
   7     I   
   7     J      7     K      7     L      7     M   
   7     N      7     O      7     P      7     '      7     (   
   7     )      7     *      7     +      7     ,      7     -      7     .      7     /      7     0      7     1      7     2      7     3      7     4      7     5      7     6      7     7      7     8      7     9      7     :      7     ;      7     <      7     =      7     >      7     ?      7     @      7     A      7     B   
   ��          ��          ��          ��          ��          ��          ��          ��          ��          ��          ��          ��          ��          ��          ��          ��          ��          ��        
   ��     !     7        
   7           7           7           7           7           7           7           7     	   
   7     
      7           7        
   7           7           7           7           7           7           7           7           7           7           7           7           7           7           7           7           7        
   7           7           7            7     !      7     "      7     #      7     $      7     %      7     &   GCOL                        NL33::lost_load        
       NL13::ccgt                    NL31::curtailment                     NL21::demand_electricity              NL23::curtailment                     NL21::pv_rooftop              NL21::pv_farm                 NL32::curtailment       	              NL22::pv_farm   
       
       NL42::ccgt                    NL12::pv_farm                 NL13::demand_electricity       
       NL21::ccgt                    NL32::wind_onshore                    NL12::demand_electricity              NL21::hydrogen_to_power               NL42::pv_farm                 NL21::battery                 NL32::hydrogen_to_power               NL34::wind_offshore                   NL23::wind_onshore                    NL23::wind_offshore                   NL12::curtailment                     NL41::demand_electricity              NL12::lost_load               NL12::battery                 NL11::pv_rooftop              NL11::wind_offshore                   NL32::wind_offshore            
       NL11::ccgt                    NL23::pv_rooftop               NL22::demand_electricity!              NL33::battery   "              NL34::lost_load #              NL31::wind_onshore      $              NL32::pv_rooftop%              NL11::curtailment       &              NL33::wind_offshore     '              NL21::curtailment       (              NL34::demand_electricity)       
       NL23::ccgt      *              NL13::hydrogen_to_power +              NL42::wind_onshore      ,              NL23::demand_electricity-              NL13::curtailment       .              NL12::pv_rooftop/              NL32::pv_farm   0              NL34::wind_onshore      1              NL41::wind_onshore      2              NL34::pv_farm   3              NL34::curtailment       4              NL41::lost_load 5              NL23::hydrogen_to_power 6              NL13::pv_farm   7              NL31::pv_farm   8              NL42::pv_rooftop9              NL41::curtailment       :              NL13::battery   ;              NL31::battery   <              NL22::curtailment       =              NL22::pv_rooftop>              NL34::pv_rooftop?              NL31::demand_electricity@              NL11::lost_load A              NL11::pv_farm   B              NL32::lost_load C              NL13::lost_load D              NL11::battery   E              NL42::lost_load F              NL22::wind_onshore      G              NL22::lost_load H       
       NL41::ccgt      I       
       NL33::ccgt      J       
       NL34::ccgt      K              NL41::pv_farm   L              NL22::battery   M              NL33::pv_rooftopN       
       NL12::ccgt      O              NL42::curtailment       P              NL32::battery   Q              NL21::wind_onshore      R              NL23::pv_farm   S              NL33::wind_onshore      T              NL12::hydrogen_to_power U              NL41::battery   V              NL11::wind_onshore      W              NL13::pv_rooftopX              NL42::hydrogen_to_power Y              NL42::demand_electricityZ              NL33::hydrogen_to_power [       
       NL22::ccgt      \              NL12::wind_onshore      ]              NL23::lost_load ^              NL33::demand_electricity_              NL11::demand_electricity`               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �                       OCHK    �"            +        _Netcdf4Dimid             $   �R�
   �&     Z      �&     Y      �&     X      �&     V      �&     W      �&     R      �&     S      �&     T      �&     U      �&     J      �&     K      �&     L      �&     M      �&     N      �&     O      �&     P   
   �&     Q   
   �&     :      �&     ;      �&     <   
   �&     =      �&     >      �&     ?      �&     @      �&     A      �&     B      �&     C      �&     D      �&     E      �&     F      �&     G      �&     H      �&     I      �&           �&        
   �&           �&           �&           �&           �&           �&            �&     !      �&     "      �&     #      �&     $      �&     %      �&     &   
   �&     '   
   �&     (      �&     )   
   �&     *      �&     +      �&     ,      �&     -   
   �&     .   
   �&     /      �&     0   
   �&     1      �&     2      �&     3      �&     4   
   �&     5      �&     6      �&     7      �&     8      �&     9   GCOL                                                                                                                                  	               
                                                                                                                                                                                                                                               NL21::pv_farm                 NL32::wind_offshore            
       NL11::ccgt                    NL22::pv_farm                 NL23::pv_rooftop              NL22::pv_rooftop              NL13::lost_load                NL34::pv_rooftop!              NL42::lost_load "              NL11::lost_load #              NL22::wind_onshore      $              NL11::pv_farm   %              NL22::lost_load &              NL32::lost_load '       
       NL32::ccgt      (       
       NL42::ccgt      )              NL34::lost_load *       
       NL41::ccgt      +              NL12::pv_farm   ,              NL31::wind_onshore      -              NL13::wind_onshore      .       
       NL33::ccgt      /       
       NL34::ccgt      0              NL41::pv_farm   1       
       NL21::ccgt      2              NL32::wind_onshore      3              NL33::pv_rooftop4              NL32::pv_rooftop5       
       NL12::ccgt      6              NL31::pv_rooftop7              NL21::lost_load 8              NL33::wind_offshore     9              NL42::pv_farm   :       
       NL22::ccgt      ;              NL33::lost_load <              NL12::lost_load =       
       NL13::ccgt      >              NL41::lost_load ?              NL21::wind_onshore      @              NL23::pv_farm   A              NL11::pv_rooftopB              NL33::wind_onshore      C              NL13::pv_farm   D              NL31::pv_farm   E              NL11::wind_offshore     F              NL11::wind_onshore      G              NL42::pv_rooftopH              NL13::pv_rooftopI              NL21::pv_rooftopJ              NL32::pv_farm   K              NL12::pv_rooftopL              NL41::wind_onshore      M              NL34::wind_onshore      N              NL31::lost_load O              NL34::pv_farm   P              NL41::pv_rooftopQ       
       NL31::ccgt      R              NL12::wind_offshore     S              NL33::pv_farm   T              NL23::wind_onshore      U              NL23::wind_offshore     V              NL23::lost_load W              NL42::wind_onshore      X              NL12::wind_onshore      Y              NL34::wind_offshore     Z       
       NL23::ccgt      [               \               ]               ^               _               `               a               b               c               d               e               f               g               h       
       NL11::ccgt      i       
       NL13::ccgt      j       
       NL12::ccgt      k       
       NL42::ccgt      l       
       NL32::ccgt      m       
       NL41::ccgt      n       
       NL31::ccgt      o       
       NL22::ccgt      p       
       NL21::ccgt      q       
       NL23::ccgt      r       
       NL34::ccgt      s       
       NL33::ccgt      t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �               �               �               �               �              NL11::battery   �              NL33::battery   �              NL34::hydrogen_to_power �              NL11::hydrogen_to_power �              NL22::battery   �              NL42::battery   �              NL41::hydrogen_to_power �              NL21::hydrogen_to_power �              NL31::hydrogen_to_power �              NL32::battery   �              NL22::hydrogen_to_power �              NL23::battery   �               OCHK    �     �       +        _Netcdf4Dimid             %   ���OCHK    �     �      +        _Netcdf4Dimid             &   �F��GCOL                        NL12::battery                 NL23::hydrogen_to_power               NL41::battery                 NL12::hydrogen_to_power               NL13::battery                 NL31::battery                 NL13::hydrogen_to_power               NL42::hydrogen_to_power 	              NL33::hydrogen_to_power 
              NL32::hydrogen_to_power               NL34::battery                 NL21::battery                                                                                                                                                                                                                                                                                                                !               "               #               $               %               &              NL33::hydrogen_to_power '              NL22::battery   (              NL42::battery   )              NL41::hydrogen_to_power *              NL12::battery   +              NL21::hydrogen_to_power ,              NL31::hydrogen_to_power -              NL32::battery   .              NL23::hydrogen_to_power /              NL22::hydrogen_to_power 0              NL41::battery   1              NL23::battery   2              NL13::hydrogen_to_power 3              NL33::battery   4              NL42::hydrogen_to_power 5              NL12::hydrogen_to_power 6              NL34::hydrogen_to_power 7              NL11::hydrogen_to_power 8              NL32::hydrogen_to_power 9              NL31::battery   :              NL11::battery   ;              NL13::battery   <              NL34::battery   =              NL21::battery   >               ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P               Q               R               S               T               U               V               W              NL33::hydrogen_to_power X              NL22::battery   Y              NL42::battery   Z              NL41::hydrogen_to_power [              NL12::battery   \              NL21::hydrogen_to_power ]              NL31::hydrogen_to_power ^              NL32::battery   _              NL23::hydrogen_to_power `              NL22::hydrogen_to_power a              NL41::battery   b              NL23::battery   c              NL13::hydrogen_to_power d              NL33::battery   e              NL42::hydrogen_to_power f              NL12::hydrogen_to_power g              NL34::hydrogen_to_power h              NL11::hydrogen_to_power i              NL32::hydrogen_to_power j              NL31::battery   k              NL11::battery   l              NL13::battery   m              NL34::battery   n              NL21::battery   o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �              NL33::hydrogen_to_power �              NL22::battery   �              NL42::battery   �              NL41::hydrogen_to_power �              NL12::battery   �              NL21::hydrogen_to_power �              NL31::hydrogen_to_power �              NL32::battery   �              NL23::hydrogen_to_power �              NL22::hydrogen_to_power �              NL41::battery   �              NL23::battery   �              NL13::hydrogen_to_power �              NL33::battery   �              NL42::hydrogen_to_power �              NL12::hydrogen_to_power �              NL34::hydrogen_to_power �              NL11::hydrogen_to_power �              NL32::hydrogen_to_power �               OCHK    ��     �      +        _Netcdf4Dimid             '   d���OCHK     H     �      ?        NAME    %      loc_techs_storage_initial_constraint 0>gV   J7     n      J7     m      J7     l      J7     i      J7     j      J7     k      J7     c      J7     d      J7     e      J7     f      J7     g      J7     h      J7     W      J7     X      J7     Y      J7     Z      J7     [      J7     \      J7     ]      J7     ^      J7     _      J7     `      J7     a      J7     b      aP           aP           aP           J7     �      aP           aP           J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �      J7     �   
   aP     �      aP     �      aP     �      aP     �      aP     �      aP     �      aP     �      aP     �      aP     �      aP     z      aP     {      aP     |      aP     }      aP     ~      aP           aP     �   
   aP     �   
   aP     j      aP     k      aP     l   
   aP     m      aP     n      aP     o      aP     p      aP     q      aP     r      aP     s      aP     t      aP     u      aP     v      aP     w      aP     x      aP     y      aP     I      aP     J   
   aP     K      aP     L      aP     M      aP     N      aP     O      aP     P      aP     Q      aP     R      aP     S      aP     T      aP     U      aP     V   
   aP     W   
   aP     X      aP     Y   
   aP     Z      aP     [      aP     \      aP     ]   
   aP     ^   
   aP     _      aP     `   
   aP     a      aP     b      aP     c      aP     d   
   aP     e      aP     f      aP     g      aP     h      aP     i      ��     ?      ��     >      ��     =      ��     :      ��     ;      ��     <      ��     4      ��     5      ��     6      ��     7      ��     8      ��     9   x^c`�`��Q0 �#  xE�     OCHK    �I     �      ;        NAME    !      loc_techs_storage_max_constraint �9�GCOL                        NL31::battery                 NL11::battery                 NL13::battery                 NL34::battery                 NL21::battery                                                	               
                                                                                                                                                                                                                                                                                                                                                          !               "               #               $               %               &               '               (               )               *               +               ,               -               .               /               0               1               2               3               4               5               6               7               8               9               :               ;               <               =               >               ?               @               A               B               C               D               E               F               G               H               I              NL21::pv_farm   J              NL32::wind_offshore     K       
       NL11::ccgt      L              NL22::pv_farm   M              NL23::pv_rooftopN              NL22::pv_rooftopO              NL13::lost_load P              NL34::pv_rooftopQ              NL42::lost_load R              NL11::lost_load S              NL22::wind_onshore      T              NL11::pv_farm   U              NL22::lost_load V              NL32::lost_load W       
       NL32::ccgt      X       
       NL42::ccgt      Y              NL34::lost_load Z       
       NL41::ccgt      [              NL12::pv_farm   \              NL31::wind_onshore      ]              NL13::wind_onshore      ^       
       NL33::ccgt      _       
       NL34::ccgt      `              NL41::pv_farm   a       
       NL21::ccgt      b              NL32::wind_onshore      c              NL33::pv_rooftopd              NL32::pv_rooftope       
       NL12::ccgt      f              NL31::pv_rooftopg              NL21::lost_load h              NL33::wind_offshore     i              NL42::pv_farm   j       
       NL22::ccgt      k              NL33::lost_load l              NL12::lost_load m       
       NL13::ccgt      n              NL41::lost_load o              NL21::wind_onshore      p              NL23::pv_farm   q              NL11::pv_rooftopr              NL33::wind_onshore      s              NL13::pv_farm   t              NL31::pv_farm   u              NL11::wind_offshore     v              NL11::wind_onshore      w              NL42::pv_rooftopx              NL13::pv_rooftopy              NL21::pv_rooftopz              NL32::pv_farm   {              NL34::wind_onshore      |              NL41::wind_onshore      }              NL31::lost_load ~              NL34::pv_farm                 NL23::wind_offshore     �              NL41::pv_rooftop�       
       NL31::ccgt      �              NL12::wind_offshore     �              NL33::pv_farm   �              NL23::wind_onshore      �              NL12::pv_rooftop�              NL23::lost_load �              NL42::wind_onshore      �              NL12::wind_onshore      �              NL34::wind_offshore     �       
       NL23::ccgt      �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               OCHK     K            +        _Netcdf4Dimid             *   U�o�OCHK    a            +        _Netcdf4Dimid             +   l{6�   #e     ^      #e     ]      #e     \      #e     Z      #e     [      #e     V   
   #e     W   
   #e     X      #e     Y   
   #e     N      #e     O      #e     P      #e     Q      #e     R      #e     S      #e     T      #e     U      #e     >      #e     ?      #e     @      #e     A   
   #e     B      #e     C   
   #e     D      #e     E   
   #e     F   
   #e     G      #e     H   
   #e     I      #e     J      #e     K   
   #e     L      #e     M   
   #e           #e           #e           #e            #e     !      #e     "      #e     #      #e     $      #e     %      #e     &      #e     '      #e     (      #e     )      #e     *      #e     +      #e     ,      #e     -      #e     .   
   #e     /      #e     0      #e     1      #e     2      #e     3      #e     4      #e     5   
   #e     6      #e     7      #e     8      #e     9      #e     :      #e     ;      #e     <      #e     =   GCOL                                                                                                                                  	               
                                                                                                                                                                                                                                                                                                    
       NL23::ccgt                    NL34::wind_offshore                   NL42::wind_onshore                     NL23::wind_onshore      !              NL12::pv_rooftop"              NL32::pv_farm   #              NL34::wind_onshore      $              NL41::wind_onshore      %              NL23::wind_offshore     &              NL34::pv_farm   '              NL12::lost_load (              NL41::lost_load )              NL11::pv_rooftop*              NL13::pv_farm   +              NL31::pv_farm   ,              NL11::wind_offshore     -              NL42::pv_rooftop.              NL32::wind_offshore     /       
       NL11::ccgt      0              NL23::pv_rooftop1              NL22::pv_rooftop2              NL34::pv_rooftop3              NL11::lost_load 4              NL11::pv_farm   5              NL32::lost_load 6       
       NL32::ccgt      7              NL34::lost_load 8              NL31::wind_onshore      9              NL13::wind_onshore      :              NL32::pv_rooftop;              NL31::pv_rooftop<              NL21::lost_load =              NL33::wind_offshore     >              NL22::pv_farm   ?              NL13::lost_load @              NL42::lost_load A              NL22::wind_onshore      B       
       NL42::ccgt      C              NL22::lost_load D       
       NL41::ccgt      E              NL12::pv_farm   F       
       NL33::ccgt      G       
       NL34::ccgt      H              NL41::pv_farm   I       
       NL21::ccgt      J              NL32::wind_onshore      K              NL33::pv_rooftopL       
       NL12::ccgt      M              NL42::pv_farm   N       
       NL13::ccgt      O              NL21::wind_onshore      P              NL23::pv_farm   Q              NL33::wind_onshore      R              NL11::wind_onshore      S              NL13::pv_rooftopT              NL21::pv_rooftopU              NL21::pv_farm   V              NL41::pv_rooftopW       
       NL31::ccgt      X       
       NL22::ccgt      Y              NL33::lost_load Z              NL33::pv_farm   [              NL31::lost_load \              NL12::wind_offshore     ]              NL23::lost_load ^              NL12::wind_onshore      _               `               a               b               c               d               e               f               g               h               i               j               k               l               m               n               o               p               q               r               s               t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �       
       NL23::ccgt      �              NL34::wind_offshore     �              NL42::wind_onshore      �              NL23::wind_onshore      �              NL12::pv_rooftop�              NL32::pv_farm   �              NL34::wind_onshore      �              NL41::wind_onshore              OCHK    tu            +        _Netcdf4Dimid             ,   ���G   �y     :      �y     9      �y     8      �y     6      �y     7      �y     2   
   �y     3   
   �y     4      �y     5   
   �y     *      �y     +      �y     ,      �y     -      �y     .      �y     /      �y     0      �y     1      �y           �y           �y           �y        
   �y           �y        
   �y            �y     !   
   �y     "   
   �y     #      �y     $   
   �y     %      �y     &      �y     '   
   �y     (      �y     )   
   #e     �      #e     �      #e     �      #e     �      #e     �      #e     �      #e     �      #e     �      �y           �y           �y           �y           �y           �y           �y           �y           �y     	      �y     
   
   �y           �y           �y           �y           �y           �y           �y        
   �y           �y           �y           �y           �y           �y           �y           �y        GCOL                        NL23::wind_offshore                   NL34::pv_farm                 NL12::lost_load               NL41::lost_load               NL11::pv_rooftop              NL13::pv_farm                 NL31::pv_farm                 NL11::wind_offshore     	              NL42::pv_rooftop
              NL32::wind_offshore            
       NL11::ccgt                    NL23::pv_rooftop              NL22::pv_rooftop              NL34::pv_rooftop              NL11::lost_load               NL11::pv_farm                 NL32::lost_load        
       NL32::ccgt                    NL34::lost_load               NL31::wind_onshore                    NL13::wind_onshore                    NL32::pv_rooftop              NL31::pv_rooftop              NL21::lost_load               NL33::wind_offshore                   NL22::pv_farm                 NL13::lost_load               NL42::lost_load               NL22::wind_onshore             
       NL42::ccgt                    NL22::lost_load         
       NL41::ccgt      !              NL12::pv_farm   "       
       NL33::ccgt      #       
       NL34::ccgt      $              NL41::pv_farm   %       
       NL21::ccgt      &              NL32::wind_onshore      '              NL33::pv_rooftop(       
       NL12::ccgt      )              NL42::pv_farm   *       
       NL13::ccgt      +              NL21::wind_onshore      ,              NL23::pv_farm   -              NL33::wind_onshore      .              NL11::wind_onshore      /              NL13::pv_rooftop0              NL21::pv_rooftop1              NL21::pv_farm   2              NL41::pv_rooftop3       
       NL31::ccgt      4       
       NL22::ccgt      5              NL33::lost_load 6              NL33::pv_farm   7              NL31::lost_load 8              NL12::wind_offshore     9              NL23::lost_load :              NL12::wind_onshore      ;               <               =               >               ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P               Q               R               S               T               U               V               W               X              NL23::hvac_transmission:NL12    Y              NL32::hvac_transmission:NL33    Z              NL33::hvac_transmission:NL41    [              NL22::hvac_transmission:NL21    \              NL21::hvac_transmission:NL23    ]              NL41::hvac_transmission:NL34    ^              NL32::hvac_transmission:NL23    _              NL34::hvac_transmission:NL41    `              NL12::hvac_transmission:NL11    a              NL41::hvac_transmission:NL42    b              NL41::hvac_transmission:NL33    c              NL33::hvac_transmission:NL31    d              NL11::hvac_transmission:NL12    e              NL31::hvac_transmission:NL33    f              NL42::hvac_transmission:NL41    g              NL13::hvac_transmission:NL21    h              NL23::hvac_transmission:NL21    i              NL22::hvac_transmission:NL41    j              NL31::hvac_transmission:NL32    k              NL12::hvac_transmission:NL23    l              NL21::hvac_transmission:NL22    m              NL41::hvac_transmission:NL22    n              NL23::hvac_transmission:NL32    o              NL11::hvac_transmission:NL13    p              NL21::hvac_transmission:NL13    q              NL33::hvac_transmission:NL32    r              NL32::hvac_transmission:NL31    s              NL13::hvac_transmission:NL11    t               u               v               w               x               y               z               {               |               }               ~                              �               �               �               �               �               �               �                       OCHK    1�     �      F        NAME    ,      loc_techs_symmetric_transmission_constraint +        _Netcdf4Dimid             -   �6�N   �y     s      �y     r      �y     p      �y     q      �y     m      �y     n      �y     o      �y     f      �y     g      �y     h      �y     i      �y     j      �y     k      �y     l      �y     X      �y     Y      �y     Z      �y     [      �y     \      �y     ]      �y     ^      �y     _      �y     `      �y     a      �y     b      �y     c      �y     d      �y     e      ��     &      ��     %      ��     #      ��     $      ��            ��     !      ��     "      ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��           ��        GCOL                                                                                                                                  	               
                             NL23::hvac_transmission:NL12                  NL32::hvac_transmission:NL33                  NL33::hvac_transmission:NL41                  NL22::hvac_transmission:NL21                  NL21::hvac_transmission:NL23                  NL41::hvac_transmission:NL34                  NL32::hvac_transmission:NL23                  NL34::hvac_transmission:NL41                  NL12::hvac_transmission:NL11                  NL41::hvac_transmission:NL42                  NL41::hvac_transmission:NL33                  NL33::hvac_transmission:NL31                  NL11::hvac_transmission:NL12                  NL31::hvac_transmission:NL33                  NL42::hvac_transmission:NL41                  NL13::hvac_transmission:NL21                  NL23::hvac_transmission:NL21                  NL22::hvac_transmission:NL41                  NL31::hvac_transmission:NL32                  NL12::hvac_transmission:NL23                  NL21::hvac_transmission:NL22                   NL41::hvac_transmission:NL22    !              NL23::hvac_transmission:NL32    "              NL11::hvac_transmission:NL13    #              NL21::hvac_transmission:NL13    $              NL33::hvac_transmission:NL32    %              NL32::hvac_transmission:NL31    &              NL13::hvac_transmission:NL11    '               (               )               *               +               ,               -               .               /               0               1               2               3               4              NL11    5              NL34    6              NL23    7              NL32    8              NL31    9              NL41    :              NL33    ;              NL42    <              NL13    =              NL12    >              NL21    ?              NL22    @               A               B               C              electricity     D              resourceE               F               G               H               I              curtailment     J              demand_electricity      K              export_electricity      L               M               N              ccgt    O               P               Q               R               S               T               U               V               W               X               Y               Z               [               \              hydrogen_to_power       ]              export_electricity      ^              ccgt    _       
       pv_rooftop      `              import_electricity      a              wind_offshore   b              curtailment     c              wind_onshore    d              demand_electricity      e       	       lost_load       f              pv_farm g              battery h               i               j               k              hydrogen_to_power       l              battery m               n               o               p               q               r               s               t               u       
       pv_rooftop      v              import_electricity      w              pv_farm x              wind_onshore    y              ccgt    z       	       lost_load       {              wind_offshore   |               }               ~                              �               �               �               �               �               �               �               �               �               �              hvac_transmission:NL23  �              hvac_transmission:NL13  �              hvac_transmission:NL11  �              hvac_transmission:NL32  �              hvac_transmission:NL12  �              hvac_transmission:NL21  �              hvac_transmission:NL22  �              hvac_transmission:NL33  �              hvac_transmission:NL41  �              hvac_transmission:NL31  �              hvac_transmission:NL42  �              hvac_transmission:NL34  OCHK    ��
             +        _Netcdf4Dimid             0   ̌��OCHK    ��     0       +        _Netcdf4Dimid             1   �z�OCHK    ��            +        _Netcdf4Dimid             2   ��?�OCHK    ��     �       +        _Netcdf4Dimid             3   ����   ��     g      ��     f   	   ��     e      ��     b      ��     c      ��     d      ��     \      ��     ]      ��     ^   
   ��     _      ��     `      ��     a      ��     {   	   ��     z      ��     x      ��     y   
   ��     u      ��     v      ��     w      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �      ��     �   x^�R���@=Eh� T��!VQ\���@S��������rg�������ĭz�(0�I���pz,�$Mp�`��Jn��"'W��q	wq�"|"���a%cbQ]�$Ȓ�sf.�2���1a��a`�2�d��� �j��W�y'�-�3��̢�LT����s�ͥ��8�\>�L�z��`�f!�TTD�\-���
�,ﵲExOZE��G���V��8�·����ǑIҁ���#����/�葫���_�x�=��?Hk)��R3����:�]͹6�:�� r��1I����=ͅP�R�E�r����+Թ����5i)��{Z��F��犛���y���������^qc�p^q�P�py�������ݟ�����튃��w&I���=�v	�d��� ��j�_>~��K��f�𓴍�˗?���S���J+B�8�H����[����2�B��Z~Jx^���0��u�a6�U��.�����1�9-\&&VHn�ٝ���b���˄b��V��	({)��o�9�7������
ɭ0�P�R���p����B޺G~� �Y�cx^UM1j�@�"M�\��H#�si���2u�<!�0="�
=@�1\�.D���F�����39offgGf��n�7{� ���En?"'=!_K����.����*9yW���y�� ��C���E�
zB���.:.#�]ϻUr�������;��8��3=��G��!�%�|ޭ��w���*��ނ�l��}���|!,�Et\F����ϻU2���;ڄ9�k����"�/�����/�%p���Ht�0�y�J����+���:��Cw���@˲3{*�s��9��K��t�/Sh�w:WJ�S7$O�� �4F�-Ƽ��|\�C��NZ��8^�۬ƦXrO��h!���"�mK�f��Ǻ����rt��IF���'����?>�����h�M��F��k���A/T�
������a5 �x^팻  C��Ѳ2%��!=JK^�a��i~"�*$�Vu�=E:1��Zn��v&�IBnU'��)҉���rp���@4��x^]�GRQ��;bd�Es�(�1����
�����t��������mu�����\������{�7�~����[|G��������~����.ޣ��U|��Q����	}��H���s�|I���oػq}/����x�~�}�}��q<�I<E?�>����s�E�y���R����
^���5��7�f��J�L_�[���;��*F�x^�L�	A���A�%X��t��e���#�4�����ٶ?��u��ms��iD��'朝�2W��N�Zɋ���LE[ݶ�>XvqҮ��d��1����L7���=�,\��z��E�R�D<�hP�T�l8j�Yj�}�H��NjL�i���D �����q�;'�b?��s�|�|���'��q{qx^cddd`�ă�@�>����l�6�j � 7x^c`HЁ. ?���� Q�$�x^c`�                        OCHK                 +        _Netcdf4Dimid             4   {o�ZOCHK    ��     p       +        _Netcdf4Dimid             5   u��kOCHK    %�     �       +        _Netcdf4Dimid             6   ����GCOL                                                      hvac_transmission                     ��                   ��                   �r                   �r                   �r     	              He     
              He                   �q                   �q                   He                   He                                  ��                                                                                                                                                                                                                                                      !               "               #               $               %               &               '               (               )               *               +               ,               -               .               /               0               1               2               3               4               5               6               7               8               9               :               ;               <               =               >               ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P               Q               R               S               T               U               V               W               X               Y               Z               [               \               ]               ^               _              energy  `              energy  a              energy_per_cap  b              energy_per_cap  c              energy  d              energy  e              energy_per_cap  f              energy_per_cap  g              energy  h              energy_per_cap  i              energy  j              energy  k              energy  l              energy  m              energy_per_cap  n              energy_per_cap  o              energy  p              energy_per_cap  q              energy_per_cap  r              energy  s              energy_per_cap  t              energy  u              energy_per_cap  v              energy_per_cap  w              energy_per_cap  x              energy_per_cap  y              energy  z              energy  {              energy  |              energy_per_cap  }              energy_per_cap  ~              energy_per_cap                energy_per_cap  �              energy  �              energy  �              energy_per_cap  �              energy_per_cap  �              energy  �              energy_per_cap  �              energy  �              energy  �              energy_per_cap  �              energy_per_cap  �              energy_per_cap  �              energy_per_cap  �              energy_per_cap  �              energy  �              energy  �              energy_per_cap  �              energy_per_cap  �              energy_per_cap  �              energy  �              energy  �              energy_per_cap  �              energy_per_cap  �              energy  �              energy  �              energy_per_cap  �              energy  �              energy  �              energy_per_cap  �              energy  �              energy_per_cap  �              energy_per_cap  �              energy  �              energy  �              energy  �              energy_per_cap  �              energy_per_cap  �              energy_per_cap  �              energy_per_cap  �              energy_per_cap  �              energy_per_cap  �              energy  �              energy  �              energy_per_cap  �              energy  �              energy  �              He     �              �q     �              ��     �              He     �              He     �              ��     �              ��     �              �n     �              ��     �              ��             OCHK    �            +        _Netcdf4Dimid             7   8�\�OHDR�$    N       �       N       �           ?      @ 4 4�     +         �                   �     N   �           ������������������������E         _Netcdf4Coordinates                              D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            \        DIMENSION_LIST                              �           �        �8��OCHK    �,     �      L        DIMENSION_LIST                              �     �   �׬          9�             =��WOHDR     �       �           ?      @ 4 4�     +         �                   ��     �           ������������������������A         _Netcdf4Coordinates                               +�     �           f/�_  9�            ��VHTREE  ����������������K�                              �             N       �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OCHKD        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              �        ?>OHDR     �       �           ?      @ 4 4�     +         �                   ��     �           ������������������������A         _Netcdf4Coordinates                               N�     �           �&  9�            qS             ��؃OCHKD        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              �        =J�OCHK    &�     �          0   REFERENCE_LIST 6     dataset        dimension                         ��            �            ��            �            �            d�            �            ��            ~Q             9�            qS             ��             ��*aOCHKD        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              �     	   8�w�OCHK    ?      @ 4 4�  \        DIMENSION_LIST                              2Y           2Y        ?�9          ��             ,�y�OHDR�    �       �           ?      @ 4 4�     +         �                   ��     �           ������������������������A         _Netcdf4Coordinates                           D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              �     
   ��OCHKD        _FillValue  ?      @ 4 4�                      ��Sj.                                          x^��?����OBHH����޲I'�C�^IV��=�w�J�B�!+$�{�M߮�������~��s���|=����u���*�QWe��ɂzg!vN���������\�N�����O:��w�!�ƨ�#Q�A����a�aEO�mz-fvy����f����t�
�IVI��_���	sG�2/`P:���Z�������}Y��,,�D�G
�4�-*��m6U"����De����I�����}����,4u����4�"�ý�uݮ�]"٭j��a�}�u̴�=��5D�sҋ��-�,G�S�2���^�x�"/(��u�2�.��.bC�rg�O~!]���Liʜ��S��n<[�<�
݅Y�8�����Y5F+��/9πSg��@�y�2��K��B�l�!ͺ��f��h|a9���Xj�� �d�쾾Fד���;6x����|��'�����9)9x��yx���6��i��	Mo���i��}��7A}��l��߾�j7�BvLT�I�;�{�l����qXmVn���'�\a�5�n]�H/�!y7\�#"�'t��X�~�%TuF�<d�a���M
����*��+>f�����Mne�:B/�̘���S���deR�{�J�$�N%���c��jQԱ�ޓho	�!{�D��xzyQ�	�F������6����Oe<�B��dp�#֚Kj8f�l��CEn,�<jlDb�Η�g�v�s��p�h5<���P����%��*X�Y�>�>ɪ�`��s4�e����|��5���k� y�����hybwhz�y��0iWb7$l��W��*���RB�\���;<VfJ���C��O�#';4�������U�����񳂔����*aF�i/˾U���5z����ދ�����"q��k��X��#�ק>;b���,��_�{e�2A�0����%�⢓&}����-Z�h2#���)�����n0���ɨ߲���uz��7/�K,�S+*w~�W���n���)#O��niq*fe����`E�� �&�ģ�En�<+L��f��>��W�6"{@�U�Kk�
�A��;��������c|!'������~��39"�����5QO��ū���IM��v3�Tzc��y~:��(�X�,_���I<�A���t���%f�2k	�I��w�4�zL���4j-��7�q/Ȉ�"[���k&�&�N̡�ƞ����W���#���b�5����.����j����yk���74v�n�l�/}�����7�L��\*��OD)�'���r�z��b��;�f�L�/�Z�-��ن��u�B�7�D��	�,QܴZ�h�ѿ
������i�	V��Zc� :5��CL�j� ����Q"�q�.�plנ��&Sj�ҘF�7�A�.<"�H�۟�xn1�?��Fhe� Bh��[�
b1��.�d]N�wE��.�^<ِ���	�AˇX�(���
�/ið�����YG��T��n��1���eQ�y�F�*�{nkJ6ζ��-�v8V�m\p��oD�]�v�Z��o��:��F�$��MZ^,Zyj.�p�ڧn����ǮJ!C�������c�����I��dR����&ĕZՓ:�����>��ܕ�g�$oz�������9�7�w�3�	ǆ�4���]����&����Dy~}:H�!�m��e��@#����Hπ;H�P~���r���������@���lE�8)��ssǡ�")V�]$�U�i��@ȴ7f��L=�@M�Yqz��F\^���R%�4�v��������N_ڇ$w'jsݝg�c�?�t�����%!y�Gװ\�D�X�%�c�w�aX����;*�8#mL�l��5����\xY��]�	ҋ���{���y�<�Y��E��dȞ�)����9����.�~�|��K��I`��%��s?9)�,�|�"�BM�lr_x#��ȓr���h���I�u_�����P7���ih�M���Y�&�	���BL"�1����n�ĳJ����V��o�!��@$X� ǅ	��Y�HЀا��Q��E���/��k��!�C���E����FO�b��b���}�wKs�
����9kׅ��,�u��E��!�<[�KS���Ϯ�<MVw�d�L�v����Z1Vv��5��\�a�!:v��c�����4 ڄ$G�(��4�FPD-�S���x��a��mm�'�K�b��MU�ivǵ�%���z~sG�f�jG��6�9�gy�=&Nv�Q˶Kt[�|��X�k�9�v�ϣ�/�Q��g����K?%����{�l��w��kT�;'��Ѻ�□���N���ӂ1m�Z��7>#!A������?t�Ű2�O� �ߍ/�=&�	s�3s���s�>� 
$j�q�{�e:)Ĕ�)@Z&��f��*l���XZ��#RY"G� �ҭ�C���N�X�U���ݿ"�g+.ğ)βs�~���&Km	����?\Ğ5�@˔N\�+�� ~��t65��B�~���h�,4��	#����ȸm����B=H�a���du.�� �"
<�X�"�lWm�S�,4�&����i:L!���@��ƀ���_����>���:!�4��A��qˑocD�t��[�񓬓[�*�]�^(D���]�5�)�}�MO�2�lFN��pq��`ql��Z�E6=�B�&h=uFE$��?�F��>~�s�o��7]���	a�uC-�f���dm����Y�kD~����o<2Td�/�r�W�ǩ���d�9���}��r��5�G��A���2�|�G�x�]�|d^��ee�v�Xo�>�����H�QP:/.�c���b���h1����Q�ɲ�(��� �74�+/viyY��n���� ���XEq�y��o������[_R2���� S��>��c����
y/T&in��'1p^X3��T�zt�@��cV�a����f�?�p��Ѫ �r�#�����$g�@?��H���Q:��n�lU^t���ּ�ޢO�S�� �\"����\����[T�+b�эu�$��W0�x]�F:�-�'n���cΗ���~5�Qˢ	O9c,��p���9�-BLD��1�!����g���HX���[~�t[��(1O"=I"�ǜfQa?���&���^`˗[���ɨ*���x�㸄pq��4=^�� ��N]��Iv����-C!����[d-�N�ׄ�m��R}'+��`*o +�*u����m���i�OK�A:���"���	^Z���ի����z��z�!fO�� �HL�;��������M��нṼWs��b��	)�6]��?w����ed��}��GE��I!BKִG>��C<�h�޷,�J:Z�)ހ�,Q��b���k܏y�3��ұ���"���/����_�����$eW��Ul���I��p ���K���ͦk��Ȕ �>�yK��;��:@("���@D7��#S tN�����I<D�-���L �by?�HXy$�(��Q�D�b��c��%@�? k�
��|K5ĩ�K�
� X�t!j �X�48��&k�أ^h��Ny�1DB�K�<+؇�AˇlP^r�~� ��ٛ���?��Y 4)�<)���w�!��_��u0� >0���D ]�n�q S�c&�&�f!��M# ^�~	��H��=D����'��@��B< }�q �s�a�t��#�\��?T���Ǐ�|��7�r �;�Wq\!ҙ�@罨?�c�ǳ�v�Jh=wFt?gUeGP��L���>�����,sN)|��m/���6��Q�;��͔�j���_q9���2��Q	�[��މ�M/^�O�t�:3x]��
K���[������}",b�R�ϳd���vBGk���U㹊�C�9\�Q���e!:��q�ۉ�e���Bs��z9���;Õ�f�pyV�@����.:MhmY�ݕ!���Y���$�Z��đM����G7��;/��]d�<~�I�`*FE3��,u��JW,�f�R�� �U�	��5 ��/a��Ԁ��	K��.Q���������R���������Ha ���SQ�g���g]�♏,��}B�U��4��}Y/B�;�~�wlU�:5e:sud�%c�bS)䚤I%]���}����
�[ݪ�ZD��n�̷T�8�Ǫ�p��Z�U��ݚ�qɈ]$�>��m��~ڋ�.2l3�w��+X���8�x�~��rɿ���;���]")��Y�v�	��������Gm�02��`L� �?�.|�=�W���uHA݀^��D�h�O5K���Y��Ж���6׌�"���'m~Ѐ:�R�]�2��뽜���N��xYC\��aQ������� ��v-B4%Z��r�m���:MP=�b7�d�������"��=ZFT�A��]/������eَ ]!���W%� �7�m�O�L��q ���mC��	
���ӛ����n����AW��[[<A?1�S�ϯNT@�;�
O7#���-�Ǘ�!�a� �F�ם���aIeh�;��igl�臒��e� t-#����m���WD��p[�Ǆ��E�.xOL�'P^
����J���)D�*��'�Y�9q%�q�ii$���z���܆H/ qI�U&8n]tiY���K���"���yp�j����z�&x~h�d�qMu��$^��Y���HS���UW�k��g;�����k:����y4-��ɂ�~X	�%2�߁8�?�^����[�F(���#�A��
�����#	�i�,��/	J ���C��\?G7����x%Џ�G��]������GƠe��+{��4��_z$�9!������
���"���8�v|�3GZ�|@	��Ϛ����=��ڎv�,��$4�Рe�X��Z�@�	-��:�5�[L�+�Hg��ћN��b��n�/5q���)����ҭt��y��j�&.����x[��*�v����fCK鴚��e�ٗ7bA�ɡ��y�z^��ˉf#���t�7l�ޭ̇�����A�^��L�y�+��`���9�.�]����'G�m:�M���I[���F\���tَ��@rW_d��
n'�[�Hl�]�K��;A�q'�� ��r�����%?��	VP�M_|���߷�#��x7�$���I��\�*������@���U	��Ȩ����M�/HO��'g�<-,"I�6�o�6�]en�1	��Ǻˇ �$��p�����*P����ڟc�9�K��M��Ӊ��¸�!?��ir�����X@| ��z�C���(��h��K���zVȟΰ*)�:�Y_�2�?z��Ղ��g��z�gQ?�c��%����`�84ޫ��U�<�4��;4P߀Cv��f���g@��$�O���D^M5��+ztb}�V����+���;a���|>{*ǯ��r?4)0^e�ա���0`�3ksu��O'V-J����V���~�Q؟�m0:�/�Ў��T���ˡ��ę:�'�_D%��5�\�{�+O���������5`�j���$�|?Y�<*���������hai�D��2�&%;�D))�������+٘<�
q}���i���ʊ�\�{����H�$3���,�kS�j�R�U�˨�J�z��*;UF���^��bC���jjʪ��\qe�4/�3ۀz�u���ʗ���ɼ&��*��~�֣mņX�;�L��K�^�ǫ-��'�a�{�L��	޻�콙{�Ls+w�(y��x2e�Y�jU%S�#\�!�b�sBHP[rzU%]]9�MK.�5�8m)�ּR�d�ŏ�h��(q2'�|�$�P%9)���i�݆�A�-7��}U��wiPE�>�S*�KG4�.k0/j��Z�L����q8��?�w4$��Ͼ�r��ѭ�z�9����� �ALւn����iD=}�����Kg#�bxYr��l�i��RW�3���יu<}�ëh<'*���Be����ʑ� {���jX�~ãxr���#]�H��t�#� �\O���>�Ǧ�%W���h����N.��R��]��|���ɰyW�	�#�0G)���$�<�?�=c� �����j�d�ٍ�G�R����Z9�����o���u���]'�����]5�ͦ{f��qZ��B����GW1�!�B��5�bx3����A_�h��p@���+�t+�\��|�mJ�,}�'��a���ֻ�y6�mso��:pno	��)|.k�q�G�_�O�W��E��W$$zX��������o��i>E�v=�ĥP_�f��`�r�r.��[�T̐.�iH�(J�ͪm��U�Z�J�S�T���X��$wA8��}��%�=z������;nM�h�m��;[a��!"��i8�ATi������;ö�{��[\��-�R�;�$� ��Ųu�7% �5��q+S29�wֺ�OgXNt F�ɂ����PWRSV��м�gV��@?im@}���Ǜ]x+�pvv��_W	PB�wAXr �c�xB����Q(���i/��+gp�_�n~�:���eq�(�w��Rh��z��ծk=�z��x�N뿪�*�m �ֿX�n[~���$��1��ŸJ�{!���P6�]o�=8��w6_z��7n�s����9:���΍x"ns�;7�+��h�T.�*.�zj���T�ct8&���Ux�YPU��W�i0�`��Df���v<���U�Ӗ�A:��������j!�2�^�x!]IN>�j(Z���𭫁=*s�67Bo�'��|E����z}�j�[�:��y�����c}+�ad��۸3��'G��bd����2:ӇD$_4�X��|���U�W�P�!bqRP5��ZGZ�|��UC���9��pF��;zOEwuE�+���1�f��b^	�+��D�n��>抲�� ����	�x�e��G��i�f�a�o2N�����\�mU
j$��
�����ݒ�Q%h�̋'��vdȒ�FS-b|����%t]I]&<�+x��'D���#�n�4�,��q����}�š�{�)V�$,��v)M���Y;��pb�7>�,+��h�]lݿ���ɋ��E��qѴf�y�x�M�^�9��[�5��^�y�gދ,u�^�mO[P��`K�LgI%�@�h��{7yK�l�8��J�=�"�n�e�ʧ�Q�i�O%!�*OS^�g��|�x���2G0�]�I�a1IR`X)5������6L�_yB��H��T���ϡ�_g�ɜV�t��K�}��5**�J#���(�֏�YA��y��N8"�?��=�HS
)���D�*��A����]ƬO��x�u�;��i�x����?��b��C���aTu��h�>Q��|��s��Ic��I O���'�Vݔ��jX�ᓶ,[�]f����۱�����ddmل��+G��؝�z7�)�?���	Y�J!��0j�%�I�h�;P�&h�~iK�ݙ�b�b�<�y����T��Aⓧ,_�4t��0��&9Vu�i�MN�϶���=���۔�}#7��t��Z1�?�S�3��%ĞmB�=<_���P�����'���o��_GB��u�0�c\v[�'͡���$����Κ�`�yޯ"�;)���?1���I���m�uE�R[�Є>��I:_��Y�B�A��)���YU���Y��v-�a`n�`((D���g1&��#"N?��w�x��gfT	�ܽg!G��z��M��!-t��b�*��
����e����N��^ѓ���/�y������[�t�)��>���)�:�RN�0�De*����Xt5�t�����h����S\Ix��]O���׵_���}]�{O�3�'�˭a�]H�J(��B6l��ngEME1/�����9�5�����jG��d����!2D�_��6����'���0��u������ɢe���*�d=r�U���\:N���ݭ��~WLY�D��4��?�N��+h"0�c?�gT)�t�)31w`���U�&-��)v���n
�n�s��"4R:�P�q�ް��>���J�Q���-p��U6.mi����J:�Z+���Ij�3*�rM_�FӃ���hO%8��\�-�'$c3�!3w�V;<�Qk��)Λ�����rQq=��-Z�ŕ�"!Y�ķN#�t:�x����Ǔ7;��m��2�W9�
qD�UI�yp�RC���ڧII{�%�����U�>4f!�}cL �ya֩9�n��s����:��&.ih�>�ܘ3B���R�1���X�9Rfd�)���'p輚�h�����V�
�B�G�V�\������ܽ����.A�*Zo~������%M���ٱٙ��w]�/��v]u�"�:ݢ�q���貃��ɉ��Y�҃��ۍl\�L_��zI:V#�C����AJ��H�n�2��c��!#w_�r�ͭ��dC��SΕzߜ�lݱ}4t>J���=�Xߕ?Ē�ui�ZE�#Q�N��&S�ʬ��W$�l��Q�U?��	T�!�`Ĩ��J�7��O�Y.2$S�HB4v�֌+��a��eE��s�|N�o����4�sw�����>��3���&=�c\YM~�w�k{P��f���>AԺ�_
oG�b��*BWfVv�ß���7�ۺU9�kKC�8_�6U����1!:u��1������A���H�W/�l��s��c��1�;uƼak��i�:�����k��m�2K��-�mT�1;�w�����c�����F@[�B�KFGړ���:�+&Q�Wݧ��ILg~*l�$�p�t�3�0X��\,�-jr�v��K�?M�?�v��u�}J���$4�S�+&�,�o\��ʏx�I������W3�E�t��Y:��~\��̍YS2�ob;�|�6ڵ �=����Q����ʇ�\��T���Bm
�8쵳%�i��5mjٲz�Ķ[�Z˹���u�錶�{����o獤V�eE6K���X�~����K�g�~���u˲��[3H~RNZ6�Em@I��42��H�V�vAŴ�lz�-خ}ϻ�D�*J��8m2��!�1����_������؍Eꑜ�o��.���ڄ=���_x)r����K��F6TpHa�Q������̘���J�G�Q�g�n~���1�#��glU����ylJn��v�\\�������a�R��`j�UϹ�8٥�|p�1gh�/!�����i�o����X������06�����e�/�?X˼k&�8RfK�+����C�t���U����h:�۫2Wބ�oju�M��g������^�����D`�b�Lj����~ep	�����ϊ��&�p
��4ք�tE���F���<��T��)��3+��\�-�H� <�4���&֯I&-���xܷ�(N"�>OZ�H�̶�Ÿ�e����uܸ~��ؾyq���3|��Y�J�T��}���W�5�����G�r�%��j��s3ċ���d���'q��n	�Ͽ��N��	K����R�)wrN�ri	|N4w�կ��5vw��"�����>�+����2����Lg^~��о �՘���Yq���a��OA��u/D�����^��漁f�{.d��(\��i�(@>M�ِ1&���
�������48��?�[ ߰pVW�;�0��.��C9�C��
#�<�)�m�o}*DM:�o�w0����k����{`~Ks��3�?�i3'M�����A�n�7E�>ǃr�(�#G��^p�P辊.#����Z1h�΋�o�a[��>��Pk'}B�*��5�~q��L�&zz���8��m�iU�ꀻ���S���e�M��f��.��6N�Qݧ}��M��S�p�og<e��������<]�ސ;nVs��m����)O�?��#��h���[��BM�_!��=��o�[����4�)�!�X���!������>��;d�-j�E��5V����u���gҟ���������:ɞS�ˌn�k�i�ݛG�z�%j�F�Y�A��l�����ߺ��`���췄��?6�R��L�����|���{�Gq������6�B�#���Y��4J��Rb����S���^ ��r���/M��Fs��kFt���僾[#�H~�Z�>o5K��e�w�&��5���[kܒ+���c*c1\^���5������$B���w�	�u�ft����$Vc̗Mc�r�ϟ��h}Z�}x�X�D��U�^��yM�㛎W1�v1����/~�,e����*6�~�kE�d�e�j�"�>U&�����=h��(��K�BEq�p@>��?��F�9D;Ήf�[h�M�:@��.Q�
�s�D7D�T�(���p\Xh�s"0���D��h��/:	gT!�R��L�lؠ�_�m��[1u&���úcp���E1�8N7�� NQ1By��Ԛ'4�<�3��#)
����]+��W�����}�u��|gpU_�IL�+z:<Y�Vs�t����c���8�mCO�6�a��:=�r}�	��:*��a���?��������������@[sN{R��ң�ɡ'�x�[oE�0�w��y�K�����4{h%�%�T3�K����m�/wVTI/���H[|I����_(e0�ٯ�檈� ]r��Xu�A~yx&����Q㎭�/����qJQr~�c���c������I���ߛ�2�]�q��{:c/��X�/Vݯ�!��z����o�}T?���1
�`~�{�J���+`�~�Z��U@�Yj	��
E���MD.�AR.����&���`�SOPw�+���E��,!����{�r���� 3�A����CіWf6��g�����{�L8�?N[OA��Qy��D��P���?��G��e����&	 >	�0�t�z�����"wh�̢lC��@8���ԃ�4��<���(P?U�x������0��8����N��>kؠ���|gXuJ
��g9�ȝ��䯀�)�bMb���^�fz�sD{<����A��I4��[@����1� �y@�`%���� ����(p�	����ken�����Dl���I<�׌.B��d�5�w��+�"�%8C.`Ώ���5G$zU�ތU�~��S�`&��z��q!�A�,�]P�����+#����@s\2�xH��`e��ιD}��-��͏��w�ä�YZQ0R(,R`�E����+��6L������I�ߎ0p�U�gO[cȖ/��t)wQ���m�8�C�7b,u�k�]Vg�%�$Z=܁�k񓍞B�<��6#�[���
����,�����Z�:��^�\_��O=wf�SJ���J���EyV��tm�|Iz����ԋ����9C#l)�ܜ/7*���Pz�'��(~i����W��՞+��{{>7l���M3�J�	BC�0��)��v��D�}1��Kw�t_�͡�q��M���5�;��B��0�zG�:o������<�	�W�G���4�YL�k��+%b�Q�]~�WYQI|<[b�]������5������Y>�����ݻ�
�ɚ���K7V�ڿ��w�q:4�����*Ndո0�?������ŏ}nk�s��8�<�A7o[H2P��������J�#w��6|,{�ػ���=�O[a�l0�`鏍������XϽ��yD��l����M��h�k1x�P*��G�m���1�S�y~_�NeA��	��v,�i,�-�_O�(H(r��J���?/�!��G��~y�X���R���v�c&K�����;���}�Vi_K��;+�����ϐūt�G���z�?'���b����@oӓ�P$Yف|W�|�O�V*�9�L"��1����x���0�+�����3˒��x�v�1D�\��t���='�����} ��� ���P��(��2��K8~�VI.ľ�^�g�TA�z���9t>���1h����9��"]fgH����ݤ���h�2qA�$�R	�4��j�3Ǩ^���D!؏")躕�:�?.10ږI��+�2s�q���@�둕 n#S��m�t'���%��J�&ȷzw��u�#��|�h���sN�h;q7�@���|p�\:o�3)4���!J��c�8@��թ���%ʆ��{��w�������x��}�7��O`�|�O��u(N,UgI�m%�h�U'%�peϢ�\��Vj�q��]�3���{��b������~|��c���P.,Έ_E�N�E�%���b�����~�M�f���K��X4��QRt.O�π�/w3���p.��,o����*���z�1���,F�_�?����m�i��i�AY�u������l�I�U����j� �,O�E^��{�;�͕�[�m��t�t�,��&�p��x�F&/���3DRW-l��0���ۧ'�Ǭs�,��C1z�<���yr_`&|^{��|sU=���������M8�?��(�1�²����l�+N�Y݀g��j�]hY>%�ۢ�y�9�"�po6!�S�˾#�s>r��Ψ;B��s�
^�5�W<�e��nr>_ST���;t�Q�/��4�"q���������"��xY�1����n�~��	����H�W�؏l�k$o?eI�a{.�jۖ��W.����������j0���~	��HP_�ɬ �Mߍu	��P?�� ����]��Tē+���t��=uq�����A�󮹴3A����o+��s�K(��iS��,J�����W�;�� �S�/dB�}��~/��KJf�h'���J��g�ˮk}�"N܏�J.���jp}��9p�k�P}&�5 �kh1�H_E�����A�}�@^���O��'T����@�{GWo�IT��|�䉩� >�%Ń��H̕��p"PW��q%� !��=���t�H¡��ET�<��1��9��^	xO\��@�cƚ@�"g:���s褶x��X2`܀��8�\	�5�Tp��c� .!"�m�8��E���#P� �%au��4P}?GT�z���x~l1�`�9�8.�K�RG@\RAe��E�C�k�b��z]�T���qP�;�<����p��]�C���l���zٖ�h�e�`>���'h_�6�P�����d�/�C������������/���).��*[+����Bq}іkn��=�IS��_��<� 2Sԃ�&�y	�p��s��SP;.���f��]&�@|�=3�%�>��nqB�*νZ�ы/���Z�����Ȫ��������kì�-�y�Z�{k&0�CD;�����3��S��f�K�~��:���4ۥ��l�m������ N2�WYF"v�,���kâ��*'B����>ɫ��7A���B�"5]ֳ��� �����ȻX�6�z�])"3��NƗ��m++���)�D)��r5�L��a0^z�O�D��)o�Mi����cPD3\j��u;�w�wl?��m�ߋWzq�����i��c?��v�و艉���;�T��}�F�I,��0�z�Ӫ��A��l����^资�&ȇ���@��U��
�G;��	�;�"8������"���x� �D�SyjL�G�{@��P�v�Pڟ��%�&�cz�$0�������80���� �wF�=���.���h�o���η�@�^� �'��t=���u�; �DkT�|��u�^�,�ɳ�B��)����4�̩�y;��y�f�6`d�g:�LB�|��*�W1'�1�E+�$����,�q��̡.�|���4娪9�zE\�#Ż�y�Gn��Y�Qo�2�N2Χ)_}1��Q>$J#�>�J	�jF�s��yN�
.f����-�8�R�B���S��/j@�WQ�v�������Aγp?�u����O�~��-�J����:�z��5�X���v4�5�%�u�=�W]/-t}���i��̨����ҿY����N��m��7F�,���U�=�~��6����߳r9��q�_����gp�bW�n]5�+}ƃ�V��n�"8���S����s޵�:GE�"3�a?чқ�x#�8��u:�f�&Z�k!x.�*ܢ������b�U�Y�:�+��X.ʳ���/��Qɗ��%�r�ٹ�%��o��<V$�M����k�n��X�ɾ��+����q��]��;_��2����O�8��+�W�35���y����[G�e�mW��O�F�|�{��͕'���A�+z�)ݔ�4(�j��Z�~�,�|P޸1MH��-R�.���|�i6�݌�7=��7�����+��OD0�\2�q{&�j��>��g͞�{�h��c驃��t�+M�ct>aLg�������}|�u��o��P��~m�������[%�r�'����.Ӳ��oG��
˱�O|�(������@^&�c���c#·�仒C�p�i������so,_�s��܆wF��nv]�;�g��x��t^گ�W��l�����*�P���Y��x�Cz��5}�IF�/o;�xO����� ��Wm0�M�m���(h��~c�Ic�w�:��C�n��;��Ev����c��Q���(ֳ���n�=��Ʉ�h�3�!��U�{���y1㔔xN6����+pY��$��������t���4�Uu�M���ia҇OΈ�c�uƧ�v��	������T
O��b敍@��ئ��pc9j������}!{M�td�yhHA�����LO�l��1C� o�IG�8P�.��J�
��7Q����ܩĭ\v���IE�?�1�^ ��V�pP�s��3���w)
�g�@?+.W�!*�S��XӅ:��s7��v��A�W�Oq	��vK@��"�>1(�,ʦ��+^c4A�&��'�i�;�:��]����v]��s������&6��~t�O�o�R(/��^����r��4ZR�4�ۿ�Z9�p
S���xQJ��G������L*ff����d����YˡN[t���;��H�*ه�6n��D���>�k�r�cEc����aK6�yZ*���J���V�w񙏍�<mBG1�%�Ar�Z�/�;Z>��g�c��*vj6$�]�4ڸ|�gÐ�3�xAV~�_�%t1�͜�U)>�˕(�L���Y2�fX=p;����$�yziυ�}�¥�Y��͞7uj��X{o�>L���\�"Q_���E������w���̜�2��	<0RBW����tR=�W,�s�x�0���
b������W��a�2��<�3C��R!�n�:.�Ri2je�~2Ft���^����*�C�2n���xJ��"G�.�R���eZ�{�m:��{o���d����)
-��Y�u.xJB�����9e�*̍S�n�'���������v\����b�誡��o�!�}N&���t&���=]J$�Q���{��~n�󇇎�T�;\����9��<���*o�/��B+�6���]��kv�`z뚴����p��јy%#J��*��7?l����N���?<+�d4ޥ�b��~��.p�����F���
�W%�k7�{pG��g��Q?�sVW�bǴ��x>����q��W�A;w'���~�]�%�?�]ß��Ϥ��ݰ���o=H�	���g*�1v�������u����u<����G�>�y7���'��Z�Y?ֈ�)����5��E��s!E[�3��56BK���� �GO��%M�&o9I�v��Osh{~ W�q�>7_9wp��+MM���XV��p�Wp�����ƾnrY�CF�{�;���$���k͒=x��x<�U������S�-�尙���I�KM���#�v�C;�c�{�)G��Ѡw�\l�^�W�[cjƇ��+�
좙\�IV7��ݫLF�·i���t�ר�w�%37�%"Â����Z�u��r�n� ʲF-ͺ�.�\�����O���_I֮� ,pv���{����Ȧƽ�Ȑ�ŵU��i��$���XeJ-��I��&^���G����2y8XC8�&=E��_��� ލ;�,�z+D�~�t�pÏX����T�[(����i�~C��u^�T����u��t�.���3GZ��I\)�L	k����r�]�1�{�=��sM-q��I
���V����i䏻�j#>��Z�L��gj,*���?��c�s<���k�����w�,�&n�&�=*�{���M�J��(��V��gWdQF����eG�H܉���c��!�s7]7���+��'�X�R7��Xƭ�)pΪ�Ph;��%����?6�
���QU5��p�x��GޅR�[���g����e��lX����}�H����A�!�UX�+=��MZB}�Ι��Ŀ���}e���_�+"C|��j�A�h����:Ak���խ�=��ꏪB9�~7ۮl`��6���p�8���u��O��蓆Rk��u04盘�wI��#��
�6����c�!I�n�9K*#��?�ّyk��[7��E�aӭ'����؏o2��Y���E�$��XT���Zhr ���7Q�6)�,�^�6�ij�^� *�+�un%7��`�o����<�]��Ov��+��Fߋ��AZ�X���~s���1��S����An{���s����S��f���΄�Η>���@ތ�%�j-�`�yEt�ט=A&���r����%�ծ����}��]�`���gKu��
������ܻԂ�hD�L7h���$H7?_�X)������j����M��	ե���}���V�)��[�~+�Jk�$����z�+ˈ��ӽ2���w<�1�.��DG�!���2�<N�������s�'#��ۨ��s'(�M&E�*c���N����M���8���!U��iX�jq���5������P�b����_�ɹэC�r���|r�K�Kc���H�g��'T���:.�=�Ttt�b�����a�,��x���{Je\"1.
��̜��Ή��~~�ϐ=�vNR,�&_��?�c�N�W�ng��,��;g˻��j��@�&p���Fh�N��^�x`J�pY�2k�w���ɿ}�͉�Et��0�5!{z��>���KlsM|W�ʑi�u�Y�A`�D)V�����.���M^�+�����U�1��Wb昵~E<�#J�۶˘��؍�h�V!E����"�k?>�"����Q��i��%%z� �r0KD&ay�/�C�|f�إ�{��K�
c#/���M�IMӇ����P���Z��e��C�ޝ�Yt�G���Yf�8�=*z��h�D���0)�������}������ddee�섄C�	�{��M��Ide�cf�q���I���u���_�~��s�^��>�u?������k��r1�Cŋ���%�ʳ�s��Os�w�X�^��ӿ�T������,�&E���ұ(�����-���D�^���Ko�E��껬�B�E
�k!	!(��Z����C+�j���>|�C9�̎����Մ�����a/�nت�$R���ß3�	����~],&�}۲��xr�e_LP�Q���$	2B.���fz�҈��Ă�L����5���o��$u^S*����1���Δ��KKە�o�&V�8�r������P�����es[y�Nq3N���xhu�C���σ���LS��X6$k�6���R�����cR���-���rM��e�"��+;]O~��RL�#ҪB���%6���Q�����;�4?��jچ�ߐ��п�x`���!cNRUHr��}�.��oj�y�{�̐��LP�y]��O�Y�~Z�lƴ�xl"N+�Nӣ�#L�K�cT�F�6!�z����[)���/���0T�U�r�
�3��`g�s�SɄ���;�/����8�㽥=��3��F�P����b�u�av��i�w�c�dB7��>����0}c��֯��;�*��d��#~�9�X���p��|qt��>��D��?}��K�2 f㑉~��H����|Kc�R�v������A_�j1Lk���˳tf�7���r��ӕ�_���0�2xʑ��11ɠ�ĕ ���8���x�2��81��$Cz�q��'�4�@��������0�lc�[m�әeP�5�-
�/�K�C���@_�I���|���~�,P�t *\�-�{y3��DZ'T��B2�Cu;{#��]44�e��b:��V^\��3�j�$uF*͵T^�뿴��No��\��)�!B�oKT{P��:gR�	��1�F7�����'�s:�%��z�б��Xo##0�0��T�B�VU��Q��Բ�e����ᐙ�O��G�YO}��Qa�F�ʻ|c{G��_��[EWj�|�#mك�������^��`@���#B��㏗=n�|Z^-[��d);oC���^+p�:ײy��'+)gϘb��}����i��u�����a#��DV��F������#O���v>ŋ��"��J���f�G�T84����*��P�gQ!<zw����*k�� �۔��7�����*
���9�Ȥ�ѴLJ[���� iJ檯$�l%�&&Њf�O��O�U>>��K�IoA�u�����Cy/;S1fE��^:�v�9��	�&�YT!{녶m��C�3�� �_+~�gX�Ke|�ƚ��-�W�ܴ��1�Y+�V�nos\-���l�m����o������·��Հ�/��4ȇOڇ���鴙�<��98�{9y)>����9�B��,�dQP!���h�E�h� n��c@��.i��i� .�B�@�u+���nF@�� �>w!� t&�#P��ߝ���vm�!]�@�C��8�<��&ՙ�:�5����d�R�g��P�(��8R�?��Ih-��%���l��;<��D������OQ���=?z1�-"�9;����S�9�����KiL"�t�U99���_s^����`�Z�������{'��p�m��cU�wo�b'`���g2�P���?�&&��ʡ�X�p��~�WYy�찺���]����*������9�u��X��a�r�V�b��BZ�� ��|��w[����tI��ej��$��c�	�q�I�l�Z0�尥���k	_%,�������Vk�lZ�퐏ӕu��b��n��:��]*� _��%� ol6
�=@^��i.@Lpr��|��@W/���!�wi� �5$D��>��t�S��l���M���0OCu� {:�wX%�={�ԕ�fx� t�5�l]h�.�Kрt΃v'&H�������͐*~�!�t8��@ �*:��M� t�K5��:D�yR��)��8�_I�B��\���`��]p�d�� zlz�48g��	x��b28/�^� �e3��'�D�����ߋ���G^q-�O�m��h���J-�?XN��׃3��1,��;/7j/��q�]d����dY[�;�7�Jfĥ��X.�~D�,?z��Z�����|���8����øK�p�8���|��G�o��p�:��L�CG|�����)�|��4��-λ�;|�O�(��~v���6=��	�+�;�Kmr�68�G�m�π��B�c��b8_�Oq�e8��wܢ���͆��֛�^���t;��~��s�96�m)�-G1��y#_zaC�g��>1�m-[�!��FG_Ξ{�٢���`��9u$ۓy��	�c��%������\��ݰ˳�=�1�|��"�:%�Ӎ|A��j[��"�^��hQ. ��K�P�5�u�,�K�g��� 7�H��2�E�x�(�^����v:�sD���n��+ҠEw7]��~�_��s�����A�n�ô}F��	Zܱ)ڭ-T5J�������>
��_(�V�����1�T׊by���!�Y<1/�����L1rd�é��km1�"��m���\;s@�3X8������<똒��d�:C��<eh���'�1^y^����+����	s��=�~��q+^���j_ԝ�زv(�&�z��og�Gn��g5�(nƭ��f���glw̎RQM�,R�2?u������)w�Cls�V�V�X����Ky�2�o��r�{�F���]���IyU�����|�%�-���|��e##�Jo�6���4�H:@w���dUD$`�����7d�y�C�P]�K�m���!���1gݎ�b����h4��%�=Z'Rv��zZ{�8���q�Ly��{N NHr���  ��t�@~����n��8��q|M��XH���{�P?��S8�'T�9������c�0M� ��
��C���}���l �3�á��f���k��Np�� �O{�1d��zT����6���4�����D2������熋ܜ�}�st� O�i���Lk�kq��Gb��w���3r���L���m������^iB��C8c�\m=�|�8��k6���3堿�����Uȷ����saK@���0f��lmx� ��3�����m֠�cB�T���rPW)-�����k���-W������Y�0�Q�_���z�aR������?�t�9K3}�M]�iB޼ٙsBèѐ�؟O�a���TN�;iF/�2q|g��e.�o�w�I
"A����c(:bb�J]�.��P�|il{ H�1"R�V�z�"��Ԩ@!�w� g<�7�S�d��gR�".0-����Be	MO�#�G{B�Yt�\�y��
Ns��t�~�		"�k�`\��	S1���:��u�������$?�(̾��V̻v[�4�g>������Б�Kej1��+jS�G�4�Q>�4�o��2ƻ!��e/�V0��~�6h���i��a
���j�T�����X���{n���흥I�,���u�8������1}om��<�i��"�|����yV�%���3lOɇ_r`0��V��>�蚔�_O�;^ĺ	ްVu^ٜ[x���T�3�����U��]@���J��q?�ͫNk�4|�c�^�Q�^���EE���o��a��ǃe�W����Y��m�Fʟ��!^au����K���S`����N|������`�^o�����ׁ.a���7#8�h�C�/��|�b��[�|*��r����{�J`�ql��k�5:��Ӧ��=��o�4�O���V��-������}8Q�l@�(F�A��謁��J�� ��A�v6�k����Ϯ�]W}͈f�����J��x>�u?0^��O�-���sM�|v�_�M�?���y�ȋ��@<r勂}�b�\�g-
��E�V�z|E, ~��� >ڌn�<����bL>(��L �P�)�zMA��b%���� ϊ�!�<��w^&�S�Xf0���p�1��	s���p.�W��@�R�W��530�j���Cc��<v*&�f \<��p�%�>�'���X���&Q�sN�^�>� ߋ%������ �/bw���.�롛���s�]�����C����Ͽuх��w�Z�Q4�,�y���R�W,�8 �3<��E����Ϯ���u(���i(F��������L%���� Zn#�D�g�@G��8'VC }��c�'n n3y�!^��r����z�[�%9�hl����d��~U`�c�����\�Q����
�%��/����!O� �	��C���&i�P_� ݷ�$�}�u=y�X����Ԛɏ�²8sׯt\�a����	�Y�U���^uBp2����ܶ�bݖe�>\�Ń�_�	��xz3�v�Q|DӐ�e�-�S<�4�>0/�q���w�c\�����k.v�~�RZ8�U.\a�D���Q���D�ǻ(C����O�ut5
��a�aά����Ո�I;H�٭�Mr�,v]A��ez��noS�a���Pԋ�,��|a�}{:��[ώ�\&	��+;�?��m�1��yr_����N-'4�ӎ�A�����h���Z�����]1@�����n��mD�z[W`@�M����|l �ԟ� yjZ����Sx��z��	�?���p���1N�������%:��nӔ �� a����L� �tP0��t�(���� ��^w��O�`��~���dC�%���P��́�E5�~��皴c	��:��F���.����)w��j��	���˘�:�W|txþ�g�։�w?:��`�m����b����{�����h�i���I/�+�}�v9v<��(��7x��]=�7@��ԛ�Uxt�Ƴ�g�����sf҄q�笚=2�ϲ�B]'죃���Iu��'�F�~$������7�<V$ ����q�W���?�I/b����h����=��(O�������ix��%�||����oGjkܠ��S�g���d~��ZS��5EY6�������o�:���N�/���E�d�۞,+�Lj����X���~���P��}�e.��.�k�b����ʟ��������t��@���.am��F��C�a���w�I�û�lw���s���֑��m� ��M���scm����hw��.���1�&�\＋ז�M$vL������������-�N�R��]�3���]B���(�ON�g�L�+�@�S��-��6�G���Fs��ju	�t�ǫL7&zG���[��"��j�C(���L���%���T��l7"8R���f����c�E��ׯ��3��>�q%U����l��?��Gb��7�� �eь�˜Nv	�E[PG9G�	.��,��a�*�ޘx|
Y�y/����W��쑟���h�����);_����f��m�gum{H�9��猙��͉s7+�#�
I�釫֣qD���һ�;.�Xk��_���u�w��]'[�w�O1z0Ō�j�ji�}jDa��s���ކ�u{�k/�`������Y�J�LC�Q�	���M�p�C�����Ap��W�"wX��H]2�8u
�<*��uoଟ���س�}�R����Y��#팚�Q������',Ϳ�}��,�8&>�`���p��95J#�n!�T���>-8���5y�9�f!F�f#�{��EP��˭���Rlxh�+�#�!_o�ʛҚ�K�YK6�zc�niCo`�/�������E~�y������� �'������r�J �w}�@���x`���������ic{x+.��;����L��G'�@���
 �#EG�����3�bbȻM\ }~�*���U�}����%o��A���O�����3|�(Uj@���p�_����� �,_�Ԩ�އ��캎���u�S�g�G"�$��B���E��U�ljv�^�'l$4���}b,�Hc��$ob<*�r�%,��mZ�ӽ5���4?O/PHav�\m����X�N�g*ݏ�|V˟2�=���۴�1a�M��c��j��|�m�
�����~�M&�����m��p��h�a��W�\����o����l!y�K�a�u��N]���xO�%d��>"Z������Qzl�����I���ٶ�����l�m��@#^�V�Ԯ�9��Q��7O�����S����+��R�u���T�V�JQ�-V�:3�|��V�8���R�,��c�OܛQ�܄�?�T��x����_xF�Ȩ��f���.M<QW�s��J,�1�nes�_$oQ�{̷H]3R3�\n��5�aFlz�+�.4s����"��1yp�1���\�H]��V�`7yIVn^�[��i���V��<Y����Cel�f�����M�F*��g�t�бe"�߶�����+7��f�8Ȇ�Y2nK�3�����EarV��!��	���O�S�����϶�l�1�� X�'p#�+^Y�b\)YD��<�{qZ�Ѩ�Ȑ�����n��|�-���l>�A����w�i�_��w�\/p�\�9ɫ�gL%Lt�N��l		��ˁ��x��Ag�w��,���OG$q�a
mz��Y��n����X �ӓ�?H��&p����Q�	$�f�X�v�8(z9�����0�O���,.�����[֜��׵z]u�$Ӽ��,~�zIT��8�`ӡ �g��W/�c$�4G)6<�p�$�Yd
.�+��/���$��*���^�Uu�pi�V^�������"��~֍Ԝ�5�ȡ�E�:�V���6E����N�W�9!�t�Vf�����	���������*
��HՌ0�er�v�˭���o}"����CSFn�$)�7���3�����3�ǘ�|�e��7�]0��n���p�ݜ��QpX.��,�g���|79�c���'s�u����)CB�j�+���b-Y�[
���5�}�=í���{�3�ZS7�w��N�ΦW�GR�-<E�d��uLb���"�#��v���c�������([h��,��<���\;Ni�kV5�f�x�-�måb�;��EO���(�^;)����c/�û�N�ȢōQ�ϒ=F���8}&>�$N�t5��>�u��F���z�M���Q���%"��^:��|P�u��@?z��A��J���3<��owv�e���D���2��*����������^�}������{�Z%�e��~�u�W��n76%�S�b��p��)�I��be?\k�����<^��|rN{�w^Y�]��KP��}�v0~�p7#=H��ƭ��Q[C��P�G� 6;AȕaK����]=�'�q9�a;V���8E��z�j��"8ݜ_��J�E����������eB(��/���+���y���й���p�Fl]Z�>��t^MލxO�-��w4��W����]6bdB��Eah�
.=�5�Y쭷z�>V@3v��	^��OuW���Q�����.�[�o��{|/��W;"�.'PV�q�����;�Y�5O'���J���!(�kmc�-��K���%o��%~��B���A�l!8ʾ�]��҂�0{$��1C/a�8W�~��`U楫K��-I��M}�M8ӻ��m�T�8?Tbh�D,�/ܤR�[��>aO���	�<�̟u�3%�R/�`�Ku?+�A���m���Y���r|�_�j<]��r��DL��ھx����/��v]q�(@!�)6uB�O�S����K���z��l?��9��B��?�
��%.�0_\��`b��������.�e�\��I����AE閨~؏}�Y�]��9g�����EN����-W~�-�GܝX��6R�x�޼���X�of�/玓2W�JY��;����^�����m>	U*H�,�1��q�aX�n���c��җ(��"�����S�v�����r�$�*a�R�2J�|���=�	+zіS��_20�;�}���*F��X�=���-����	�́_	�b�p���T>~t\I�@�<c�x��3���E��_u�dHa���Y1UeGSYb�O/RX��ǅ:nw7��4Ab��o��[��qی�{s��D*�%�Ss?9��pWY.qg̿w�5=��S���'9�5��0��D	��w*�}~v��%s��[�^��^���^���G+��b޺ySy2�Q���)��w%�6���2�)��>{�S����LՌz���1����+8]��(���\��Lp�S�*)�R����Rl���^UF�edA2NA���}����B9�OQ�����Hd�/s��n3�;~������)wx�ռ���L��;��ޅ+o:�+��N񷕮�}���B��<�+A�?���#��%{䏩��t��aY�誘�?�9q}�G,�
m�.N_�n�u*�U�|7����3��|��C�˄��Q@���g���B����k�Iyg��`�<m�' v��h��j?�����,��:*�z��25�6>����"��܅�`j��h�gs�vH���d�����;����,E���j�2Ϫ'�?0v��6G�U�1�2�U�,}���w��n����2i6N��p�Q�!F4���i�7�nD�>2�*��(�n(V�pN����Ӛ���)��;I�>	���a�����R�O�	s��͏�(��=*���wi��G��BW"y#��fR���!�[Dv�u&zs�+�S��4�7ߗ��r�%�M�*���t;�To�z��������̃9_7+�8|������+��Uk~�w��ȓ9I�q#�}�_���6�7r9��M���/�k���X}_b�^izx�`�R�����!"Vꍥ�n���bo����CѬ�HݩjL��V�`$*��=~3M����WZ�b7<�ѭ+��F�|�����v��lQ��Q?^���	YFA�ʨCy*��}��+��r�s�j=�����	�X�(�M/q�i����LP�*�Ux��f�i7�d�/�� _`�<��x�C2�3+Ɂ|c�&���������<M�4�ދJp)�����ȷG	Y ��t��`��K����������c�/�x��A���n�Ei��<=�
[z�B�ʛP&�G�B#͠q�|�N�z^�G�4T�CZ+������M�P/i��]�MXtcvr�N��"1쩞D@k�?���[��Z�(�Z�MB�4qx�ryB<���W�'ۆ(�^�\!���;�:�>���"C��wr������ue�; ���}|�"�{�ip���O8gbLF\���h�q����a�|0�e�(�0y<���S�A����R��������TW�dG�"A���^��ʯy��19�}���#2����._b�zΣ�v�O�4�TL�ٌ��%������Cƈ�S2�Ge�,=�QCkMd5��W�@�,�wkv�*D1��Hs;�z+��п/Q3o�o������؜`_\�"�WS-�3���rD{�LC��$�����R!ָ$/���:\Β�s�%�l�x�����4/z=3�%+]�Vg9���uA{�5���h���`b�;���Y��nb�WK>mrZś�l����O�^�������"4��\v���|1��&��F%�����v��v��퀷�����t�>a�T�|�@���.�|�k��φ�sȇr�s�r>�_�y:�h��}h,`��Ș�::�0T�E����E3�qs�� ����}�_;E���hm�uW�����.����R��+^�:Se���(@}]� �HC5`�B:
{�ӑ�B�P�9���O$�~%�w���d�m���k����+�K_�&�����6)����N��$ˉ$_�^�s�*WK������d�Vl�����~S�i}[y'�^(�eRgj��S������*ys���c㣞�(m�DV��z�|ͩ�i���}�����e(�I.=W]�Y�@��^NN1�$G�CŹ�^��ұM�s�ёhuR�HO�=�����4�WzkLԯ?<{��.h�7��}_�SC����Y{_2���.����46Fg#m��_pב#�_Os�;��\\;�Ǵ5QPW��}��V{ ��m��,��(|�����|�:�w9��\8� =��\��V ]]�^��F� �T�Qcb�����c�|� �������@ud�R �R�@O.�ue���?����&����*��Ή ���a�Rp�ax�'��K�O{���d�ʡ~'�ݕP�F��:��!�O7��<�� ��6
��tf���L�u��58��9l�8�'����T �z��@>!����l��EW1�O��B�O�uZ|/RqC`#��@?Mp(�1�`�~��]��H���W��h'Џ�8�X�@�@��$�����:Y�N�Ɋ�N�m�T��7���2b��뇬�f��2��U.0�r��}�=��~���Î6��ւ�p|��֣ŔL�NGǬ����%9so�p�ЅQ\�5kz3O >tdH���XV�����9�0���0�,�;��c���f��@q䉸���%��׮.؞y�`B�=t���DiF��n���kjڥzV���~��Y�H���>��
i�h�Q��?{��K��{��a��z����kN�1��}�$����`\p�hdE�TΦhJ���#{˸���6�j���0��/��5Ջ��X��ݔ��腣�6R��g�g�S��>�5}18��Q��H�r_�^�����)��7,WS����ʲ�k4�?����?��4NS��o�}���3^q!T1�U�G�C���Fm{{;.�&p����R�7����"{8RrYTzh��߲���Ǧ��}�9\�@aG��<�C����a;�2Ǯ�4�w�A[oi��L��V�J�[+��:|����b'�X�ޣ#	_�{�������b&�a����c�1p��<e):�s�K�.}��϶^K�G:B5e��ô�:�GNac5�f�����?	�F�"�F����޵T�%u{�:nuGͳ�<+f��?:ݘ}ra>rG����Bk����M��ęl��($B�������s����B>�-�
��>��Q:�:Zܤ�	9����mʒ覷�3��X����"Y	m�����?���1�u���}���\����m���]Op� �;l��@^Щo�< �G(�w�l2��ɱ �+Px�� �"8>mQ������@Q�O��B��	n�MP�Ɨ�yL�~�ߵ��]��+���9��]f���DT�:���p}:9#�O��=����>(_G��@�C�X�A�����(���t�Q 7�M�@�� /ȓr����� �^Ҁ:�e&ȏ�N���Y�� \��I�+�����J�^�$ ��>l�pt��4�#l���]�U |Ec8��V<�򭡞�\�5�P>�:ӷ�\�MD�y΀ޡ�|��/
=A��"��T@]��zd�_ԟ�R7L���+Ç��[�'��ާ�&��Ə���덝��n�9T��!J3�R(@��E_J�^��J�Z�����hʨEU�y�y�4^O���3 s��הF2��(8��՗I�H�����5n���W����7Um�n�u��W�Gy�'�9��������v+&N�^�ؓ�ez}�(Xk���h���!���,I���x�vjY�4��O���k�j����[TE��4D+8�V/�����7ǌ��KRp�Uv{�L��+-�|�L�F ��=�M# 6���I\�M���0
��T���V�L�m���#�v5���Z�*~F��̧��T��&���|�L�5�7rN�M<����W�����=\�c޼�{]�՘I>��'o��~�\���;ǰ��d�O�B~蚢��I��
���G��1�W=윟�VU��A�j��Ns<�
���rfz�:���k�I�u�
)���iT�*���2�A�ɢ�6wd�k��
:סnnd�_Ӫv�+��)��T[N�౉f\-���Z���냸�N|ը���2�}�n�2: �8[��J�@�@�9���J�.W��{�KӀOقu;�4�^��\�(���!��w]� |٩`�_.�	�6j>�<"b;�}Z+ ���G�m����(��{y�!p_�𻮨�=���Wt���]/�����i�����K�|��`��B��>���0�5仨���^�`|6���?䡺�� /����h�d�	��*p�-�<`K=|R�zU=� ~GUl>ڰ�@��Rn��~ǨiX�u�*@W�sa�+�q���D��9a7Q&����재@�!ԕ��h(�*#�=��# �с}�h��)��� �D�/�y&d�w:x��1�:�5��5��9�X /��Z ��
��Ƈ�\����7Ƀϑ3����$o|?��z®b'�?� ��U���~����x��v(�o�Z����iE�iRh��1��}7.߅���������DO��a���er|�`��Ѐ~�r6Q���/�!����	��N�����Ԁ>ѳ�%�g�[ ��3��������-�ۮ>�ף�`2����V;�m�@��5��>�+B�߰�l�xm���\x66��Q�G����� )���\��d#�x;��'��=@r��MNH�/�)$�W�#\��@�&���-�X�$�����{}65wY�ֵdՀ���ic���D��L%c�})����m�@�Cm�F^�s��h�@�&c2t��a'EUu�VVk��E����B&'$�\E�")k�(w�JT:�#R�~i���lz���:��W������d��"�+'���Qz'�*���4hί��0�'k_����$��?r�XO,�6?8;bƛ��x=J{��m�94T���X�*�����.�0��71*�r���Ԯhv�s ��#޷W�74��.�A�F�Q�1���	:ȇ�X��;$|��K[4�G{�+
�[�j��~B@�U����Us> �$>'y�Z���t	��[�N��oz�ॄ>��`r��ǐm�1�N S
zm��	�7�� :����4�z ��:�;�I:z'OH�")H�G��A��J��6����:�P��>���6�U���x>)�u��ν�����W�����+�;��oN�K�4.�z�����	y^n�Qm)tw0�9�c�xQ��mS�>�5�+�w�sA�[�����������o�|-�&���M���d4�1��ʟ��k,}W���Sme/hOk���k���yɭ��&��w��-��E㖩�!���&�2��ޯ����;�p��܋Jבn�	'�ˬ��6�����od�N�&�ֽ�Eh�w}����j�����qY,v6K?Ī�W�=9#�#�86"<��d�p�����0���g��5�)|�rW$�[;��?G���@��qk�ț��!�S0l�Y�s�ُI3�ٚݽo��2pz�UNs�NgZk���~��;�5,#��λ�i_��$~6E���#I1�JG�gF����V��Y��Z��W��^�<�\,M�be5��jdp,.d|������|HE���u�lD���b<����?n(���,;BRۨ-�l֝��[
��O���3�z�Î�w�S��K�w��H6X�Ef�e��~eC�]-$Y�ݺ?�J}�!�@n��ɢ)���j��K��oM�I-e���P��hQxG2�Y��b�c����	���Ԁ{J���i0\ s�0�g�3x�a�ۈ��R,�ʁ9���^RK;��FHA���C�I��諛��N��U>�	�`�=��-�O�����r���z:�
PLG�b�]V]��z,�=�g�}yx�yЖ�,z�M�BR<��_���u�w��]'�S���~���J��������t���dy��k�o�/����	�,*��N��b��߱�x$��H��s-0�z���]��>��~\.������b�#N}�Ćg0�q;W-�u���=�	���)ew��r���|��2��6�X�8���|s>����ubA�E���_�`���.xH�x�2�R
C�sS���B����V���������y���7���g�=ڶ�
��W\��Q}񡅻"�+P-�����1{��Ȼ�}-7�_=S�������FL�8UlTtp:�i�?m� o-� z��?��Dd���	��i��������V,�O>��i�S�y��m�3�fC�A"���j&�j���+*�@zJ_w⟨:7qH_A���y�к.��*~��n��g�@'��㾮v]�����!���<룵�)��|:\wWA8�3�Ѕ��7r����/Z��^��+�p���s�V�5`�S|�1������t���3��O���Ο�˰m�}a������3$24.|�����zX^�����&��yi����{����l�"����p���i(	N�l�����>툋?E���nM�W����s���涕L�N�o����?y�a_Mfp(i�GY��>:��R�U�G*�z4����+�i|��cQ�*��?c�H `�d�ѡ���Z%���qfQ��m��<T�܍�T�fأC�g�r6�݃G�bO�~�I,����DO��0��5'�_���P�h�n��#�Zǭ���O'���~�Tp��[������7{T�=�]��,���9���'R�RfY�\��?,��sO4H��	����|���l���Z/�߭�7&����}�+���{�N��W�y��{�ъz��7�.*����V���h4��c��d��0�-�Q��
l�l���ʱ�����8폺l��J�jSp��o��D�g<���`.��0gO���7��'5da+�ߨ��a���X]
��~ƕ�tZ&���/�t�����H�G$�'O�f�<�<-}�g(]-�|�Ae|���ȝf�[O����(G	��h�\���ͳ[XZ��8�p�Q�*ʹ@H��T�y��O8M�����6�κD���o2���Q��1�8!&��:�X}�фF��˭�X�0�[��Vۢ������b\]H$�ܣ��u���׵z]u�A�(���dw��Hq.gG־P�O�G7Q(��%U32r dȓ�*}]N%X�.$J��c�I��AUQr���I��8�J�������A)oA#]G�#z�'�_f^t��cRj��U�[Q�v��O�j�c	c��4����uyj(��0�Vd�
��z	|��҄Dv��M�Ξym����IDl�����Y�~癚n�P�����'��M�3dZ,�:�{$PNM~��]�k�E^���xOP�H�6J�f�L������~�Њ������x�q�~���R��1u���^��7|lo��k�_fd2�� `��{k��Il��]�;i��E�ch���󒡱�^A��%��/��b�qN/,�S���$�*�8W�S�g�F�a�.c�89�	٥c��Z���}�Q+(�Yd�܁+K=j�.d��xrj�^w�ex�O�7��>|���w��ן�?��66U��ORy=C��<~o%d3Jg�^[�D&_Hn-�EU.OK��`�I��y��.md�T^� `��Ӯg=���k�u����{��O��L�/K��,_�{���}��m9�-�z}�'�iNu��q�>���p6��<������ګ��}_żX��"q>�&�#�	��~������H/���R�����n�v����K�_~��m��?��\�W��懛�%Žᔍ�T��*w[e�e��S/O����+S���U����ߐ*"���2��#���\�7-�Q���HO��u~�z�k�0�"K~��3���ߦ��g$�}�k:�9��ԕw�J���gfhƮ��}����eȂ�C=s+��^q>�X�`�0B����^!�O�/���c�䱯�w�Q#ԭ���m|��F�}�#'��0G�f�m���kJ=K<��Żv8��ץ�L�lo�y �}�79�V�!؉�E'X����g��e���T�����%�j��xT������ɆB$mN�����4�W����{z�(E�
�?�5<�>Q���;�(�}ͅm��s�h�>��.�$�+r�bE�<<�p}
�(�L�#���z���uűwXg1���4o&�Z�d+�Z����P�4�+�4-�����3��z�R�y>i�Y��3PB-�nU�����VH��njtU�n���<��뙚_�4���L=�b*n��u��O�5mV,�G�M��i_W����M�{Q�bJgG�U���Jt��Eh1�{��[�<U�3�5ft���>���>y��B�P����?�R���f�}�4�����˘��T41/�#{�%��F�)]V���?�=���;=O��=L��y.ʋ�O~���\�#�]!�V�����\_��U*���[1�;�It��=6|B�^?�w�L�!�`]:[P\j�g2�N�'\���T�h�z�g�ǵH�h.����;���I���F!�~Jj2#���n��ʻ�p���f\�r���\r<~���e�b�O~�|�oY��1�`��$��P,wI��[��F�=�K���G���+��� ���Y�k���F��ňS9%�o��=J���?+o������h��[,ᰨ�%,���R-���1���*�:�uw����0'*�`e0��q����z1���ᤣ�_���x�&�U�>�]��/�E�ˣ����v��H��Ң�tr���#���5��	��SPƧ�/�bs��P�O�ǫ_qO^G��ٻ]��i�XN�7s���W�ZS��|����݆)��Yک���(��כ�w���m5��0���̉��L�T�\��*�K6��3>���=),��|�Ӫ�c6�`)ăؗ���\ZqDl�^Y�>�m&1��߲d�����o0mw�Y�MM��_��ɇ��R��i߮����J�cP��jӮ������="�v��C!�p�	�l�҂1}uR��������3�oi����S�e��_�'�L\���}4+)=0#J���s��t�&��S���%���6���N�Y<�y��	��]"�-N7sc1pkЇp�E�i(���)�T�=���BX%�n���A�.�#�ȏ�(�߂����8��oi�A[ɞ�������~�̿&v��0(?{�F���^�EN>cS�+؜q�����1ODv���]a%�&R.T�z،�~<���I����_{�A������G��p*�(��_�i]��[u��1yu�?6N�5�/���a�u�A��v��֌�����ۼ��a��"�"����ց��;�U;�UnZ��y����+˩��7[՛����Y����?�x��n�����&�+/b�~1�/��Z �(����sRf��Ӱ@^����)MB��l�`�:SB�(�70�@����8hj�U�Σ�	齚�2�@#]��6[���gx�7R�:�n�$��Og�� u(��&�I3BK	�I+�.@_�!:��۳�����~�����!+$�^I"I�M�턔�l�d���읎�e&I�^����8ֱ��q�����z�?������k<������~����<A{(n��B����,4/8����EE,�A(��xh�4v#�J^�q<�aR�U���#8��aT��}E������B�MD�Y�aeKJ�V���3/��Z�����k]�$P�?N�V\3c�ym�y���W�ti�(^h�Zǁa��-l���*�K�+�+�7_��C�7����g�����s��1���h����T��q�y+���1ac��1�s��|�n����A(��ĞT��(����h�P{����?���������">����*�/�X��h�j3��Oę�}��`T��.�N�������"�A_�#�:a�7qk��c|���>�R���F^�Qmo�7�X]bR�\Bj�9�[w�3hП�]��=y&,4n^2�N��-����+gt߄Q�υ��I��m�:��,D�F��h^�J��L󍽽�L�!�V��Κ��m���"!�
:,w�v"��g���.� ���8ς˰&(�'g�9{�А=���`��8Y�Z��0�������D��388����u�B{Q�RFiՌ��}������0�W���;���/�-���R4��d�6��x-�%����h]�WK�q�c��ΰ|��	H�A�7_���Z�T@��Y+ 7=�yP?�.��kjZ4����(�w�pu����������6�p g�w��bi[��.mn�bp�\�{j�Bq�c�>�g�ⶥ���1��>�[��K��d������R�V�#پ��7+Y4�n���*{p���*L�,��y,�ұ5�f;D���/�Y³�fƍ�}|�1^&����#r�R�����L��o�s����?5�c�>�o9Gc�f	�5X5w�5�%֖>���r��Y�銓CU��������}lY4�~�%ƃ���pQ[�F$��+�%�!��:mI����|�y��E�?h��0֢(���#�����WD�:GV����/��������:����	plT����� �*MS �@c�3���	�� ߵ�Wô�N��w���B�- ?Ȧ&x ƋԷ&X� \Y�pcS`�u�r �h)��P`1Z �8d �*�Sԯ,�Byd���8�;&�t��h���.-�?*�*�^��L��4r<��9�)^KA�;����2�8�_��xvT���F�T�sseyl^C�Qp.�@��8��:T�s��7\ԯ`�``<��k �В.
��
Q8���0�cc�mE!^]I��z+� �J#�_��6���s#u�Ii��LFu�u����4%���y#=A=P'�T��%��W8J�#S"�s�x�$4x�ʊ׿���Q���s<���ȥ����Ղkf��\��b"�u̝�Ԕ����-#}Z��ڍ���ᦳ���r�?~^��M�Xm�c�|kAa�������̸H��_��jQd�"Y˴T4��bU�S_Q�0�+�H={I�s���2�1�ת�Z�"���Zq�yX�'��с?�>�@��gY�%�l���m㭑����2���I��4Z���{�j�~R����!��E�{�("L�3=�:0���.������D�;_��y})�ax�2��&6��Wd�寤�[�<�rE
��W�Դ����ْ��Jzb�I&�����k����=\rͩҗ^9�Y�����Z�&Jc��ݙ��O#7c�v�e0^�-#��@�.�R��MĔ�֣������P�sJ����S�/?R����\Pw�r��MOO�8n��&���W_>��>{����N�ɦ���'z�P���]�7���dh��ML�]c�U�7��Hϗ��Rln�/��:�����Ji���~ތٲcد�=z@6Y��q������#G4n�!�w$ղQm���G�M�X�,���Qp�S�Wm�L��2�C"���C)��ˌm�߄d�Y�4��'�J:�Q��9��"�-i{l�a=�S�R�#g��$Y�7�V8m�}��(���g�/z=��J���H6f.�%�6�r��1�{����m��TF����!���m���gW�����(4��D�)<0鉠m���>�@s�+\���]�{��q^�mqϯ���*X5x���?)t�X��;�=�@\�����ɫ
��Z��7�3+���8�Ci�8`_
E��O�b�S�ea�z��
���	q8���$qL����6�}>؆B1�SF�`�}g�Հ�O�[v��"����/d
�iQ� �f�s��ux��9ԟc>�&���	:!�/�'��#����噠��c��I��`��)��j��<F_c��,���}�^���GXB��������A�Ri��ûk�9>G&�[�8��ݎ3��w�E��]ng�n�� ��PI��wZ�x�IQ	�sZ���h���GpK�8�_8o=�Ouܵ@����� 4�$�z�>���w�|��<�����|8s�ܵQ%eh]oI��дbU�ŞR_��!Mʖ�V�m͛�1�Q�'D|���|��N��#�֐�fR����.�ͧxe�`�iq�v���WaZ�����+�Gn�E�3�E��,v~����*ŞQ�Pjŷ�H̘7���]T#!%�M�kr�vj	�Ŗ���7�j�������y�e�V����n7w��Q/��"�\;sJ>�w�{�1�����ˋbG�V��d�A�`W�%k���&�X�ø���,j���J���pIL����%�W���4�	y\�l�2�uP|R�h5&���(#g=_�}d��#qs�Xy��t;�K��{�f��=��ͣ1�d�҂��#�r|��)��5_*k�Z��ۍ�M;��c;��]!$N�y�#�5�#�m*��U��M8}@@��It���RE(G�G �?�6E�����Sg���U:w���瘬�]��b)���3�v
�r�'Ya%d���]V4��p
v�����-$�J��ч�cye
�8���lD�WM��@^��pY��/D���Fs \�q�����=a��?�k�UK��FG8ط��Np�~�/h��v���lPw�7�ej[���� �7'G���4� �����q���bN��8�����7�� �Rp���UJ3A]�s�&�~�I�����#-0�R`WR�����8��|�s!|���5�I���#�`~���͠5�CQ�� .&H��A<���	m��W�!��U
&A{	*�@~9���>��
���|�p�P$@rOP~��.��Β��:&+��{�"$�Mx����eܸ]�� f��ps<4�<'&�8`��5��^9T�uJ�$I`'�8�:���y�1
�W/�k�4Z���4�_B��	�ճt�������x��u^�I�I:`�{Z�����7,M��i�@{�J�;���|I���k�B�6<��Ͼ�O�Hӆ�!�P�һQr�� � ���G��*r�I�굓F������rWPO�0��"[�k`l[J@pP?i��D5wՀkr9/�o��#�/�c�z�@n�h �.$@��~ks<�3��˖�>����&���k[��sKk��>�{��A�,'��%	��91
��BDP�<��*tT�v��R��BP�Ȉ%} �)��`^'�o�P
��|�jv~N����������l�����HI���1,t]��z�(ki���Wd���n�<��'��=��S�����|m�k��z���_w%�h�ᷫ��|���T�ؕO��1�n�*��{ݬ�cC�O�����PS�l&�h2��&�>�PM�ͩ��o�}֐����Q����f5���ǉ�:=�`�Wf!�קx�l��y���i�����F�%�q�5ǆ,vs%XM����C�����I���R�5��&`��i��.���L�<�s;�����&�>��R�NP��@Cp���?�8�q%���!ĩa�@>:c
WH�8����i���^Rx9F�{��>�5SH��[�Z��ݜ��J�� �0�?pc%�O��i}Ë���Ѵi���;�P|��k��k�Nu��7�%'N�Gݲ�hۓk���uGS��{��|�ɜ�6+���k/��V��-Hw0��w�0�aq���圝�F��"ח��-��nrW�MK3f�F�W흛�(��AF��=��Չ��뉐����梧�bi��$��6���\-����� �Pǁ������i���\��\CJSv%��9��7��	�����QS|Ď�W/q��Sz�Ӫ.kYq_/���Q���ڊ��xJ]玾���Z��Cߪ)�T� ���I���~�'��V����������h��] a"�ŝn�{�hx�u.V��`ˆ����Ŵ{KI�L��֚��^�����޻c|�՝�Ԯ4#+��+��e�����b:��_f�(��<~�_?,U$��;Ā}��I�����7U2��wS�vI	�\����C�"Rգ�X#����\��Q6�[����Pw�DH�Җʟ�|�R���Ѩz1��﹈���p�@��τ*���T��;O������]X���L����_�k�[�w�	�����O��QN�foez3tUJ.7ύ3�-}���9'&�0�;b�K��SV�W��LD�ӵ�)g�	���Q�'T�FJ�a��.�����p����=�C~��.�uk;��μ��䒭�,�{g�m�x�,���V��>%J{��'�>L��)s�yW_�Z�~~ƈy���S����Zw���
��Nk��@�.C
dֿ�|���i�t�9�z�Y[G�y�jI���]"�z3����  �i�_����Q��w����j��<�ɢ�Z���:�K���׹W���-��e��^c��^rٰ�w�`��#�?�<ʌ���ީK�.Q�I�.�>^��R&\�,/,q�4��J\ܔo��v�=���g���^��(H�,�Ne<~�����������{+������^V�H�zNz�ѷ�F`h~�Ϫ�}60Pެ�id���5$�o�����Y#��+��S�;�����N^���?l$Ѿ׻Xx
o͡[ڀ��ӅƆ�u?e�+^-�lܚp^��9��l�^��B��@R�<�@�1���g��nB\�+ĉ�M����vj�t����i��4_�~+S-�;5��&��Gz�8�_�	��D}}��5(�]O������Ӭi��؛a��ѱ�䣓f'!�OG�:���ro�S�� <�e��+��G %�BA�IC�o�/��8�ɜ��������SOf�Gv	/�2�u��7�W��j7&J�1��fJO�}�ڑMV�U�V��e��NTV�%'�f�zU
�5����mƚ�� �IP\mB������q��� ����hPg�?���{���*m�g�%"[���)�zDf6�P՗����(z�?��z��%������ �W�����Y}`g�g�qa�\э��
/=/��K����@I�@ ���{���Xr>�"屸XR�sZ���T|��N<�3��cS���e0/0��׌D��#F�i�J�4S��^E�O^����ow�^&x�N���<6B��c�9�("�[����Eۈ`eH�!����m�ã�f|	�mԔ�S+��{�or�賻~���T�	���p�('��2�	�� �<Ed�}���.e~*î�l��ک�ח��{h�v���D~�(�%z\�8�+&]��%]�pP_R/a�k̴&��!��@`�E�iP��Ȇ
�'Z�7ƚ�̤���k�:v���;��g��\�ֻ�4�=%^������2��l�6Xf����s���~f]�{S����K+D��Z����Zf�)��F�
��Q�޽�W���=�m���٩����N(5T�����<�5���R�a����sg�;	*�%���R�-�����ڥ��A����'�%|�8�6u!mN7�]yA�(P?pa�BHዃ@�R��圧�^<�/�S�sp��%y}Mw�Q�j���/B�O���NH�ND��4�)Ӑ����i�ȮW�:���Kښ�f��KG�����=����|�$�����}�ʨE�_<��W�<���h��Ӛ���זt*�i/�%�
_k���hKX𵖄mr���F�f�c�I�0��w��u�:����FN��i��ݛ��'6��9\�oW�=s�b�b�\��$�4���[�e]�\�&������U��s���/��^X�S���{<!�Yy���}z��0Oqq!��,]C[ﺏ�݆%�^��%.�(n�5�zI�_�ΛV"<��ޒk�(4]�,g\�=���o?��ښlk�ݢO�[�V)*T_�7���?�ú����Isa�2��Y�^�.�ݶhS��io�5���+��w�~{+�j~��x�or�(S���3UQ-И��Qb,��G�G��@��L����a���'¿�T1�M�L���ƩmE�GQ^��ޗ�f��6�B�)��\W��I�e�p�U�b�:cz�qTʸ��\*��k��f�2{��{C)K��r�T	�O��\{h����;R�+��!�"u'�g��O��^��{N
��|�I�k'u�'���Y��!���$�m��T��8(?@=^9�W�5����b��ڞ��̑�,��ӝs�6��Ĕ����,s��l��B'}vLZ�U�&��>�J�iu� --{��ȑ��[m-���a�yyy굌��	׎����?#,u��v�B�J}�K�dO�=۱��M/�����@���j��>O��m��o|��dѓ
/Z3}���J�P�p{�6�ƫE�D�;ӏ�g�*ֽJEO<�3�ִaƞш�v��#���;)d\�Q����䯏�t&���2I�����������F�W�.�٭����2�h����m�K�ޏ?t�v/`�ܙ:����ɼ*��gYjz	Ut����z�����.��G(�F������Q�a�ۙZ߭�y0��<�n!�֟!���o�_�ͣ5�-�V��|:[}��k1�|뉆mx7�){��21�4��*�:�O�t����D5.yz�|4R$�:j��Md�����ȞN��wIl[v�.���ż�;����C�C����~������I�cAg	�1-��HnS����=��@1<̦��zx�^�������E��-IK�p���Q��E�Qܳ�e{%���\�gw�L\�*wܼ"_��ꖘ�v
�	j0��ӻ�	/W�}=����@.�U�Ά�=�3^;ja��gּ�Ս���v'z���?�W�"����x�.���3�"���^�*�H}Ey�W���7��p_7v��wP�g�r."��l����S<8�VY��ECu����[o����7�����4/�:ө�=����n>�ݭ1�bG����U���.$/��{PH��;oD/��>~E8��®wQ��21[��"���]���%�~��/؇��5�)��S	�*��v�g�Ĥ�#�]_y����a��	��V�L�X���E�	��Cy���g���\o+�s�*X�m��H���;��U��NM˪o*(�*ok<g(�g��m��h��_��$���G6���A�.��8��ҲR��'�I�r��D���9���.����,@�-��٥�rǵA��oY�rD.�$��<�<��7�zѩ&��h�/�J��vm8�TЋ�~\?J���O��Ԯs���_(	b�<2S�e�;�v�ɛ�����=pYQ���%$YZi��טL��s�*zi��(kۮ�rS�3����Sp�a]F��hV�1{)8]���bR�A��M!;|&�k��D�|��d���oYg��3?�[����"�V���/߬��L���\�c�M6u��MR�|���	��Md�ٚ����vBI���B}�%WK�f�^Iaw��'"�.�č,<��LG#����%��E�th"{V].!��f�p�Zd���y.Y�7��+��I�O���U	5¼�h��|_~-�ֈx����f��Ռ�x�J��ڝ��g��1Ȟ��OT#ÿh��y�hئ�}||&0���:��S��s�χ)�����&�3�?4]]f��|F���f�����w�k�|^]�	]����A�MQ�<"z�D��K�&��Ŧ��t�h|��%-��ly�*1*�1�O��7��$�S�p}�2d�DP�?t����PMpC���d]q4��mX���eR�6x�o/�<+����7={ĭK�Ԃ�i���^Y>�-��d!�N��A��Kɞ;#��uG��R��M�/�H��m�3u���/��T<�=��s���]N��u_X�w��lA�I:Q��-݉�E��4�T�W�aE�ć1Tŋ�!tp3!T��M!��\��g0Xޒ�5���V�<�6R�f���>���8A>Jw�
���IO�/ �B�+�XM৸(?G��L�[� ސ֢�;��q`�	 �Cn����ȟ�isF�x{Ԋ�O�s���2�����Ө@��E	�_2�.yR��lPE�����5�+t^A������ +B3���1���ϳ�Ӱ��v��VB0X㕽�A�sG�0������w[F\�V�]Q/��Q�A�a��5������nۍ���xy7�d
1N3/�d"�{X��m��WDɣ������B7�	0頛��sXK9P����ٵ1� ��3=_���� Sk�ͫvh� �Q�j�f*V���/;X}�h�(B�ij���+�O՜TD����-��θ�}7MH�>�4ͧ������Z�r��"��PO�+�����e���V(J�-���P���]���?�wc�`ɑ�0Cr�����j������{#��O�L]\N7�l�F�[@��s9{�B0���o�Rv;�kݫ��_�s�y�rs��,��Ҟ�'禬o"�/���	��׮vG�#^/�i�K�L�!���&��(��َ��[k���﬌�.��j'�m�ԅ�L���Z�s�)�]��!�IhWK�X��BYDK��`��H�pS�ܭ��e6ү磜��������%YK�=m����Wk'@����~KT�:�e�k⁈�y����v-�Ob�N�~���}i�$A<*���[���m����FsA<xM��*�J��ك��5�� ���P^�/څu�����@]m\a5𯽆��\0�X��+q)�b7:��o�e���	�8�E�$��l	IBu]�B�.f�`��8��	��#8rˡ<����6$�L|
���/�(�M\��@���y���Y�ހ���P��g�le��׉�zX;�|��û)A�.�Nz��|3K��D�ʭOɥ~o�fb��*b�K����������9��}7��+�Tm�2�x
�G�̥�I�0����r���itG+zW�������Lw�\R�ǯ��)r��d;7��1R!����[f�>�oF �3�%'�x��4� �kf��/7����e����g5�9�x���i/��&����r�������+�T8p�����pR���Z�!��a��#u\9ȫ
�%@�3��u�
��4[����:CW������]� ?��x w� �o]��\�ձ�T��~��\�Y��C�Y�P ��ϛ��BP��� 	呍�#8ޡ&m
�DY�W����c�#�k2Mq��v崒�pNc�Z������4��-�tI����	�;��i�A�w6�(�h^�O��:�:8����w�ԯpg��x,3A��9��7�0Ot'�cc�$�{�I�|�o��k��G�ـ������l�\P��`�oq5���Æ֠�F���aK�P��+Ճ7jA��qz97���=���]'�H�y������O:���� �~)���.�o<�:�xN4��](�I�c��u���[?
ir�P�˗E��ȮЫ�2��{Y^M��A+\�)1�{o��v���r! �*�)�Y�M5�k�؀�c���9�`�	����xt�Lg���#$��p��v� ���eD��E���T���o-z�:/����-��%`4c`[q+��h�(a4��l==�l&��1�F����n6��>W�Lw:G&^��:��B=����'�5U�\�v�MTm�?��h�ʑ���;\���w��"�n"`*ɚ��"��_3��z����1��B��NP��m�g�a�jt.��E���J����6���W�|�u�i��N��׈����_$&�>��F��<�%S#�ïh��+擾����`�C�o�5��s��:�>̆ݺuk}3b�9��vp��2��t�WI}��X�:��]:k�t�ޚ��G�����ţ�D�zy_P����S��F9�����v!�o9.\`��4*X��q'��k�Jx��s�6ea�v�y9�w1�|MrF���1��g���|Y�/{k�X:ũ	<'y�Ѝt&���vn���T�'���Q�q\�]δ1%Z"�cɗ~�;Uq:&�ܗ�7�E8����7���r�(�Q'�ɒ/���#Ƶ�c�3�j��C���+�I^� �X�__�Kj�ٳa���)�A���yq1g:f;�/Z	l�k�E����i��M���_2�[��q^��:O&6��PPPRi�VWw�g�¿��1n�A_K����I��$��߱�q7_��*�l�P�ҵ�x7��؟.}{`�$9]�=�o�����q[m�?�X�t�Nʩ`�z*Mm)�'�7f��w�� �c�ȁ���NG���e=�}��*�?fƕ���`���닃z�tD���]��x�Xe�a�����\Z��}6N�hAv8b���MK�&PGk�I�$�7�����.Z �� �J�p�d�=��tZ�`~�����ٲ�䜃�_Ms`�yG���bKD�v���!�-4]A}��^5X���%ouˁq�:C�1���sn����\��(�w��I�4o��5���A���pW�W1N�������s]5���C��A�}���ʌ����gUv���3>_��jAv�kX�I��9#��W���� j�g���k��"�(֧??3򺑄�I}����3캬����e�'�f�:gJ�3�n$�?=X�����d�î��������+�hJ��@�`F��4�=�(
|g�l�R���*<N��z�\4�D��ASC݇y�����
d��ރ}_i��o�y~���^ZғZ�?o~Ê��*b���} 9;���ڕv�Sr"�Έ�����K¦ί��E���R���Sj:��.�����O�Or��m�0+�~"�����gT�'��Ftr�^(�X<�y�:��(ho�H>a��c@���>�v~�7>r}Y���:���U��x�E��~z��i�z<^q��v�rN�j����֦�����d'���!.V-;�O)yE)~��L=�����'�NB��ژ�O*�B��gz��'����8�۬���(s�W��dٕͥ��M�u����F� ��nC6����. ��V�p��Q96�[s� ����Dġ�V&[ 9�!��|��4���=+`�zl��A�<����v�}b�]�6r�Kr���Lh ���\�}��R~��E�����Fp�:�Y��)�l��yc�F ��^�_>"�]Wca�&P�P����O=itR�c{D��#�3hq�b0>�Q0ߴ\&��E�z���I����I�`~��V�M5�C���A\����~K	�	Q�5О@�,����@{k�@~G]W�}4��B�����5H��m�Ɂ�q��
p�j�%p��|8���[�=��즱Rڟ�e��h�����ps�q��8����a!�8�+}�
�Nɕ���F"�μ�އ��{\�~Mq�3�'��%|Dl�DC�3� ���|�g�u���R�R`���I O�����)�	�χ��@{���;��X{R�����A�1���}aok�Kl+
�C�Y�JH�Z�����"�=(.��.�`�W��4:�O	�`*�h�z$��/ٍb�����1�e�PWsgP'��r�� r����>Z�ǚBW���'@~��>� x�bK �I��% /���3�􍽖 ���L��42�>6��sɄ~�W���К�%��t�'�{BuB�+��p0��+�K5f�Շ�u��(�.'D�u2���+�Uq+ĮT���{�7���X'�Oy5����-p�ٝν�L�:ji*���CK-��}S����m������+-�fQ�I�gi������
��XK#,�D$�UM4_�`��^�V}������%L��㐒�n|��%�kA1=e���s��x[&�d4���[�|�g.9�{�.�:y݋��8#�`���A1��>̷�^��%�u{�.�&�j.�u���ؑ�A��{�Rx�&���l6Ɏ�T���O
ǗŲ ^ӢS�Û쵒����q ������
�Ѣ�ˁ|�L�vA�?/�V����+,EA�����8�A����`��j�{�·�XW��L3�!96>� u���ܠ_k���vrA�ǘ�\���(�Ob|�!y�WQ�p���(>u��-��׎�4R=�*�Sޓ c>b0x�w���\At��D�ш���H[y7c��ۢP��>�ާQ_�v�Ľ��[|y�������
��8���%)���j%�U=�/`����!��f���{����R,<�ы+c0�o�����O:*Y����w��Y}G�1��69�;<;�6�c��-�儐�o�(�����ߚ$N�1Ӑ�F4���xl���X��w����݄�K��N���6�#uE�q˧M`7�}�/�;������I���~�'�p��n,~��*J�y7,Ag��>���n��:�m�v&�z�:wg'A>?	ߥn�o�v,o-D�')�2��zCy+y��,^�Vhq��O��w������[��ID���c���s�=�Z�>X�}W(0*����5�?ԯ	|�'���p��Yۦ6�G�+��T��R��F�궠(�dOyG~�D"����v%2ZE���6(Y���!��ݦ��KbxG[��}��Vg���H�S[�}�_�>���H{Z�����Xs�ҷ�����8�zԻqQ4���?�^{�����w�Nξ����Z����������`��vX
��G��d͐6�v�sQM��&��d[�Թt~Şy{_CN1vߪ��sC�r��[��>g���=�&D%����ٚ��s��iL�M�ZCf�X��M5����Rw}�	`x�1�v\藏|��~��֏���M���ݒd���dtw0l&�f�v��-K1z�u�R}��g��W��[�
���O��z����_�ߦQ��$Ջ�%b�:�
)�ꏇlv��W��&e�#]������d&��U=�}��x��y7�f��Eۇ���M��Ⱦմ�3�8��i�;�P��7���A;#-κנ�T췊/�iJӋz�[�+�ԋ���mM��4]�O5��,�������Z'�ƌՑ��r�)�*)֡xs32i�K�)1O�����z)u��􅤄n�ϧ����"�0̆����&d�$���T��C���J�t�ѹy�Y������B���9N��'���))�yf���^����,�=񣐀=�q*���n;v�G���㓶��4w~�n�'�;K]���F6��f�ʖX�WHK�w��I`��	�~�p� |>/���K��P?�-��f�R�잱�$���R��c�t[6���@�J*�ġ���t��	�η�
 Nv2����?)tr�ԓY�l��Y��E�}큭�T�6|��c�wB�r�	V
�~��lV3�\��O����{�[7m���G�13D�AB��cn݋=���|�|f}��Qؿƃ���1S���'�^��Zb��x�f��a��<,�����>��GK��?M�qΧ�O�rxo�~%�E7}Q����'A���܃:D�D, ����c�͋b���PS�`���
7���dW�U��gqn��ӱ��N�-��y�͆/`���ye��[�)f��Ǭ�u�ઊ�i�-��o�T�Y~ܤ�Ԡ�!R�(]-b@��)G,kx�9����fwGh������Ѳ�ǽ%�g�ϥ�Iߝ��\��V�	c��^<٫'y����
�d�
c���.��Y�].�Xo~p��J��"��M'{^d����kr�b|�5���;YƞX~���O�4H_�m��7�ot3�jrd_�V��{����8� ?]3ճ֘���ڂk̂�Ә����.�m	5f��K��"$��}��b
t�S����f6�eJ�_��w���E֥�������_	_�(���������r���'u'���!�n:��"C��g��|��'��/��J��w��ҢOG}�4�į���g��\�rt�&�RlZ�%��;r��/Ԥ>D7�P�ϐxZ��Ʃ����*�ߎ��+F���������l��b
�iVLfQ���Ya�Ұ��N�=�D5���֫�����wix%��L��=��Of��v�mCL��:�^�<xR�'wPLD��b�+�ߓ�6~M�ߜN���Y��$썘&fv��a�	�,ҩ��Ֆ~A��7u��7���_�����e�#6��t��:����۳+���h���ڭ�!ɘ�<�N�T�{m��~�]YЁ)$��":��9���2�9�&CO2}��jE�R�Έ�������Ƨ�Ks�t���6���M=bu�iz���y+��B���'���#Y�yD�z�hv�����L��+RsW��rW~u�l��k�����8���o?�c��zi��̸#�TFi]�ggB�5�y��\rC~�cDqz���k\��R�ŴE���䩯��\�/�qSi����1D�x���_"���W��>��s��h��K�\�t�Nƀ�_H��n{��j�Q���9w27�m?�ϔve��lB���/�˾���ċNq]_U_����\�� �uU���C8`jU��f23IMթw{�<�ÜT��Oi�NU�Ԉ���&�J���=",�k�035��������S�W��^��B'5zR��I��I}�XO�����.��N[S��7�k��/c.萗!�RD��Z��i��s���d5KzyD9��~�gn�zk���P�ZX�r1��Cj�uڔW���6u�j��RNR�/��H�{xB�>�5�S���C!O���)��E�Q����%mGC����v�M7���l��4]5!�k��H͛�o=r�8+;W昛�o�ѧ�ܐ�?��"�N4�\�}���5�s�e�*�۶,���#n!A�d��Yӳe��S�����N
-[�z���u����,�*�y{�Y�Q��^�<��޿�2eN,�K��m���w3�q&�U0'��"��Kzby�sՐ��Ÿ�ͪ㗨��pr�
��籧���M��V�.J�kZ�qQ����OϞgp5.I�l������)V��i��}}&"y�`S�<%�����R�J��x���aɆo�<��cl�ߖYg6��<��蛆�.f'�5_X
�Vb����Jk��P'<+WW��o�޼V���4}_�O��%?��B'Վ�����	FDSX`0"*��DF�'����xd$",00�C���P�������A���a���?A@�qL!~~��a����>��G���9���a"����B�"B����P�?�
���������C���U#BÏ9�c����e�U%�ŵ�uu�eEŵ�uuu�E%u����/�N�/*�*��*=�����������e��������ښ8�]T^]U]U򽠸�����{��]��}u���M-�o=�_aayUE��}��,);��5����W��}�ǡ�5���UU��J***+����[S]RTM��� ���"�����;�;����`mn�p5�0?3=��Y��`vpؽ�����Y$r�1�lpnss�DM�t7ׇ=3�)��n���_\_EϢg�W�W�kKK��K�+���ˋ�(r|fj�����o�'�K}uG����������`GKUZis��������vce��s@�������xowK{{U��w�u���m}�ë��k������?[��'��b��v�		���	� "$�>�������NI=����Դ�������r��㩩)q���I���#�b�㓢Q��/"���Ï)5.*�ߑ��I�I1?F���1�������E�?�%$�w<Θ�c������x
���k/2�?�%$$&F!�[KI�����a������h� ���n�,n,ML�����㶷W�+:����GGG&�����h�����
93;69�W���0jn|���wt���m���ު�֮�e4�odhjnq�;<<<9;}����<zv��|l9�������Toj^ɷ���_�����E�>"¾�6�L./oa�Q�UE�]m]�%���2�rZ��ڻ{��['��V67wpX�识��;�;�`��!��`��0jFHt��X�a�
ȾO��� �s�W2��1� ��\�qu����[wv�!>{��$v�����a� >w����C�+�Ck�9������b�Z����{�P>�s�����5�nB�W�p��M�/��֚!^7����ݣ�*��aw��,PS�мԿ��z��-`Ǡ�h�����o�)�#�>>����������{x���6�?0���������Ak�����=����������䏨�Q��*z��px��2�����gb��{jnk}��}h���6w�Q������������?�Ss>j6u������ff��z~���w��e�W�����q���ŉ�⺦Ξ���֪�����/	�?�F��FF'���~o�����&zg�w����!�MD��?E���9EDt�4᱒#�' �aq�
����S����ݵ�`����6��]X;���:zego�XI�`G���YA���G�����\]\F�͢&�;r��KK����������W777��6771ح������6fwZ�����n��D����C�]�}m�#ȑ��ݣ��}�{0�����}�9=;5137=�������#��g��d~�����б��;~h;��[������㽍���6~�O�X���osH��`M�-P7;���o�s����X����Y�+�oLWB|xk��s�;�Gaw �4�����};���`A޲s���];k@~z���}c;@N��0����h�oo����%(ob��{ڧ�����Ƭ�뫦{�3É����nmB�UG���s��}�P����.�_���������_��&�v�Y߁�o���p{�K+�K��+腝��͕ъ���������^��jvcumkm	=����i��o����h����w0�}R��W[��5�������[Bώ���!QC}csss�3C-?{{~����-/k��QW�>1���G滀�8�$����۷�����ŕ��ř�������ږ�悰��/��.�e�U�u����-���兵�����šƮ��cEr��7��#�&	Çm�`���1����б�� {:����f7�u�:�N���[@��n�{ٵ�~��� oYZ�{����},�7=��#G�>�5�O[6VA��K�^O��;݇� =ٲ�	�U���ohi�G}������c�{׶�_�4: ���i�kS�=��;NvA�R/�邎��c���gg��{�8lt{���������ׁ�?�����w�v�������1`�}���w��>�˙;��q� ��ڙ��X�J���C�{`�+ˠ���0���=�~��[�.�LC| ��N����B�nl�{
Yr�ԧ����{���s�����8����C�������_�ߦׯ�xzz�������kﺚ�H�3���/~ݷ}����.?���[[����-[W�#Hj�+ɺWZm��3@�Q�H0$H"�0�A�>��BU��U]J��?��>s��鞃ROoO�}���q����E� �������wvtv��Cz�vV�G�v��[�-�~p�H���� ������%�{���ٻK�����!טA���{�p����*��c��n���qz7kٹ+����h�ۆ���%jiG,��*�r��g+� �sL��d#���rǘ�ߣ_��88R��f��d�H�<��
�J�ӹ̲�/������h�ͦ�Үw>�>|������dZ�vN�:+�t�*�V�=�Q�ʴ����fziu�cdqV�=4�=;�o�{���?<m�R��?|�ϭ=ϖ�Fw��-��6*����������ow�|>��&[�";V��֍����ERI��}�I&r��|���ܐ�g
�b�J467_k�*wﴴ��z�ۂ�	�����Y���r��6T����Z�;Z�^����n iw��]�5�Cݹ���z�,M��C��ݻ���I���<'�z��s7|@�х��������6t7����F�"n��к�M�a��f�8.R�����2������I�u"�����^?�y�4���
x]�Y������a,����7&�x]4dRx]�f��9��\���n���}��p�����4��h�>�?Z�(& ]gr���=���oܞ�ݜ�k`_"�u�6�"�6���,kƃ�Ir���̞h�d�J��y�v���.�\�ʑ���"�W�9�xY�E_$�#i�~�.����L���M���C��#%�x}��S�����7�"׆��|�ܛf�m;���s9|�`�m�������n��9�#��f�<�S*���Jc� ���|%�ͤ�|2�h�ʄ�������h��J�s)&�q�=� �s{]g��=�Zo���o��mmE.3�L�,�;z�?��)����x(M��>��l�~�?=}�!�֪�����\N�jo���`g�dnm��O�J�\
m䝪�]ٞjsm{sf^��l��o�,��vR�={�Pa��|:7���h�����w�P 6
��l��²P�/��xAP)�Ѿ$��D�(��Lȥ�QYv�����:0���T<v:�6�Ǻ�9{��ܔ��Pe�����՛�I�ͤ��5�x@���sx���Sgԛ��Cg�i��k�X�Zz�O�1�6#=��s(��6�ިܐ�N�O�M>���Ut �K&��Ǯ�<>TiVW�6W�U�>�]V(�
�E�sl��#�l!��$��=��N�*B��,(7_��*�s1�\�v���F�3x���q<�f5�y`G����<��4�73�yC�����ɹ�6Kƹ:_����D�:���O��>|� �Ep����}�y�n���_����gpб$��/���j?%�\�B���^<6�v��7�Sx���m7/�*#���
d<�\y8��s��i���kh]β�Xڅ�ݮF�ؐN��*d=9N�}�V:K�[ �2e�:�)��f�u�H�Ʈcք��+�}�<����ͤp9v�d_m̑��	]]�N�p��f�~c��m[t��8��vQ�p�nQ�]�>�c����d��1��H���g�x^Q�L���,��������+Iڡ��[^R;��o̧�����F�}@'�#�L�q���t\��<�`?�q�ԇ<��F�����|��H������e�����|ڳ��8���*�"O>��aS2e�<���ߥ�2h*Cc>��q\�a���m3��N�a�\�����)fq?�e�x^0�����>���o�~~�ր��P�_��`��] �ÌY�|-�¬˓�}:~��0��[&�ǝ6�`{�V��S��"���^�>�;ݔj����O�5�!�5?��W���F�_LNOK���������ഄ��4��K��&���G�F�Ƈ����ћ���������)�덏���|902B�q�̒��)�'e퍏b{��Cì�$�����b=0y��#{c�� 27:�jxzzrb|�Y����{� �C'q��gBx��9��� ��;n^���o����oO����S\��b`ǹ��Õn��&���4Y���8��|
�[{u�ͦ�xC�.�B��=�붚�`^p�`ݽIyMПo���n8�ڿ �Fb������7ߺ���9� ��l<%��|����SQ/�˂L��O6�&M٬V����}�\:�N2���p�t�-��g�����0k��<�ӿ�����qhWM��.��B��JmsP.��n�B�`�樂^7�v�_�.�4.�ĝ��]�Q�/{�T�9�{�#��v-���dcn�~u��lS����s3KS��_&e���w�j�^u`r���ɜ�bV�֪��e����|1&���Ʀ��Ƿ|����W����|�?.�8M������xx���q�o��ve����녥�7U�sq��8��,��z��4� ��͛U������v��|����[loy����~-������8��ƅB�������$>������\��B�Nᄧ�B&_�K�J!��S��v�^���2�L�P(�N�T<�'���1�ћJ3~��jЪ�
���V{��(��D�CQ�'���P �db��a�>������ޮLau8,6���q{BA��j1�4{�[�Z�'�ȗ�\2�6��Oom�͠��mH����8�Ժ�B���%�>��l2Gs�&�B��,hhhj���k�\�ڵ�����;p��3>m<}��ŋ_~e�q<� �CC6��q�l�50C\��8�����+�S���!q�/��U�zyg��,���?�z/�����q���_~�q�OIvM�f�</f���_� �߈��?���_��@�}��9���[|��i��Qi/>�9�����gq�ߏ��rƃ�@K:E��}�5O���y���o7��%u��j�
�>�ı=e6I��9G��ȼ�H�s'C��Sm8�p��ڇ:�<��߰g�9ӞS;�f�M�M�`>��9�s�o&5��~v�
�}�{����,7�������3���=Q{{gW�}QO������!j��CC[oG+�C�XkkGW�'jut��C\փ�'���^��A�ĽutwA��'�ݫ�����#��=�qo`�����j⭪ϋ�{{�0C@��u!���u�;��kG�w��v +=�m͍��rcs�@���$,�f�L�(���F�\d|&���>�'A�[�T.���4�$�0��W�;��0.m3��+������h��t,�؝.�a�a�c�L4C�L,��jU�F�����#��>e7�i��q��>�ˢߟ]��a�P>�TJ�Dļ�ے�LY�N�N%ת��W��ـ���pA��U�沘�*v��h�$D�1!�m*7�WJ���a�/Zttt��>x(��~���K������O����?~��������tvt����z�zz�ď���u׃�~�}�����Cq�Y~@�c��k������=qok�>�����׏��c{}���!~���w]��n�~w����P��;��6�\��PT%4��1W �J�+�\.�:���N7M��C��H8��e�)&�	�h�i�=Z7��!�Uo4ڌ�Ł�n}��`9Q��~&�1Q�;��4�>��q�#�hХS[mFڡY��:v�����*�U�W�m���ї/V�*�˛�er���g^�=2Z�
�As��s��1��W_>������f͡.�MFR�B�\[��'j"�ʕrsQ�Ѐ�6*4]�/R55񵽹~_09!��y='��,.--/�NK��,#�H��Y�|yiiqvz�������IɌt��C�)����"J�..-�^�������tbB:;��MH@>SK��� ^&�#����<���=�7zK��c�|H�wJ
�Xon~�FO<=1��0/����.H�������|���Zn8��������FF�'��$R���!���t��!�ɥ��������q����z�с�iɴD��I����a	�ɀ���;Gz�8}ҫzp�s<#Ez���Xotxtb���$�Q>b?'b���MLN`{c8�嚞C,���s|�PP
�钰�6|�r6�G�W"����D�y���!_�AY)����x	�I�CA�vYiڰҵ�1:ݔ��Xe2��[������D�r��]���}ȏ�)�Ug�x�Ta��P(���_�ZY|�Y��e'F�Z��8<0���8����om(_:�H&�^�is�H�Q.o��,�7ߎ��_/n�n�뵻[�`&�O���^ņ�ec��
�1�N��4�J�`�	�����n��|]�pt�g�_�_���|�❋��"�bV�	�G����|�n��:ǧ����Y� ��f�z��2P=97��L�VX�1�T�E=ɹ����q���?~�=R����;���/Փs�/����3>m|�N��'
<���nn=�懫�@��\��{s�*t��#�����p�)|��Wd�1 +�^c\�έ��������Ue�zrn�e��U�����|��9�5�K?��x�J�ێ�\���x�p������@��s�9���?�.��@�����2W��2P=�����z͕(�'�[�_6'?w�Ƨ���C1P=�e�����|�cn�O��.!��K��z�\�W���ɹ�dn=����/`����\|����w�Ǐm�TO�>��^����|w]�����������ge��&�0.>v:��s�=_p���*Փs���}����_��c����p�/�0/�QTO�{�2חe���(�'��t��K2�����������TO��j��17�Ug�zrn�%�;���F��O��Q=�`/>����g���&��_pa���TO��2P=�l>N�Z�W��?�s�3�����֊�)�9��pE�ڛ����y�/��C�ց��@����Krm�W����v��;7�{���B�PTO~Y�'�_���_�������_�����d|���qrU�����|��9��j{�>�X�� ����-TREE  ����������������                       �O             �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              TREE  ����������������                       �             �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              TREE  �����������������                      �             �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OCHK    "�     �      �     0   REFERENCE_LIST 6     dataset        dimension                         9�             s�                           ��TREE  ����������������m                       ��             �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDR�                      ?      @ 4 4�     +         �                   R�                ������������������������A         _Netcdf4Coordinates                           D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              �        
\��OCHK    �     �      |     0   REFERENCE_LIST 6     dataset        dimension                         ��             l�             I��           ~���TREE  ����������������%                       !�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDRi                              
   +     �                   ��                ������������������������A         _Netcdf4Coordinates                           7    
    is_result                            L        DIMENSION_LIST                              �        eC/KOCHK    ��     �       D        _FillValue  ?      @ 4 4�                      �7    
    is_result                                ����     DR            �ID$TREE  ����������������                       *�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�    �       �           ?      @ 4 4�     +         �                   v�     �           ������������������������A         _Netcdf4Coordinates                           D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              �        /n/�OCHK    ?      @ 4 4�  \        DIMENSION_LIST                              2Y           2Y        ����          ��             ��             ��             fg�TREE  �����������������                      #�             �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDR�    �       �           ?      @ 4 4�     +         �                   C�     �           ������������������������A         _Netcdf4Coordinates                           D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              �        �)'fOCHK    ^�     �      �     0   REFERENCE_LIST 6     dataset        dimension                         ��             ��             ��             ��                          �;TREE  ����������������L                       ��             �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDRy    N       N                          +       �                         ��     N           ������������������������A         _Netcdf4Coordinates                           7    
    is_result                            L        DIMENSION_LIST                              �        9 �TREE  �����������������                      �             N                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDR�    �       �           ?      @ 4 4�     +         �                   �
     �           ������������������������A         _Netcdf4Coordinates                           D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              �     �   -ڨOCHK    ��     �      �     0   REFERENCE_LIST 6     dataset        dimension                         ��            �7            �:            DR            7T            ��4e            �KTREE  �����������������                       �             �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDR�                      ?      @ 4 4�     +         �                   �                ������������������������A         _Netcdf4Coordinates                           D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              �     �   ����FHDB X�        ��_:�       storage_cap_max     �       force_resource      �       energy_cap_min�(     �       
energy_con�4     �       cost_storage_cap�7     �       cost_energy_cap�:     �       cost_depreciation_rateDR     �       cost_om_prod2Q     �       "cost_om_annual_investment_fraction7T     �       cost_om_conYW     �       distance��     �       lookup_remotesl�     �       loc_coordinates�     �       inheritance��                   TREE  ����������������                       F�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�    N       N                     +   �                   �      N           ������������������������A         _Netcdf4Coordinates                           7    
    is_result                                    dtype          boolL        DIMENSION_LIST                              �     �   \�/bTREE  ����������������%                       ��             N                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDR     �       �           ?      @ 4 4�     +         �                   ��     ^            ������������������������A         _Netcdf4Coordinates                               ��     R             ԏ:BTLF �        M  " �        o  ! �        �   �        �    �        �   �          " �        7  ! �        X  ! �        y   �        �  # �        �  " �        �  ) �           �        #  5 �        X   �        v   �        �  ! �        �  " �        �   �        �   �           �        -  , �        Y  & �          # �        �  ' v�w                                                                                                                               OCHK    ��             l     0   REFERENCE_LIST 6     dataset        dimension                         �             �U��            ��             ��             ��             (             �(             �3��TREE  ����������������q                      �<             �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              OHDR�    �       �           ?      @ 4 4�     +         �                   f>     �           ������������������������A         _Netcdf4Coordinates                           D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              �     �   �o�OCHK    X     �      �     0   REFERENCE_LIST 6     dataset        dimension                         &�             ��             ��             ��             ��             (             �(             �4             ���OHDR�$           j              j           ?      @ 4 4�     +         �                   �F        j           ������������������������E         _Netcdf4Coordinates                           
   D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            \        DIMENSION_LIST                              �     �      �     �   b��OCHK     O     �       l     0   REFERENCE_LIST 6     dataset        dimension                         �            c���            ��             q�             d�             �
            ޙ
            �7             o!OHDR�$           j              j           ?      @ 4 4�     +         �                   �i        j           ������������������������E         _Netcdf4Coordinates                           
   D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            \        DIMENSION_LIST                              �     �      2Y        a�s�FSSE 	i       �   �   �     �	     �     �   7 �   ��\   x^M��N�@D7�#E�L*7)�?8��������R��R���?@ᒝ��;�O{����f�������ٓ<A���i:�A��4tė6��Z��n���5�ZK^������D�fK00���V|i�Ừ���׭�	�Yﵷ��y����	F��Չ/m6|W���n���k�v�z�_�+<A��nif� #i�ė6�����n�u�k�m���d�j�m�	"��Gs&IC�F|i�ỪN��_Ϻ&����=�ml�	"x{�Y�9��k��h�Ừ'vs�"v���8�:o؍�q�	"��'͕``$]K�͆��8���������U�G~�hX#T^ce�6�4	w��nB)؄�#��TREE  ����������������d                       �F             �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              x^���0�YG��}�Y|6R�G�|�5���[:zGU��Un<�tF������>��>�Z���������x���$	Gu����� fo&i�,���TREE  �����������������                               2i                    j                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OHDR $           f              f           ��     l          +         �                   �        f           ������������������������E         _Netcdf4Coordinates                                    E'�|  ^m�OHDR�$           j              j           ?      @ 4 4�     +         �                   �u        j           ������������������������E         _Netcdf4Coordinates                           
   D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            \        DIMENSION_LIST                              2Y           2Y        �*�OHDR $           j              j           �X     l          +         �                   j�        j           ������������������������E         _Netcdf4Coordinates                           
         tVv9  DR             H���BTLF ���� X  ! �_}� �   ��� �  < ��� d   9 q|J� -  , �F.� @
   ����   # Ѧ�     )�:� Y  & yI� o  ! Da��   # ]3�� d  7 �y� s  ! �X� �  , d�� S   `��� �  # �t�� �   F�f� E    �}"� �   ����   3 7�� �  $ ��� �  G d�� �  " v� �   ���� �   .�;0                                                                                                                                                                                                                                   OHDR $           f              f           ��     �          +         �                   ��        f           ������������������������E         _Netcdf4Coordinates                                    2$=  DR             2Q             	,�OCHK    3�     �       D        _FillValue  ?      @ 4 4�                      �    \��L                                                           GCOL                        �n                   ��                   ��                   �n                   ��                   ��                   Ep                   ��     	              ��     
              �n                   ��                   ��                   Ep                   ��                                  ��                                                                                                                                                                                                                                                      !               "               #               $               %               &               '               (               )               *               +               ,               -              NL12::hvac_transmission:NL23    .              NL33::hvac_transmission:NL32    /              NL41::hvac_transmission:NL33    0              NL21::hvac_transmission:NL22    1              NL23::hvac_transmission:NL21    2              NL34::hvac_transmission:NL41    3              NL23::hvac_transmission:NL32    4              NL41::hvac_transmission:NL34    5              NL11::hvac_transmission:NL12    6              NL42::hvac_transmission:NL41    7              NL33::hvac_transmission:NL41    8              NL31::hvac_transmission:NL33    9              NL12::hvac_transmission:NL11    :              NL33::hvac_transmission:NL31    ;              NL41::hvac_transmission:NL42    <              NL21::hvac_transmission:NL13    =              NL21::hvac_transmission:NL23    >              NL41::hvac_transmission:NL22    ?              NL32::hvac_transmission:NL31    @              NL23::hvac_transmission:NL12    A              NL22::hvac_transmission:NL21    B              NL22::hvac_transmission:NL41    C              NL32::hvac_transmission:NL23    D              NL13::hvac_transmission:NL11    E              NL13::hvac_transmission:NL21    F              NL32::hvac_transmission:NL33    G              NL31::hvac_transmission:NL32    H              NL11::hvac_transmission:NL13    I              �v     J              �v     K              �     L               M              '�     N               O               P               Q               R               S               T               U               V               W               X               Y               Z               [               \               ]               ^               _               `               a               b               c               d               e               f               g               h               i               j               k               l              #9958D6 m              #FF009E n              #030303 o              #FFE400 p              #FFB600 q              #275FB0 r              #27B09F s               t               u               v               w               x               y              #D800FF z              #CF74B2 {               |              #6F6C7C }              #072486 ~              #AB2C18               #33F6FF �               �              '�     �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �               �              storage �              supply  �              supply  �              supply  �              supply  �              supply  �              supply  �               �               �               �               �               �               �              demand  �              transmission    �               �              demand  �               x^m��� C{d����98w��Ez`@$.�vߑ��ֱ_8(qDqSy����H7�(n*oZ@�8BM��#��ʛ3 [!�S���M�M�GȢ
|qDqSysd�#dq~�hX>{�_3��]�:{q��z:�9�ly�����d9x����^�l3�����UbG�}g�����?��wTREE  �����������������                              "t                    j                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^m����@D�%L2��80� 	�&�qHh2���H`�	 g�`�sջ��q=�UW���8�3}�� .�	g�HE_WJ��
΋$���|�g����H@3=���I���B_���<B�=���@��>G.�Y�+O�K*�ª�yUU�x�y%��8��Bv����� ��ʭ�.eŶu�D�}G֡ߊ���TY�E�uEQ0���
���q��(�]nBK�m �k�n��R�0M���m=�Gۘ��K�6�1�7�0���Fh�~ߚ��u#���0�p�Ip)'И�x�*:IV�I<%$���阦x������:	�ߏ�&���#z@n뜍�!˜�RZ���a�\�,��"d��Hx0nk��Z9��"K��؁(��c� ��W��J�qWj��E).�V���<�j���e$�e�	����<j�GuϻGMz���fv��wŞY�ί�ׯ����>�~z�ο�o�����@�TREE  �����������������                              6�                    j                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^��-δ0�b0�%��HP��<פK`C�D��QUI�t X����&w���s�S'i�SM�6J�4Ť�JҦ�R*U5�Z�L�Z%�&A"I~*��+�S?��I�����=�eE��Hߗ%��X6!%������'c��j�Ǌ�6|B*R�`p�a�~J�|t�U��uY̸.���ua���c1v�o�}�]�� 8���}���g�b�1sw�B�GXVP�g��yj޶�9^�:�����m�2��hAp ��������<�yo}��V�tah
/=q�a�	;х��%D(���e¹Ew��@��:$���_S�7t8��=�`�O&�O)ERbdF3y<X�J��E/�OD����!�e>�|J}�G`p���(;$z>z���e��y��m^�i��Lۊ5�ӌ?�u}��|�m�$�L+|�����6�������?ڢTREE  ����������������                              O�                    f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      OCHK    ��            ,    0   REFERENCE_LIST 6     dataset        dimension                         )�             �             ��             q�             d�             �
            ޙ
            �7             �:             DR             2Q             7T             YW             ���OHDR�                      ?      @ 4 4�     +         �                   e�                ������������������������A         _Netcdf4Coordinates                        .   D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              2Y        ΞƲOHDRy                                     +       2Y                         m�                ������������������������A         _Netcdf4Coordinates                        .   7    
    is_result                            L        DIMENSION_LIST                              2Y        CX�SOHDR�$                                    ?      @ 4 4�     +         �                   �                   ������������������������E         _Netcdf4Coordinates                           /   D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            \        DIMENSION_LIST                              2Y     J      2Y     K   �~H�OHDR'                                     +       2Y     L       *�     r           ��                ������������������������A         _Netcdf4Coordinates                            7    
    is_result                              ��"s                                                        x^U���0/�:�� x(���m�����Ixxk`�ޓ��������]��s
%Dm�i����5უ��G�T���J���ζք�*��SU�r�A(!j�;p;�Z޸��g�NU��1�f�������lkMxa����9U�.�`�������5�;�}�v�o۲An߱0�-�׶��Xl��K:��MD&�_׼>���3� ���"R�UJ�6-^#"
.e�)���!�!!�%�a}`�D
�RGb�1��g3�B>�]|�TREE  ����������������                              ��                    j                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^5����0���n������� �>�`,�m,Ӧ�bm)i-}���i�	�rw�:3�9��8w�9bt嚱q$]3�%�G�Qơ� h �R�c�\G'r�x�Qrp2�r�%����R$u-J�j�b/
%c�k��.��/��B��K	.H(�*^5\���r�D	���Z�$iM�����Ą�1R�ğO	&�Ӏ�G�`�ސ��fnOo��/��)5Q��f��L!P��!���k ֮��s�3۾[{4��i];^�;�Q`�w��v�2,�+�t�\wU���SYR;Me�*+_��ʪm}��i�`^Mm5����AU���z�R�Tz�h�jU[��P~��DN�(����so�."�g�Pn�K��%ϭ���e�-��s�� h Ӳ�vY��ɜ����=�\�.Oa�r�D�E��Ø˙�EfcP�8�m��4熙�;7������G<��r�-f�</��[ܢ���N>2���h���?�����<���a_շ���)?˿�w�U~�?���^r\TREE  ����������������u                               �                    f                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      x^퍻� C��Gc�ěQ�:���%m�ȅe=q �10§� qxvBy.��~��� �ó��K�����/3�:3�e��܄L���z>A�w��-$�q.#�&d*mg�<��a_	Ϩ�TREE  �����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^k�>��oN�����?�~^;_i�Ҍ��[flٶ�E��ʶ>�5�{�%���K\s����>���_n������)=���V�0IMѾ���$��J�y��yJ���$�q����}�y%x�~^���O����~��g��/n�x�c������=\4\��\w}i���z���i���uU�T�fie�t����	s
�
		��v� Z*b�TREE  ����������������U                      ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^]���  �_Ђ���`���73���i����'��� _����'x�x�7x�����.aWp7pwp�u�3TREE  �����������������                               *�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          OCHK             L        DIMENSION_LIST                              2Y     M   ��OHDRy                                     +       2Y     �                    f�                ������������������������A         _Netcdf4Coordinates                            7    
    is_result                            L        DIMENSION_LIST                              2Y     �   �<��OHDRy                                     +       ��                         ��                ������������������������A         _Netcdf4Coordinates                            7    
    is_result                            L        DIMENSION_LIST                              ��        ���FHDB X�        ��m[�       names!�     �       energy_cap_max_systemwide��     �       lookup_loc_carriers     �       lookup_loc_techs�     �       max_demand_timesteps>!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                x^����l�:۵;��؟�u	?g�Z�A!��/_�2'L��j�pCt�-eb�k֤~��z��I��d\���?y�xl����\q�iq�҇�v�IM�����T���>���5Ft=:25w���}������d¯�i���艜�9z������7�������	�^@,!).(.%- &$,�  �VW�TREE  ����������������T                      �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           x^]���0 CQ�rc�az�}�.�oɖ��FRzr��|�'��ۻ�w��x�'x�8�8�38��O�p�p�p�j���TREE  ����������������a                      ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           GCOL                        demand                supply                storage                              '�                                                  	               
                                                                                                                                                                                                                                                                                                                                                          !               "               #               $              Hydrogen-to-power storage       %              Electricity import      &       	       Lost load       '              Photovoltaic power farm-scale   (              Photovoltaic power distributed  )              Off-shore wind power    *              On-shore wind power     +               ,               -               .               /               0               1              Electricity export      2       $       Transmission intra-zonal electricity    3               4              Electricity curtailment 5              Electricity demand      6              Combined cycle gas turbine      7              Battery storage 8              '�     9               :              ��     ;               <               =               >               ?               @               A               B               C               D               E               F               G       �      NL23::pv_rooftop::electricity,NL23::hydrogen_to_power::electricity,NL23::battery::electricity,NL23::curtailment::electricity,NL23::hvac_transmission:NL21::electricity,NL23::wind_onshore::electricity,NL23::demand_electricity::electricity,NL23::ccgt::electricity,NL23::hvac_transmission:NL32::electricity,NL23::wind_offshore::electricity,NL23::lost_load::electricity,NL23::pv_farm::electricity,NL23::hvac_transmission:NL12::electricity       H       �      NL21::pv_farm::electricity,NL21::hydrogen_to_power::electricity,NL21::hvac_transmission:NL13::electricity,NL21::ccgt::electricity,NL21::battery::electricity,NL21::lost_load::electricity,NL21::hvac_transmission:NL23::electricity,NL21::hvac_transmission:NL22::electricity,NL21::pv_rooftop::electricity,NL21::curtailment::electricity,NL21::wind_onshore::electricity,NL21::demand_electricity::electricityI       f      NL22::ccgt::electricity,NL22::wind_onshore::electricity,NL22::pv_rooftop::electricity,NL22::hydrogen_to_power::electricity,NL22::curtailment::electricity,NL22::lost_load::electricity,NL22::demand_electricity::electricity,NL22::pv_farm::electricity,NL22::hvac_transmission:NL41::electricity,NL22::hvac_transmission:NL21::electricity,NL22::battery::electricity  J       f      NL13::hydrogen_to_power::electricity,NL13::ccgt::electricity,NL13::demand_electricity::electricity,NL13::pv_rooftop::electricity,NL13::battery::electricity,NL13::curtailment::electricity,NL13::hvac_transmission:NL11::electricity,NL13::lost_load::electricity,NL13::hvac_transmission:NL21::electricity,NL13::wind_onshore::electricity,NL13::pv_farm::electricity  K       <      NL42::wind_onshore::electricity,NL42::hydrogen_to_power::electricity,NL42::pv_rooftop::electricity,NL42::battery::electricity,NL42::lost_load::electricity,NL42::hvac_transmission:NL41::electricity,NL42::ccgt::electricity,NL42::pv_farm::electricity,NL42::demand_electricity::electricity,NL42::curtailment::electricity    L       ]      NL34::pv_farm::electricity,NL34::demand_electricity::electricity,NL34::curtailment::electricity,NL34::ccgt::electricity,NL34::battery::electricity,NL34::hvac_transmission:NL41::electricity,NL34::hydrogen_to_power::electricity,NL34::pv_rooftop::electricity,NL34::lost_load::electricity,NL34::wind_onshore::electricity,NL34::wind_offshore::electricity   M               N               O               P               Q               R               S               T               U               V               W               X               Y               Z               [               x^]��	�@@Ѩ����1/����d'�8��<r�#"���5���l����;���ռ���wp�O�Gp'p
g*Gs.���+���U��� KFHIB X�         !�     !�     !�     !�     !�     !�     �}
     �     ��     ��������������������������������������������������������CZ8TREE  ����������������k                      i�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDR�                      ?      @ 4 4�     +         �                   ��                ������������������������A         _Netcdf4Coordinates                            D        _FillValue  ?      @ 4 4�                      �7    
    is_result                            L        DIMENSION_LIST                              ��     8   �<�OCHK    �     �      �  	   0   REFERENCE_LIST 6     dataset        dimension                         �{
            �
            �             ��             !�             ��             �d�x^]�I
�PD�?u�Q�m�.Qw��܉��zp�a9Ƙm��y+
���� ������o�ĵ���N܋q,Nĩ8�( ��x�Y�z��("�#��%W� �Q+OTREE  ����������������                       ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           OHDRy                                     +       ��     9                    �                ������������������������A         _Netcdf4Coordinates                           7    
    is_result                            L        DIMENSION_LIST                              ��     :   �:oTREE  ����������������M                      �'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           GCOL                 �      NL12::battery::electricity,NL12::pv_farm::electricity,NL12::wind_offshore::electricity,NL12::lost_load::electricity,NL12::ccgt::electricity,NL12::wind_onshore::electricity,NL12::hvac_transmission:NL11::electricity,NL12::demand_electricity::electricity,NL12::pv_rooftop::electricity,NL12::hydrogen_to_power::electricity,NL12::hvac_transmission:NL23::electricity,NL12::curtailment::electricity        �      NL33::wind_offshore::electricity,NL33::ccgt::electricity,NL33::wind_onshore::electricity,NL33::lost_load::electricity,NL33::battery::electricity,NL33::hydrogen_to_power::electricity,NL33::hvac_transmission:NL31::electricity,NL33::demand_electricity::electricity,NL33::hvac_transmission:NL32::electricity,NL33::pv_rooftop::electricity,NL33::hvac_transmission:NL41::electricity,NL33::pv_farm::electricity,NL33::curtailment::electricity              f      NL31::battery::electricity,NL31::curtailment::electricity,NL31::demand_electricity::electricity,NL31::lost_load::electricity,NL31::hvac_transmission:NL32::electricity,NL31::wind_onshore::electricity,NL31::ccgt::electricity,NL31::pv_farm::electricity,NL31::hvac_transmission:NL33::electricity,NL31::pv_rooftop::electricity,NL31::hydrogen_to_power::electricity         �      NL41::demand_electricity::electricity,NL41::hydrogen_to_power::electricity,NL41::hvac_transmission:NL22::electricity,NL41::ccgt::electricity,NL41::hvac_transmission:NL33::electricity,NL41::wind_onshore::electricity,NL41::hvac_transmission:NL34::electricity,NL41::pv_farm::electricity,NL41::lost_load::electricity,NL41::hvac_transmission:NL42::electricity,NL41::curtailment::electricity,NL41::battery::electricity,NL41::pv_rooftop::electricity             �      NL11::curtailment::electricity,NL11::wind_onshore::electricity,NL11::hvac_transmission:NL13::electricity,NL11::battery::electricity,NL11::hvac_transmission:NL12::electricity,NL11::hydrogen_to_power::electricity,NL11::wind_offshore::electricity,NL11::ccgt::electricity,NL11::pv_farm::electricity,NL11::demand_electricity::electricity,NL11::lost_load::electricity,NL11::pv_rooftop::electricity        �      NL32::pv_rooftop::electricity,NL32::wind_offshore::electricity,NL32::hvac_transmission:NL33::electricity,NL32::curtailment::electricity,NL32::hydrogen_to_power::electricity,NL32::demand_electricity::electricity,NL32::hvac_transmission:NL31::electricity,NL32::lost_load::electricity,NL32::pv_farm::electricity,NL32::battery::electricity,NL32::ccgt::electricity,NL32::wind_onshore::electricity,NL32::hvac_transmission:NL23::electricity                                    ��     	               
                                                                                                                                                                                                                                                                                                                                                          !               "               #               $               %               &               '               (               )               *               +               ,               -               .               /               0               1               2               3               4               5               6               7               8               9               :               ;               <               =               >               ?               @               A               B               C               D               E               F               G               H               I               J               K               L               M               N               O               P               Q               R               S               T               U               V               W               X               Y               Z               [               \               ]               ^               _               `               a               b               c               d               OHDRy    �       �                          +       �                         (     �           ������������������������A         _Netcdf4Coordinates                        "   7    
    is_result                            L        DIMENSION_LIST                              �        ��YTOHDR�                            @    +         �                   R                ������������������������A         _Netcdf4Coordinates                           7    
    is_result                            9        units          days since 2015-03-03 09:00:001    	    calendar          proleptic_gregorianL        DIMENSION_LIST                              60     �   ���BOCHK�     0   REFERENCE_LIST 6     dataset        dimension                         �{
             �
             ޙ
             >!             ג��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  x^��������؀���
Ļ��,h�@&�F$>�!������@<��U�{�����ıH|  �9TREE  �����������������                     6P             �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              GCOL                                                                                                                                   	               
                                                                                                                                                                                                                                                                                                                                                          !               "               #       %       NL34::demand_electricity::electricity   $              NL23::ccgt::electricity %       )       NL13::hvac_transmission:NL11::electricity       &       )       NL32::hvac_transmission:NL31::electricity       '       $       NL32::hydrogen_to_power::electricity    (               NL34::wind_offshore::electricity)       $       NL13::hydrogen_to_power::electricity    *              NL42::wind_onshore::electricity +       %       NL23::demand_electricity::electricity   ,              NL13::curtailment::electricity  -              NL23::wind_onshore::electricity .              NL12::pv_rooftop::electricity   /              NL32::pv_farm::electricity      0              NL34::wind_onshore::electricity 1              NL41::wind_onshore::electricity 2               NL23::wind_offshore::electricity3              NL34::pv_farm::electricity      4       )       NL11::hvac_transmission:NL13::electricity       5              NL12::curtailment::electricity  6       %       NL41::demand_electricity::electricity   7              NL34::curtailment::electricity  8              NL12::lost_load::electricity    9              NL41::lost_load::electricity    :              NL12::battery::electricity      ;              NL11::pv_rooftop::electricity   <       $       NL23::hydrogen_to_power::electricity    =       )       NL12::hvac_transmission:NL23::electricity       >              NL13::pv_farm::electricity      ?              NL31::pv_farm::electricity      @               NL11::wind_offshore::electricityA              NL42::pv_rooftop::electricity   B               NL32::wind_offshore::electricityC              NL41::curtailment::electricity  D              NL11::ccgt::electricity E              NL13::battery::electricity      F              NL23::pv_rooftop::electricity   G              NL31::battery::electricity      H              NL22::curtailment::electricity  I              NL22::pv_rooftop::electricity   J              NL34::pv_rooftop::electricity   K       %       NL31::demand_electricity::electricity   L       )       NL32::hvac_transmission:NL33::electricity       M              NL11::lost_load::electricity    N       %       NL22::demand_electricity::electricity   O       )       NL33::hvac_transmission:NL41::electricity       P              NL33::battery::electricity      Q       )       NL22::hvac_transmission:NL21::electricity       R       )       NL41::hvac_transmission:NL34::electricity       S              NL11::pv_farm::electricity      T              NL32::lost_load::electricity    U              NL32::ccgt::electricity V       $       NL34::hydrogen_to_power::electricity    W              NL34::lost_load::electricity    X              NL31::wind_onshore::electricity Y       )       NL34::hvac_transmission:NL41::electricity       Z              NL33::curtailment::electricity  [              NL13::wind_onshore::electricity \       $       NL11::hydrogen_to_power::electricity    ]       )       NL12::hvac_transmission:NL11::electricity       ^              NL32::pv_rooftop::electricity   _              NL11::curtailment::electricity  `       )       NL41::hvac_transmission:NL33::electricity       a              NL42::battery::electricity      b              NL31::pv_rooftop::electricity   c       $       NL41::hydrogen_to_power::electricity    d       $       NL31::hydrogen_to_power::electricity    e       )       NL11::hvac_transmission:NL12::electricity       f       $       NL22::hydrogen_to_power::electricity    g              NL21::lost_load::electricity    h              NL23::battery::electricity      i               NL33::wind_offshore::electricityj              NL11::wind_onshore::electricity k              NL13::pv_rooftop::electricity   l              NL21::pv_rooftop::electricity   m              NL21::pv_farm::electricity      n              NL32::curtailment::electricity  o       )       NL23::hvac_transmission:NL12::electricity       p              NL22::pv_farm::electricity      q              NL13::lost_load::electricity    r              NL11::battery::electricity      s              NL42::lost_load::electricity    t       )       NL21::hvac_transmission:NL23::electricity       u       )       NL32::hvac_transmission:NL23::electricity       v              NL22::wind_onshore::electricity w              NL42::ccgt::electricity x              NL22::lost_load::electricity    y              NL41::ccgt::electricity z              NL12::pv_farm::electricity      {       %       NL13::demand_electricity::electricity   |              NL33::ccgt::electricity }              NL34::ccgt::electricity ~       )       NL41::hvac_transmission:NL42::electricity                     NL41::pv_farm::electricity      �              NL22::battery::electricity      �              NL21::ccgt::electricity �              NL33::pv_rooftop::electricity   �              NL32::wind_onshore::electricity �       %       NL12::demand_electricity::electricity   �              NL12::ccgt::electricity �       )       NL33::hvac_transmission:NL31::electricity       �              NL42::curtailment::electricity  �       $       NL21::hydrogen_to_power::electricity    �              NL32::battery::electricity      �              NL42::pv_farm::electricity      �              NL21::curtailment::electricity  �              NL21::battery::electricity      �              NL31::ccgt::electricity �              NL33::lost_load::electricity    �       )       NL42::hvac_transmission:NL41::electricity       �              NL13::ccgt::electricity �       )       NL13::hvac_transmission:NL21::electricity       �       )       NL23::hvac_transmission:NL21::electricity       �              NL31::curtailment::electricity  �       )       NL22::hvac_transmission:NL41::electricity       �       )       NL31::hvac_transmission:NL32::electricity       �              NL21::wind_onshore::electricity �       %       NL21::demand_electricity::electricity   �              NL23::curtailment::electricity  �              NL23::pv_farm::electricity      �              NL33::wind_onshore::electricity �       )       NL21::hvac_transmission:NL22::electricity       �              NL41::battery::electricity      �       $       NL12::hydrogen_to_power::electricity    �       )       NL31::hvac_transmission:NL33::electricity       �              NL33::pv_farm::electricity      �       $       NL42::hydrogen_to_power::electricity    �       )       NL41::hvac_transmission:NL22::electricity       �              NL31::lost_load::electricity    �       )       NL23::hvac_transmission:NL32::electricity       �       %       NL42::demand_electricity::electricity   �       $       NL33::hydrogen_to_power::electricity    �              NL41::pv_rooftop::electricity   �              NL22::ccgt::electricity �       )       NL21::hvac_transmission:NL13::electricity       �              NL23::lost_load::electricity    �       )       NL33::hvac_transmission:NL32::electricity       �               NL12::wind_offshore::electricity�       %       NL33::demand_electricity::electricity   �              NL12::wind_onshore::electricity �       %       NL32::demand_electricity::electricity   �       %       NL11::demand_electricity::electricity   �              NL34::battery::electricity      �              |U             �                                                                                                                                                                                                                                               x^]�Պ]QD��10� ��������������/$�W]臢���{n��܊��O����W���W�g���R�M����T�
/�T�ץ:U����������>�j[�O�ZW�s��x�-<�v��7�R�*|?���{?��=�~O�=���g��y�_�{��+��s{��'λ���|����~?�;� ���a�w$��x�1��C"�I���;��?��{�s繀�/����{\��������#�ӘU�ihk���?��?���������
}o|�>x���o�������<�pޖ���sH�x�0��p|�8�H�?*�h���?6�q8�x����D�7)���oJ����9�;�of�g�~6�3'����~>�� �c!~�E�_���%x�R|�e�_��W����~����Я���������7`���o��o����mk���L� TREE  ����������������                       ֦                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           