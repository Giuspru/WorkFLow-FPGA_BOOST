set SynModuleInfo {
  {SRCNAME func MODELNAME func RTLNAME func IS_TOP 1
    SUBMODULES {
      {MODELNAME func_mac_muladd_16s_16s_32ns_32_4_1 RTLNAME func_mac_muladd_16s_16s_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME func_gmem_m_axi RTLNAME func_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME func_control_s_axi RTLNAME func_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
