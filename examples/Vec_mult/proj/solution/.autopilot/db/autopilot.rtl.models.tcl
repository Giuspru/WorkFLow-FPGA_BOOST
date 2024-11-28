set SynModuleInfo {
  {SRCNAME func MODELNAME func RTLNAME func IS_TOP 1
    SUBMODULES {
      {MODELNAME func_mul_16s_16s_32_1_1 RTLNAME func_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME func_gmem_m_axi RTLNAME func_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME func_control_s_axi RTLNAME func_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
