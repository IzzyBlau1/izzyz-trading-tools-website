# IB_Ichimuko
input tenkan_period = 9;
input kijun_period = 26;

plot Tenkan = (Highest(high, tenkan_period) + Lowest(low, tenkan_period)) / 2;
plot Kijun = (Highest(high, kijun_period) + Lowest(low, kijun_period)) / 2;
plot "Span A" = (Tenkan[kijun_period] + Kijun[kijun_period]) / 2;
plot "Span B" = (Highest(high[kijun_period], 2 * kijun_period) + Lowest(low[kijun_period], 2 * kijun_period)) / 2;
plot Chikou = close[-kijun_period];

Tenkan.SetDefaultColor(Color.red);
Tenkan.SetLineWeight(3);
Kijun.SetDefaultColor(Color.green);
Kijun.SetLineWeight(2);
"Span A".SetDefaultColor(Color.cyan);
"Span B".SetDefaultColor(Color.PINK);
Chikou.SetDefaultColor(Color.white);
Chikou.SetLineWeight(3);

DefineGlobalColor("Bullish", Color.green);
DefineGlobalColor("Bearish", Color.red);
AddCloud("Span A", "Span B", globalColor("Bullish"), globalColor("Bearish"));

