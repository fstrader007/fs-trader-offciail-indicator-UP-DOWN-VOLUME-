# Contributing to FS-Traders UpDownVolume Indicator

Thank you for considering contributing to the FS-Traders UpDownVolume indicator made by DEV-ARSLAN! This document provides guidelines for contributing to this project.

## 🤝 How to Contribute

### Reporting Issues

Before creating an issue, please:
1. Check existing issues to avoid duplicates
2. Use a clear and descriptive title
3. Provide detailed steps to reproduce the problem
4. Include your MT5 version and system information
5. Add relevant screenshots if applicable

### Suggesting Enhancements

Enhancement suggestions are welcome! Please:
1. Use a clear and descriptive title
2. Explain why this enhancement would be useful
3. Provide examples of how it should work
4. Consider if it fits the project's scope

### Pull Requests

1. **Fork** the repository
2. **Create** a feature branch from `main`
3. **Make** your changes following the coding standards
4. **Test** thoroughly on different timeframes and symbols
5. **Update** documentation if needed
6. **Submit** a pull request with a clear description

## 💻 Development Setup

### Prerequisites
- MetaTrader 5 platform
- MetaEditor (included with MT5)
- Git for version control

### Local Development
```bash
# Clone your fork
git clone https://github.com/yourusername/fs-traders-updown-volume-indicator.git

# Navigate to project
cd fs-traders-updown-volume-indicator

# Create feature branch
git checkout -b feature/your-feature-name
```

### Testing Your Changes
1. Copy the `.mq5` file to MT5 indicators folder
2. Compile using MetaEditor
3. Test on multiple timeframes (M1, M5, H1, D1)
4. Test on different symbols (Forex, Stocks, Futures)
5. Verify the test EA works correctly
6. Check for memory leaks or performance issues

## 📝 Coding Standards

### MQL5 Style Guidelines
- Use meaningful variable names
- Add comments for complex logic
- Follow consistent indentation (3 spaces)
- Use proper error handling
- Optimize for performance

### Example Code Style
```mql5
//+------------------------------------------------------------------+
//| Function description                                             |
//+------------------------------------------------------------------+
int CalculateVolume(const double &close[], const double &open[], 
                   const long &volume[], int index)
  {
   // Clear comment explaining the logic
   if(close[index] > open[index])
     {
      return (int)volume[index]; // Bullish volume
     }
   
   return 0; // No volume for bearish/doji
  }
```

### Commit Message Format
```
type: brief description

Detailed explanation of changes made and why.

- Bullet point for specific change
- Another bullet point

Closes #123
```

Types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`

## 🧪 Testing Guidelines

### Required Tests
- [ ] Compiles without warnings or errors
- [ ] Works on M1, M5, M15, M30, H1, H4, D1 timeframes
- [ ] Handles symbols with and without real volume
- [ ] Properly displays on different chart themes
- [ ] Test EA validates indicator values
- [ ] No memory leaks during extended operation

### Performance Considerations
- Minimize calculations in OnCalculate()
- Use efficient buffer operations
- Avoid unnecessary API calls
- Test with large datasets (10,000+ bars)

## 📖 Documentation

### When to Update Documentation
- Adding new features
- Changing existing functionality
- Fixing bugs that affect usage
- Improving installation process

### Documentation Standards
- Use clear, concise language
- Provide code examples
- Include screenshots for UI changes
- Update version information
- Test all provided examples

## 🏷️ Release Process

### Version Numbering
We follow [Semantic Versioning](https://semver.org/):
- **MAJOR**: Incompatible changes
- **MINOR**: New functionality (backward compatible)
- **PATCH**: Bug fixes (backward compatible)

### Release Checklist
- [ ] All tests pass
- [ ] Documentation updated
- [ ] Version number incremented
- [ ] Changelog updated
- [ ] Release notes prepared
- [ ] Compiled files tested

## 📞 Getting Help

- **Questions**: Use [GitHub Discussions](../../discussions)
- **Bugs**: Create an [Issue](../../issues)
- **Feature Requests**: Create an [Issue](../../issues) with enhancement label

## 🙏 Recognition

Contributors will be recognized in:
- README.md contributors section
- Release notes
- Git commit history
- Special thanks for significant contributions

Thank you for helping make this FS-Traders indicator by DEV-ARSLAN better for the trading community! 🚀

---

**© 2025 FS-Traders Official | Made By DEV-ARSLAN**