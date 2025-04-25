# 2025-04-25T06:57:38.313019100
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis_Task4")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../Vivado_Task4/design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="hello_world",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

comp = client.get_component(name="hello_world")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../../Task1", files=["audio_tables.h"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="hello_world")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

