project "imgui"
  kind "StaticLib"
  language "C++"
  
  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

  files {
    "imconfig.h",
    "imgui.h",
    "imgui.cpp",
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_tables.cpp",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imstb_truetype.h",
    "imgui_demo.cpp",
  }

  filter "system:windows"
    cppdialect "C++17"

  filter "system:linux"
    cppdialect "C++17"
    pic "On"
  
  filter "configurations:Debug"
    runtime "Debug"
    staticruntime "on"
    symbols "on"
  filter "configurations:Release"
    runtime "Release"
    staticruntime "on"
    optimize "on"
  filter "configurations:Release"
    runtime "Release"
    staticruntime "on"
    symbols "off"
