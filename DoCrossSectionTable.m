$StartingTime = AbsoluteTime[];
$ElapsedSeconds[] := Round[AbsoluteTime[] - $StartingTime];
$ConsoleBoldGreen = "\033[1m\033[32m";
$ColsoleBoldCyan = "\033[1m\033[36m";
$ConsoleBoldWhite = "\033[1m\033[37m";
$ConsoleBlue = "\033[34m";
$ConsoleResetColor = "\033[0m";
$Debug = True;

If[$VersionNumber < 9,
  $CMD = $CommandLine[[3 ;;]];,
  $CMD = $ScriptCommandLine;
];

$state = $CMD[[2]];
$offset = ToExpression[$CMD[[3]]];
$delta = ToExpression[$CMD[[4]]];
$step = ToExpression[$CMD[[5]]];
$pref = $CMD[[6]];


$Log[pref_, x_] := If[$Debug, Print[$ConsoleBoldGreen <> "[" <> pref <> " " <> ToString[$ElapsedSeconds[]] <> "s] " <> $ConsoleBoldWhite <> ToString[x] <> $ConsoleResetColor]];
$Log[x_] := $Log[$state, x];


Get["CrossSection.m"];

AllStates = {"PP", "PV", "VV"};
zAllStates = {"zPP", "zPV", "zVV"};
AllStatesWithZ = Join[AllStates, zAllStates];

If[FreeQ[AllStatesWithZ, $state], $Log["Unknown state: " <> $state]; Throw["Unknown state: " <> $state]];

$Log["Calculating table for " <> $state];
$pathPrefix = If[StringTake[$state, 1] == "z", "z_amps_" <> StringTake[$state, {2, StringLength[$state]}], "amps_" <> $state];

(*Load data *)
ReadData[$pathPrefix, $state];


ListOfEcm = Table[ecm, {ecm, Sqrt[$SMIN + 10^-2] + $offset, Sqrt[$SMIN + 10^-2] + $offset + $delta, $step}];

$DsDCosThetaList = {};
Do[
  $Log[{$state, ecm}];
  AppendTo[$DsDCosThetaList, {ecm, $state, Evaluate[ DsDCosTheta[$state, ecm^2, cos]]}];
  , {ecm, ListOfEcm}];


Export[$pref <> $state <> "_DsDCosThetaList.m", $DsDCosThetaList];