// @license
// Copyright (c) ggsuite. All Rights Reserved.
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:gg_bridge_dart_side/gg_bridge_dart_side.dart';
import 'package:gg_args/gg_args.dart';
import 'package:gg_capture_print/gg_capture_print.dart';
import 'package:test/test.dart';

void main() {
  final messages = <String>[];

  setUp(() {
    messages.clear();
  });

  group('GgBridgeDartSide()', () {
    // #########################################################################
    group('GgBridgeDartSide', () {
      final ggBridgeDartSide = GgBridgeDartSide(ggLog: messages.add);

      final CommandRunner<void> runner = CommandRunner<void>(
        'GgBridgeDartSide',
        'Description goes here.',
      )..addCommand(ggBridgeDartSide);

      test('should allow to run the code from command line', () async {
        await capturePrint(
          ggLog: messages.add,
          code: () async => await runner.run([
            'GgBridgeDartSide',
            'my-command',
            '--input',
            'foo',
          ]),
        );
        expect(messages, contains('Running my-command with param foo'));
      });

      // .......................................................................
      test('should show all sub commands', () async {
        final (subCommands, errorMessage) = await missingSubCommands(
          directory: Directory('lib/src/commands'),
          command: ggBridgeDartSide,
        );

        expect(subCommands, isEmpty, reason: errorMessage);
      });
    });
  });
}
