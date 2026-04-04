# Design System Implementation

Complete reference for Kumi Note design tokens including token values, code usage, and design rationale.

---

## Colors

### Shiba Palette

| Design Token | Hex Code | Dart Code | Usage |
|--------------|----------|-----------|-------|
| `primary` | `#E8751A` | `KumiColors.primary` | Primary actions, FAB, buttons |
| `primaryLight` | `#FDB874` | `KumiColors.primaryLight` | Hover states, light backgrounds |
| `primaryLighter` | `#FFF4E8` | `KumiColors.primaryLighter` | Active card backgrounds |
| `background` | `#FFFFFF` | `KumiColors.background` | Page backgrounds |
| `surfaceCreme` | `#FFF9F5` | `KumiColors.surfaceCreme` | Kumi bar, secondary surfaces |
| `textPrimary` | `#2D2013` | `KumiColors.textPrimary` | Main text, titles |
| `textSecondary` | `#6B5A4A` | `KumiColors.textSecondary` | Secondary text, placeholders |
| `textDisabled` | `#9CA3AF` | `KumiColors.textDisabled` | Disabled text, dates |
| `white` | `#FFFFFF` | `KumiColors.white` | Text on primary buttons |
| `error` | `#EF4444` | `KumiColors.error` | Destructive actions |
| `success` | `#22C55E` | `KumiColors.success` | Confirmations, checkmarks |
| `overlay` | `rgba(0,0,0,0.5)` | `KumiColors.overlay` | Modal backgrounds |
| `divider` | `#E5E7EB` | `KumiColors.divider` | Borders, separators |
| `borderLight` | `#F3F4F6` | `KumiColors.borderLight` | Light borders |

### Usage Example

```dart
Container(
  color: KumiColors.surfaceCreme,
  child: Text(
    'Hello',
    style: TextStyle(color: KumiColors.textPrimary),
  ),
)
```

---

## Spacing

### Base System (4px Grid)

| Design Token | Value | Dart Code | Usage |
|--------------|-------|-----------|-------|
| `spaceXs` | 4px | `KumiSpacing.spaceXs` | Micro spacing |
| `spaceSm` | 8px | `KumiSpacing.spaceSm` | Button padding, icons |
| `spaceMd` | 12px | `KumiSpacing.spaceMd` | List spacing |
| `spaceLg` | 16px | `KumiSpacing.spaceLg` | Content margins |
| `spaceXl` | 24px | `KumiSpacing.spaceXl` | Section separation |
| `space2xl` | 32px | `KumiSpacing.space2xl` | Large margins |

### EdgeInsets Helpers

```dart
// Padding shortcuts
KumiSpacing.paddingXs     // EdgeInsets.all(4)
KumiSpacing.paddingSm     // EdgeInsets.all(8)
KumiSpacing.paddingMd     // EdgeInsets.all(12)
KumiSpacing.paddingLg     // EdgeInsets.all(16)
KumiSpacing.paddingXl     // EdgeInsets.all(24)
KumiSpacing.padding2xl    // EdgeInsets.all(32)

// Horizontal only
KumiSpacing.paddingHorizontalSm
KumiSpacing.paddingHorizontalMd
KumiSpacing.paddingHorizontalLg
KumiSpacing.paddingHorizontalXl

// Vertical only
KumiSpacing.paddingVerticalSm
KumiSpacing.paddingVerticalMd
KumiSpacing.paddingVerticalLg
KumiSpacing.paddingVerticalXl
```

### SizedBox Helpers (Both Dimensions)

```dart
// Square spacing
KumiSpacing.sizedBoxXs    // SizedBox(4, 4)
KumiSpacing.sizedBoxSm    // SizedBox(8, 8)
KumiSpacing.sizedBoxMd    // SizedBox(12, 12)
KumiSpacing.sizedBoxLg    // SizedBox(16, 16)
KumiSpacing.sizedBoxXl    // SizedBox(24, 24)
KumiSpacing.sizedBox2xl   // SizedBox(32, 32)
```

### Directional Spacing

