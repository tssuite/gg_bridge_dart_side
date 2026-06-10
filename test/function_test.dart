// @license
// Copyright (c) 2026 ggsuite
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'package:gg_bridge_dart_side/gg_bridge_dart_side.dart';
import 'package:test/test.dart';

void main() {
  group('function', () {
    test('add', () {
      expect(add(2, 3), 5);
    });

    test('greet', () {
      expect(greet('world'), 'Hello, world!');
    });
  });
}
