# Izzy'z Trading Tools - TOS to NT Indicator Converter

A web-based tool for converting ThinkOrSwim (TOS) ThinkScript indicators to NinjaTrader (NT) NinjaScript format.

## 🚀 Features

- **ThinkScript to NinjaScript Conversion**: Convert TOS indicators to NT format
- **Real-time Conversion**: Instant conversion as you type
- **Error Analysis**: Upload NT compilation errors for automated fixes
- **Dark Theme UI**: Professional dark interface
- **Download Options**: Download converted code as .cs files
- **Debugger Tool**: Analyze and fix compilation errors

## 🛠️ Tech Stack

- **Frontend**: Next.js 15, React, TypeScript
- **Styling**: Tailwind CSS, Inline Styles
- **Code Editor**: Custom textarea with syntax highlighting
- **Icons**: Lucide React

## 📦 Installation

1. **Clone the repository**:
   ```bash
   git clone <your-repo-url>
   cd izzyz-trading-tools
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Run the development server**:
   ```bash
   npm run dev
   ```

4. **Open your browser**:
   Navigate to [http://localhost:3000/tools/thinkorswim/converter](http://localhost:3000/tools/thinkorswim/converter)

## 🎯 Usage

### Converting ThinkScript to NinjaScript

1. **Enter Indicator Name**: Provide a name for your indicator
2. **Paste ThinkScript Code**: Copy your TOS ThinkScript code into the input window
3. **Click Convert**: The blue "CONVERT" button will transform your code
4. **Download**: Use the "Download .cs file" button to save your converted code

### Handling NinjaTrader Errors

1. **Compile in NinjaTrader**: Import your .cs file and attempt compilation
2. **Export Errors**: Right-click on error messages and select "Export" (saves as .csv)
3. **Upload Error File**: Use the "Debugger" section to upload your .csv error file
4. **Get Fixes**: The system will analyze errors and suggest automated fixes

## 📁 Project Structure

```
src/
├── app/
│   ├── tools/
│   │   ├── thinkorswim/converter/page.tsx
│   │   └── ninjatrader/converter/page.tsx
│   └── globals.css
├── components/
│   ├── CodeConverter.tsx      # Main converter component
│   ├── MonacoEditor.tsx       # Code editor (textarea)
│   └── ErrorUpload.tsx        # Error analysis component
└── lib/
    ├── converter.ts           # Core conversion logic
    └── errorHandler.ts        # Error parsing utilities
```

## 🔧 Key Components

### CodeConverter.tsx
- Main UI component with dark theme
- Handles conversion workflow
- Manages state for code input/output
- Provides download functionality

### converter.ts
- Core ThinkScript to NinjaScript conversion logic
- Function mappings (SMA, Abs, Highest, Lowest, etc.)
- Color constant conversions
- Input parameter extraction and formatting
- NinjaScript header/footer generation

### ErrorUpload.tsx
- CSV error file upload and parsing
- Error analysis and fix suggestions
- Debugger interface

## 🎨 UI Features

- **Dark Theme**: Professional dark interface
- **Dynamic Backgrounds**: Input/output windows turn green when code is present
- **Responsive Design**: Works on desktop and mobile
- **Professional Styling**: Clean, modern interface

## 📝 Conversion Features

### Supported ThinkScript Functions
- `SMA` → `SMA`
- `Abs` → `Math.Abs`
- `Highest` → `MAX`
- `Lowest` → `MIN`
- `plot` → `Plot`
- `input` → NinjaScript properties

### Color Conversions
- `color.red` → `Brushes.Red`
- `color.green` → `Brushes.Green`
- `color.blue` → `Brushes.Blue`
- And many more...

### Input Parameter Handling
- Extracts `input` statements
- Generates proper C# properties with attributes
- Initializes parameters in `SetDefaults`

## 🚀 Deployment

### Local Development
```bash
npm run dev
```

### Production Build
```bash
npm run build
npm start
```

### Deploy to Vercel
1. Connect your GitHub repository to Vercel
2. Vercel will automatically deploy on push
3. Your app will be available at `https://your-app.vercel.app`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License.

## 🆘 Support

For issues or questions:
1. Check the error analysis section in the app
2. Review the conversion logic in `src/lib/converter.ts`
3. Create an issue in the repository

## 🔄 Version History

- **v1.0.0**: Initial release with basic conversion functionality
- **v1.1.0**: Added error analysis and debugger
- **v1.2.0**: Improved UI and conversion accuracy
- **v1.3.0**: Enhanced input parameter handling and NinjaScript formatting

---

**Built with ❤️ for the trading community**