```dart
// Horizontal only (width)
KumiSpacing.horizontalXs  // SizedBox(width: 4)
KumiSpacing.horizontalSm  // SizedBox(width: 8)
KumiSpacing.horizontalMd  // SizedBox(width: 12)
KumiSpacing.horizontalLg  // SizedBox(width: 16)
KumiSpacing.horizontalXl  // SizedBox(width: 24)
KumiSpacing.horizontal2xl // SizedBox(width: 32)

// Vertical only (height)
KumiSpacing.verticalXs    // SizedBox(height: 4)
KumiSpacing.verticalSm    // SizedBox(height: 8)
KumiSpacing.verticalMd    // SizedBox(height: 12)
KumiSpacing.verticalLg    // SizedBox(height: 16)
KumiSpacing.verticalXl    // SizedBox(height: 24)
KumiSpacing.vertical2xl   // SizedBox(height: 32)
```

### Usage Examples

```dart
// Row with horizontal spacing
Row(
  children: [
    Icon(Icons.star),
    KumiSpacing.horizontalSm,  // 8px width
    Text('Rating'),
  ],
)

// Column with vertical spacing
Column(
  children: [
    Text('Title'),
    KumiSpacing.verticalMd,    // 12px height
    Text('Content'),
    KumiSpacing.verticalLg,    // 16px height
    Button(...),
  ],
)
```

---

## Typography

### Font Sizes

| Design Token | Size | Dart Code | Usage |
|--------------|------|-----------|-------|
| `textXs` | 12px | `KumiTypography.textXs` | Labels, captions |
| `textSm` | 14px | `KumiTypography.textSm` | Secondary text |
| `textBase` | 16px | `KumiTypography.textBase` | Body text (default) |
| `textLg` | 18px | `KumiTypography.textLg` | Section titles |
| `textXl` | 20px | `KumiTypography.textXl` | Page titles |
| `text2xl` | 24px | `KumiTypography.text2xl` | Large titles |

### Font Weights

```dart
KumiTypography.regular   // FontWeight.w400
KumiTypography.medium    // FontWeight.w500
KumiTypography.semiBold  // FontWeight.w600
KumiTypography.bold      // FontWeight.w700
```

### Text Styles

```dart
// Predefined text styles
KumiTypography.xs   // TextStyle(textXs, regular)
KumiTypography.sm   // TextStyle(textSm, regular)
KumiTypography.base // TextStyle(textBase, regular)
KumiTypography.lg   // TextStyle(textLg, semiBold)
KumiTypography.xl   // TextStyle(textXl, bold)
KumiTypography.xxl  // TextStyle(text2xl, bold)
```

### Complete TextTheme

```dart
ThemeData(
  textTheme: KumiTypography.textTheme,
)
```

Provides Material TextTheme with all text styles mapped.

---

## Breakpoints

### Device Categories

| Category | Range | Dart Constant |
|----------|-------|---------------|
| Mobile | 0 - 767px | `KumiBreakpoints.mobile` (0) |
| Tablet | 768 - 1023px | `KumiBreakpoints.tablet` (768) |
| Desktop | 1024px+ | `KumiBreakpoints.desktop` (1024) |

### Responsive Utilities

```dart
// Boolean checks
KumiBreakpoints.isMobile(screenWidth)
KumiBreakpoints.isTablet(screenWidth)
KumiBreakpoints.isDesktop(screenWidth)

// Get responsive value
final value = KumiBreakpoints.responsive<T>(
  width: screenWidth,
  mobile: mobileValue,
  tablet: tabletValue,      // Optional, falls back to mobile
  desktop: desktopValue,    // Optional, falls back to tablet
);
```

### Usage with Dimensions

```dart
// Get responsive dimension
final topbarHeight = KumiDimensions.topbarHeight(screenWidth);
final contentWidth = KumiDimensions.contentMaxWidth(screenWidth);
```

---

## Animations

### Durations

| Token | Duration | Dart Code | Usage |
|-------|----------|-----------|-------|
| `durationFast` | 150ms | `KumiAnimations.durationFast` | Hover, focus |
| `durationNormal` | 250ms | `KumiAnimations.durationNormal` | Open/close |
| `durationSlow` | 400ms | `KumiAnimations.durationSlow` | Complex transitions |
| `durationToast` | 3000ms | `KumiAnimations.durationToast` | Toast display |
| `durationToastAction` | 5000ms | `KumiAnimations.durationToastAction` | Toast with action |

### Easing Curves

```dart
KumiAnimations.easeDefault  // Cubic(0.4, 0, 0.2, 1) - Standard
KumiAnimations.easeIn       // Cubic(0.4, 0, 1, 1) - Entering
KumiAnimations.easeOut        // Cubic(0, 0, 0.2, 1) - Exiting
```

