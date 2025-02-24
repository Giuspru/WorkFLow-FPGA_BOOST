<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" top="func" name="proj">
    <files>
        <file name="../../testbench.cc" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="src/func.cc" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions>
        <solution name="solution" status=""/>
    </solutions>
    <Simulation argv="2 6">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
</AutoPilot:project>

