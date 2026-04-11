import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kumi_note/core/theme/animations.dart';
import 'package:kumi_note/core/theme/breakpoints.dart';
import 'package:kumi_note/core/theme/colors.dart';
import 'package:kumi_note/core/theme/dimensions.dart';
import 'package:kumi_note/core/theme/kumi_theme.dart';
import 'package:kumi_note/core/theme/radius.dart';
import 'package:kumi_note/core/theme/shadows.dart';
import 'package:kumi_note/core/theme/spacing.dart';
import 'package:kumi_note/core/theme/typography.dart';
import 'package:kumi_note/core/theme/z_index.dart';

void main() {
  group('KumiColors', () {
    test('primary color is correct', () {
      expect(KumiColors.primary, const Color(0xFFE8751A));
    });

    test('surfaceCreme color is correct', () {
      expect(KumiColors.surfaceCreme, const Color(0xFFFFF9F5));
    });

    test('textPrimary color is correct', () {
      expect(KumiColors.textPrimary, const Color(0xFF2D2013));
    });

    test('error color is correct', () {
      expect(KumiColors.error, const Color(0xFFEF4444));
    });

    test('success color is correct', () {
      expect(KumiColors.success, const Color(0xFF22C55E));
    });
  });

  group('KumiSpacing', () {
    test('spaceXs is 4', () {
      expect(KumiSpacing.spaceXs, equals(4));
    });

    test('spaceSm is 8', () {
      expect(KumiSpacing.spaceSm, equals(8));
    });

    test('spaceMd is 12', () {
      expect(KumiSpacing.spaceMd, equals(12));
    });

    test('spaceLg is 16', () {
      expect(KumiSpacing.spaceLg, equals(16));
    });

    test('spaceXl is 24', () {
      expect(KumiSpacing.spaceXl, equals(24));
    });

    test('space2xl is 32', () {
      expect(KumiSpacing.space2xl, equals(32));
    });

    test('paddingLg returns correct EdgeInsets', () {
      expect(KumiSpacing.paddingLg, equals(const EdgeInsets.all(16)));
    });

    test('sizedBoxLg returns correct SizedBox', () {
      expect(KumiSpacing.sizedBoxLg.height, equals(16));
      expect(KumiSpacing.sizedBoxLg.width, equals(16));
    });

    test('horizontalSm returns SizedBox with width only', () {
      expect(KumiSpacing.horizontalSm.width, equals(8));
      expect(KumiSpacing.horizontalSm.height, isNull);
    });

    test('verticalMd returns SizedBox with height only', () {
      expect(KumiSpacing.verticalMd.height, equals(12));
      expect(KumiSpacing.verticalMd.width, isNull);
    });
  });

  group('KumiTypography', () {
    test('textXs is 12', () {
      expect(KumiTypography.textXs, equals(12));
    });

    test('textSm is 14', () {
      expect(KumiTypography.textSm, equals(14));
    });

    test('textBase is 16', () {
      expect(KumiTypography.textBase, equals(16));
    });

    test('textLg is 18', () {
      expect(KumiTypography.textLg, equals(18));
    });

    test('textXl is 20', () {
      expect(KumiTypography.textXl, equals(20));
    });

    test('text2xl is 24', () {
      expect(KumiTypography.text2xl, equals(24));
    });

    test('textTheme is not null', () {
      expect(KumiTypography.textTheme, isNotNull);
    });
  });

  group('KumiDimensions', () {
    test('topbarHeightMobile is correct', () {
      expect(KumiDimensions.topbarHeightMobile, equals(52));
    });

    test('fabSize is correct', () {
      expect(KumiDimensions.fabSize, equals(56));
    });

    test('touchTargetMin is correct', () {
      expect(KumiDimensions.touchTargetMin, equals(44));
    });

    test('topbarHeight returns mobile value for small screens', () {
      final result = KumiDimensions.topbarHeight(400);
      expect(result, equals(52));
    });

    test('topbarHeight returns tablet value for medium screens', () {
      final result = KumiDimensions.topbarHeight(800);
      expect(result, equals(64));
    });

    test('topbarHeight returns desktop value for large screens', () {
      final result = KumiDimensions.topbarHeight(1200);
      expect(result, equals(64));
    });
  });

  group('KumiBreakpoints', () {
    test('mobile is 0', () {
      expect(KumiBreakpoints.mobile, equals(0));
    });

    test('tablet is 768', () {
      expect(KumiBreakpoints.tablet, equals(768));
    });

    test('desktop is 1024', () {
      expect(KumiBreakpoints.desktop, equals(1024));
    });

    test('isMobile returns true for small screens', () {
      expect(KumiBreakpoints.isMobile(400), isTrue);
    });

    test('isTablet returns true for medium screens', () {
      expect(KumiBreakpoints.isTablet(800), isTrue);
    });

    test('isDesktop returns true for large screens', () {
      expect(KumiBreakpoints.isDesktop(1200), isTrue);
    });

    test('responsive returns mobile value for width < tablet', () {
      final result = KumiBreakpoints.responsive<double>(
        width: 400,
        mobile: 10,
        tablet: 20,
        desktop: 30,
      );
      expect(result, equals(10));
    });

    test('responsive returns tablet value for tablet <= width < desktop', () {
      final result = KumiBreakpoints.responsive<double>(
        width: 800,
        mobile: 10,
        tablet: 20,
        desktop: 30,
      );
      expect(result, equals(20));
    });

    test('responsive returns desktop value for width >= desktop', () {
      final result = KumiBreakpoints.responsive<double>(
        width: 1200,
        mobile: 10,
        tablet: 20,
        desktop: 30,
      );
      expect(result, equals(30));
    });

    test('responsive falls back to mobile when tablet is null', () {
      final result = KumiBreakpoints.responsive<double>(
        width: 800,
        mobile: 10,
        desktop: 30,
      );
      expect(result, equals(10));
    });

    test('responsive falls back to tablet when desktop is null', () {
      final result = KumiBreakpoints.responsive<double>(
        width: 1200,
        mobile: 10,
        tablet: 20,
      );
      expect(result, equals(20));
    });

    test('responsive works with String type', () {
      final result = KumiBreakpoints.responsive<String>(
        width: 400,
        mobile: 'mobile',
        tablet: 'tablet',
        desktop: 'desktop',
      );
      expect(result, equals('mobile'));
    });

    test('responsive works with Widget type', () {
      const mobileWidget = Text('mobile');
      final result = KumiBreakpoints.responsive<Widget>(
        width: 400,
        mobile: mobileWidget,
      );
      expect(result, same(mobileWidget));
    });
  });

  group('KumiRadius', () {
    test('radiusSm is 4', () {
      expect(KumiRadius.radiusSm, equals(4));
    });

    test('radiusMd is 8', () {
      expect(KumiRadius.radiusMd, equals(8));
    });

    test('radiusLg is 12', () {
      expect(KumiRadius.radiusLg, equals(12));
    });

    test('radiusXl is 16', () {
      expect(KumiRadius.radiusXl, equals(16));
    });

    test('radiusFull is 9999', () {
      expect(KumiRadius.radiusFull, equals(9999));
    });
  });

  group('KumiShadows', () {
    test('shadowSm is not empty', () {
      expect(KumiShadows.shadowSm, isNotEmpty);
    });

    test('shadowMd is not empty', () {
      expect(KumiShadows.shadowMd, isNotEmpty);
    });

    test('shadowLg is not empty', () {
      expect(KumiShadows.shadowLg, isNotEmpty);
    });
  });

  group('KumiAnimations', () {
    test('durationFast is 150ms', () {
      expect(
        KumiAnimations.durationFast,
        equals(const Duration(milliseconds: 150)),
      );
    });

    test('durationNormal is 250ms', () {
      expect(
        KumiAnimations.durationNormal,
        equals(const Duration(milliseconds: 250)),
      );
    });

    test('durationSlow is 400ms', () {
      expect(
        KumiAnimations.durationSlow,
        equals(const Duration(milliseconds: 400)),
      );
    });

    test('durationToast is 3000ms', () {
      expect(
        KumiAnimations.durationToast,
        equals(const Duration(milliseconds: 3000)),
      );
    });

    test('durationToastAction is 5000ms', () {
      expect(
        KumiAnimations.durationToastAction,
        equals(const Duration(milliseconds: 5000)),
      );
    });

    test(
      'easeDefault matches design spec cubic-bezier(0.4, 0.0, 0.2, 1.0)',
      () {
        expect(KumiAnimations.easeDefault, equals(const Cubic(0.4, 0, 0.2, 1)));
      },
    );

    test('easeIn matches design spec cubic-bezier(0.4, 0.0, 1.0, 1.0)', () {
      expect(KumiAnimations.easeIn, equals(const Cubic(0.4, 0, 1, 1)));
    });

    test('easeOut matches design spec cubic-bezier(0.0, 0.0, 0.2, 1.0)', () {
      expect(KumiAnimations.easeOut, equals(const Cubic(0, 0, 0.2, 1)));
    });
  });

  group('KumiZIndex', () {
    test('zDropdown is 100', () {
      expect(KumiZIndex.zDropdown, equals(100));
    });

    test('zSticky is 200', () {
      expect(KumiZIndex.zSticky, equals(200));
    });

    test('zFab is 300', () {
      expect(KumiZIndex.zFab, equals(300));
    });

    test('zModal is 400', () {
      expect(KumiZIndex.zModal, equals(400));
    });

    test('zToast is 500', () {
      expect(KumiZIndex.zToast, equals(500));
    });

    test('zTooltip is 600', () {
      expect(KumiZIndex.zTooltip, equals(600));
    });
  });

  group('KumiTheme', () {
    test('createKumiTheme returns ThemeData', () {
      final theme = createKumiTheme();
      expect(theme, isNotNull);
    });

    test('createKumiTheme has Material3 enabled', () {
      final theme = createKumiTheme();
      expect(theme.useMaterial3, isTrue);
    });

    test('createKumiTheme has primary color set', () {
      final theme = createKumiTheme();
      expect(theme.colorScheme.primary, equals(KumiColors.primary));
    });

    test('createKumiTheme has KumiTheme extension', () {
      final theme = createKumiTheme();
      final kumiTheme = theme.extension<KumiTheme>();
      expect(kumiTheme, isNotNull);
    });
  });
}
