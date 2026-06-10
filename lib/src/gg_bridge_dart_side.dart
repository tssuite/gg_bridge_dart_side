// @license
// Copyright (c) ggsuite. All Rights Reserved.
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'package:args/command_runner.dart';
import 'package:gg_log/gg_log.dart';

import './commands/my_command.dart';

/// The command line interface for GgBridgeDartSide
class GgBridgeDartSide extends Command<dynamic> {
  /// Constructor
  GgBridgeDartSide({required this.ggLog}) {
    addSubcommand(MyCommand(ggLog: ggLog));
  }

  /// The log function
  final GgLog ggLog;

  // ...........................................................................
  @override
  final name = 'GgBridgeDartSide';

  @override
  final description = 'Add your description here.';
}
