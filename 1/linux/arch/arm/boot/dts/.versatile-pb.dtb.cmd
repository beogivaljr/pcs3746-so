cmd_arch/arm/boot/dts/versatile-pb.dtb := mkdir -p arch/arm/boot/dts/ ; arm-linux-gnueabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.versatile-pb.dtb.d.pre.tmp -nostdinc -I./arch/arm/boot/dts -I./arch/arm/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.versatile-pb.dtb.dts.tmp arch/arm/boot/dts/versatile-pb.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/versatile-pb.dtb -b 0 -i arch/arm/boot/dts/ -Wno-unit_address_vs_reg -Wno-simple_bus_reg -Wno-unit_address_format -Wno-pci_bridge -Wno-pci_device_bus_num -Wno-pci_device_reg  -d arch/arm/boot/dts/.versatile-pb.dtb.d.dtc.tmp arch/arm/boot/dts/.versatile-pb.dtb.dts.tmp ; cat arch/arm/boot/dts/.versatile-pb.dtb.d.pre.tmp arch/arm/boot/dts/.versatile-pb.dtb.d.dtc.tmp > arch/arm/boot/dts/.versatile-pb.dtb.d

source_arch/arm/boot/dts/versatile-pb.dtb := arch/arm/boot/dts/versatile-pb.dts

deps_arch/arm/boot/dts/versatile-pb.dtb := \
  arch/arm/boot/dts/versatile-ab.dts \
  arch/arm/boot/dts/skeleton.dtsi \

arch/arm/boot/dts/versatile-pb.dtb: $(deps_arch/arm/boot/dts/versatile-pb.dtb)

$(deps_arch/arm/boot/dts/versatile-pb.dtb):
