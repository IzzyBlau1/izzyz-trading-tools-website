# Sample ThinkScript Code for Testing

# Simple RSI Indicator
declare lower;

input length = 14;
input overbought = 70;
input oversold = 30;

def rsi = RSI(length);
def overbought_line = overbought;
def oversold_line = oversold;

plot rsi;
plot overbought_line;
plot oversold_line;

# Color coding
rsi.SetDefaultColor(Color.BLUE);
overbought_line.SetDefaultColor(Color.RED);
oversold_line.SetDefaultColor(Color.GREEN);

