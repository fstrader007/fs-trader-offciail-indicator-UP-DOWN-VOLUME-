//+------------------------------------------------------------------+
//|                                                   UpDownVolume.mq5 |
//|                        FS-Traders Official INDICATOR Made By DEV-ARSLAN |
//|                                    © 2025 FS-Traders Official |
//+------------------------------------------------------------------+
#property indicator_separate_window
#property indicator_buffers 3
#property indicator_plots   3
#property indicator_label1  "Up Volume"
#property indicator_label2  "Down Volume"
#property indicator_label3  "Delta"
#property indicator_type1   DRAW_HISTOGRAM
#property indicator_type2   DRAW_HISTOGRAM
#property indicator_type3   DRAW_LINE
#property indicator_color1  clrGreen
#property indicator_color2  clrRed
#property indicator_color3  clrYellow
#property indicator_width1  2
#property indicator_width2  2
#property indicator_width3  1

double UpBuffer[];
double DownBuffer[];
double DeltaBuffer[];

//+------------------------------------------------------------------+
//| Custom indicator initialization                                  |
//+------------------------------------------------------------------+
int OnInit()
  {
   SetIndexBuffer(0, UpBuffer, INDICATOR_DATA);
   SetIndexBuffer(1, DownBuffer, INDICATOR_DATA);
   SetIndexBuffer(2, DeltaBuffer, INDICATOR_DATA);
   
   IndicatorSetString(INDICATOR_SHORTNAME, "FS-Traders UpDown Volume by DEV-ARSLAN");
   IndicatorSetInteger(INDICATOR_DIGITS, 0);
   
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
   // Determine starting position for calculation
   int start;
   if(prev_calculated == 0)
      start = 0; // First calculation - start from beginning
   else
      start = prev_calculated - 1; // Recalculate last bar and new bars
   
   // Loop through bars
   for(int i = start; i < rates_total; i++)
     {
      // Use real volume if available, otherwise fall back to tick_volume
      long vol = (volume[i] > 0) ? volume[i] : tick_volume[i];
      
      if(close[i] > open[i])
        {
         // Bullish candle
         UpBuffer[i] = (double)vol;
         DownBuffer[i] = 0;
        }
      else if(close[i] < open[i])
        {
         // Bearish candle - make negative for histogram
         UpBuffer[i] = 0;
         DownBuffer[i] = -(double)vol;
        }
      else
        {
         // Doji candle
         UpBuffer[i] = 0;
         DownBuffer[i] = 0;
        }
      
      DeltaBuffer[i] = UpBuffer[i] + DownBuffer[i]; // Note: DownBuffer is negative
     }
   
   return(rates_total);
  }
//+------------------------------------------------------------------+