---

## Radius

| Token | Value | Dart Code |
|-------|-------|-----------|
| `radiusSm` | 4px | `KumiRadius.radiusSm` |
| `radiusMd` | 8px | `KumiRadius.radiusMd` |
| `radiusLg` | 12px | `KumiRadius.radiusLg` |
| `radiusXl` | 16px | `KumiRadius.radiusXl` |
| `radiusFull` | 9999px | `KumiRadius.radiusFull` |

### BorderRadius Helpers

```dart
KumiRadius.borderSm    // BorderRadius.all(Radius.circular(4))
KumiRadius.borderMd    // BorderRadius.all(Radius.circular(8))
KumiRadius.borderLg    // BorderRadius.all(Radius.circular(12))
KumiRadius.borderXl    // BorderRadius.all(Radius.circular(16))
KumiRadius.borderFull  // BorderRadius.all(Radius.circular(9999))

// Top-only variants
KumiRadius.borderTopLg  // BorderRadius.vertical(top: Radius.circular(12))
KumiRadius.borderTopXl  // BorderRadius.vertical(top: Radius.circular(16))
```

---

## Z-Index

| Layer | Value | Dart Code |
|-------|-------|-----------|
| Dropdown | 100 | `KumiZIndex.zDropdown` |
| Sticky | 200 | `KumiZIndex.zSticky` |
| FAB | 300 | `KumiZIndex.zFab` |
| Modal | 400 | `KumiZIndex.zModal` |
| Toast | 500 | `KumiZIndex.zToast` |
| Tooltip | 600 | `KumiZIndex.zTooltip` |

---

## Complete Theme Setup

```dart
MaterialApp(
  theme: createKumiTheme(),
  home: MyHomePage(),
)
```

`createKumiTheme()` returns ThemeData with:
- ColorScheme from tokens
- Typography from tokens
- Material3 enabled
- KumiTheme extension

---

## Design Rationale

### Why the 4px Base Grid?

- **Consistency**: All spacing is multiples of 4 (4, 8, 12, 16, 24, 32...)
- **Mental Model**: Easy to remember - just multiply by 4
- **Material Design 3**: Aligns with Google's spacing system
- **Pixel Perfect**: Avoids sub-pixel rendering issues

### Breakpoint Strategy (Mobile-First)

| Breakpoint | Value | Rationale |
|------------|-------|-----------|
| Mobile | 0px | Base for all devices |
| Tablet | 768px | iPad mini width threshold |
| Desktop | 1024px | Standard laptop width threshold |

**Approach**: Mobile-first with progressive enhancement

### Color Philosophy (Shiba Palette)

| Color | Hex | Rationale |
|-------|-----|-----------|
| Primary Orange | #E8751A | Warm, energetic, friendly |
| Surface Cream | #FFF9F5 | Softer than white, reduces eye strain |
| Text Primary | #2D2013 | Warm dark brown for readability |
| Text Secondary | #6B5A4A | Medium brown for hierarchy |

### Typography Scale

- **Base**: 16px (system default)
- **Ratio**: ~1.125x scale (16→18→20→24)
- **Font**: System fonts (SF Pro, Roboto, Segoe UI) for performance
- **Weights**: Regular (body), Semi-bold (titles), Bold (headers)

### Z-Index Layers

- **100 increments**: Room for custom layers between standard ones
- **Order**: Content → Dropdowns → Sticky → FAB → Modals → Toasts → Tooltips

### Animation Timing

- **Curves**: Material Design 3 standard easing (cubic-bezier)
- **Fast (150ms)**: Micro-interactions (hover, focus)
- **Normal (250ms)**: State changes (open/close)
- **Slow (400ms)**: Complex transitions

---

## File Structure

```
lib/core/theme/
├── animations.dart      # Durations and curves
├── breakpoints.dart     # Responsive breakpoints
├── colors.dart          # Color tokens
├── dimensions.dart      # Responsive dimensions
├── kumi_theme.dart      # ThemeExtension and ThemeData
├── radius.dart          # Border radius tokens
├── shadows.dart         # Shadow tokens
├── spacing.dart         # Spacing tokens
├── typography.dart      # Text styles
└── z_index.dart         # Z-index layers
```

---

## Testing

All tokens have unit tests in:
`test/core/theme/kumi_theme_test.dart` (67 tests)
