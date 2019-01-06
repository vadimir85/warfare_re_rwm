while {true} do {
waitUntil {(daytime > 4) and (daytime < 20.25)};
setTimeMultiplier ('WFBE_FASTTIMERATE' Call GetNamespace);

waitUntil {(daytime > 20.25) || (daytime < 4)};
setTimeMultiplier 40;
};