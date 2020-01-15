echo off

call findvs.bat

IF NOT "%vspath%"=="" (
  nuget install MSBuildTasks -Version 1.5.0.196
  msbuild build-package.proj /t:Clean;BeforeBuild /tv:%tv%
)
pause