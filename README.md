# FS-Traders Official UpDownVolume Indicator 

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![MQL5](https://img.shields.io/badge/MQL5-Compatible-blue.svg)](https://www.mql5.com/)
[![MetaTrader 5](https://img.shields.io/badge/MetaTrader-5-green.svg)](https://www.metatrader5.com/)
[![Developer](https://img.shields.io/badge/Developer-DEV--ARSLAN-brightgreen.svg)](https://github.com/dev-arslan)
[![FS-Traders](https://img.shields.io/badge/FS--Traders-Official-orange.svg)](https://fs-traders.com)

**Made By DEV-ARSLAN | FS-Traders Official**

A professional volume analysis indicator for MetaTrader 5 that separates bullish and bearish volume into clear visual components.

[![UpDownVolume Preview](docs/preview.png)](https://i.ibb.co/qL6RZmG5/Screenshot-3.png)

## 📊 Description

This indicator provides comprehensive volume analysis by displaying:
- **🟢 Green bars**: Volume for bullish candles (close > open)
- **🔴 Red bars**: Volume for bearish candles (close < open) - displayed as negative values
- **🟡 Yellow line**: Delta (net difference between up and down volume)

## ✨ Features

- 📈 Real-time volume analysis with professional visualization
- 🎯 Uses real volume when available, intelligently falls back to tick volume
- 🖥️ Clean separate indicator window display
- ⚡ Optimized calculation with proper buffer management
- 🎭 Smart handling of doji candles (open = close)
- 🔧 Easy installation and configuration
- 📱 Compatible with all timeframes and symbols

## 📁 Project Structure

```
📦 fs-traders-updown-volume-indicator/
├── 📄 UpDownVolume.mq5          # Main indicator source code by DEV-ARSLAN
├── 🧪 TestUpDownVolume.mq5      # Test EA for validation
├── 📖 README.md                 # This documentation
├── 📋 LICENSE                   # MIT License
├── 🚫 .gitignore               # Git ignore rules
└── 📂 docs/                     # Documentation assets
    └── 🖼️ preview.png           # FS-Traders indicator preview
```

## 🚀 Quick Start

### Prerequisites
- MetaTrader 5 platform
- Basic knowledge of MT5 indicator installation

### Installation

#### Method 1: Download Release (Recommended)
1. Go to [Releases](../../releases) and download the latest version
2. Extract the files to your MT5 data folder:
   ```
   MT5 Data Folder/MQL5/Indicators/
   ```
3. Restart MetaTrader 5

#### Method 2: Build from Source
```bash
# Clone the repository
git clone https://github.com/fs-traders/fs-traders-updown-volume-indicator.git

# Navigate to project directory
cd fs-traders-updown-volume-indicator

# Copy source file to MT5 indicators folder
# Then compile using MetaEditor (F7)
```

### Usage

1. **Apply to Chart**
   - Open any chart in MT5
   - Navigate: `Insert` → `Indicators` → `Custom` → `FS-Traders UpDown Volume by DEV-ARSLAN`
   - Click "OK" to apply

2. **Customize Settings**
   - Right-click on indicator → `Properties`
   - Adjust colors, line widths, and display options

## 🧪 Testing & Validation

### Automated Testing
Use the included test EA to verify functionality:

```mql5
// The TestUpDownVolume.mq5 EA will:
// - Load the FS-Traders UpDownVolume indicator automatically
// - Print volume analysis to Experts log by DEV-ARSLAN's algorithm
// - Validate real-time calculations
```

### Manual Testing Checklist
- [ ] Indicator loads without errors
- [ ] Green bars appear on bullish candles
- [ ] Red bars appear on bearish candles  
- [ ] Delta line updates correctly
- [ ] Works across different timeframes
- [ ] Handles doji candles properly

## 📈 How It Works

### Volume Classification Logic
```mql5
if(close > open)        // Bullish candle
    up_volume = volume;
else if(close < open)   // Bearish candle  
    down_volume = volume;
else                    // Doji candle
    // No volume assigned
```

### Technical Specifications
| Property | Value |
|----------|-------|
| **Indicator Type** | Custom Histogram + Line |
| **Buffers** | 3 (Up, Down, Delta) |
| **Window** | Separate indicator window |
| **Volume Source** | Real volume → Tick volume fallback |
| **Update Mode** | Real-time on each tick |
| **Memory Usage** | Optimized buffer management |

## 🎨 Customization

### Color Scheme
- **Up Volume**: `clrGreen` (Customizable)
- **Down Volume**: `clrRed` (Customizable)  
- **Delta Line**: `clrYellow` (Customizable)

### Display Options
- Histogram bar width: 2px (default)
- Delta line width: 1px (default)
- All settings adjustable via Properties dialog

## 🔧 Development

### Building
```bash
# Using MetaEditor command line
metaeditor64.exe /compile:"UpDownVolume.mq5"
```

### Code Structure
```
UpDownVolume.mq5
├── Properties & Settings
├── Buffer Declarations  
├── OnInit() - Initialization
└── OnCalculate() - Main logic
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines
- Follow MQL5 coding standards
- Add comments for complex logic
- Test thoroughly before submitting
- Update documentation as needed

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

- **Issues**: [GitHub Issues](../../issues)
- **Discussions**: [GitHub Discussions](../../discussions)
- **Documentation**: [Wiki](../../wiki)

## 📊 Changelog

### v1.0.0 (2025-10-08)
- ✨ Initial release
- 📊 Volume separation with histogram display
- 🎯 Delta calculation and visualization
- 🧪 Comprehensive test suite
- 📖 Full documentation

---

⭐ **If this FS-Traders indicator by DEV-ARSLAN helps your trading analysis, please star the repository!**

---

**© 2025 FS-Traders Official | Made By DEV-ARSLAN**  

*Professional Trading Solutions & Indicators*
