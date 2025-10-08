//+------------------------------------------------------------------+
//|                                          TestUpDownVolume.mq5 |
//|                  Test EA for FS-Traders UpDownVolume by DEV-ARSLAN |
//+------------------------------------------------------------------+
#property copyright "FS-Traders Official - Made By DEV-ARSLAN"
#property version   "1.00"

int indicator_handle;

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
   // Create indicator handle
   indicator_handle = iCustom(_Symbol, _Period, "UpDownVolume");
   
   if(indicator_handle == INVALID_HANDLE)
     {
      Print("Failed to create indicator handle");
      return(INIT_FAILED);
     }
   
   Print("FS-Traders UpDownVolume indicator by DEV-ARSLAN loaded successfully");
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Expert deinitialization function                               |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
   if(indicator_handle != INVALID_HANDLE)
      IndicatorRelease(indicator_handle);
  }

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   static datetime last_time = 0;
   datetime current_time = iTime(_Symbol, _Period, 0);
   
   // Only check on new bar
   if(current_time != last_time)
     {
      last_time = current_time;
      
      double up_volume[1], down_volume[1], delta[1];
      
      // Get indicator values
      if(CopyBuffer(indicator_handle, 0, 0, 1, up_volume) > 0 &&
         CopyBuffer(indicator_handle, 1, 0, 1, down_volume) > 0 &&
         CopyBuffer(indicator_handle, 2, 0, 1, delta) > 0)
        {
         Print("Current Bar - Up Volume: ", up_volume[0], 
               " Down Volume: ", down_volume[0], 
               " Delta: ", delta[0]);
        }
      else
        {
         Print("Failed to get indicator values");
        }
     }
  }
//+------------------------------------------------------------------+