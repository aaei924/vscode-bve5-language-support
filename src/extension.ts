'use strict';

import * as vscode from 'vscode';

import { DistanceChecker } from './bve-map/DistanceChecker/DistanceChecker';
import { DistanceCheckerController } from './bve-map/DistanceChecker/DistanceCheckerController';
import { ListFileLoaderController } from './bve-map/ListFileLoader/ListFileLoaderController';
import { MapCompletionItemProvider } from './bve-map/MapCompletionItemProvider';
import { MapHoverProvider } from './bve-map/MapHoverProvider';
import { MapSignatureHelpProvider } from './bve-map/MapSignatureHelpProvider';
import { VehicleHoverProvider } from './bve-vehicle/VehicleHoverProvider';

const BVE_MAP_MODE: vscode.DocumentFilter = {language: 'bve-map-2.02', scheme: 'file' };
const BVE_VEHICLE_MODE: vscode.DocumentFilter = {language: 'bve-vehicle-1.00', scheme: 'file' };

const LANG_ID_MAP: string = "bve-map-2.02";

export function activate(context: vscode.ExtensionContext) {
    const editor = vscode.window.activeTextEditor;
    if(editor !== undefined && editor.document.languageId === LANG_ID_MAP) {
        const distChecker = new DistanceChecker();
        const controller = new DistanceCheckerController(distChecker);

        context.subscriptions.push(controller);
        context.subscriptions.push(distChecker);
    }

    // マップ
    context.subscriptions.push(vscode.languages.registerSignatureHelpProvider(BVE_MAP_MODE, new MapSignatureHelpProvider(), '('));
    context.subscriptions.push(vscode.languages.registerCompletionItemProvider(BVE_MAP_MODE, new MapCompletionItemProvider(), '.', '\''));
    context.subscriptions.push(vscode.languages.registerHoverProvider(BVE_MAP_MODE, new MapHoverProvider()));
    // 車両
    context.subscriptions.push(vscode.languages.registerHoverProvider(BVE_VEHICLE_MODE, new VehicleHoverProvider()));

    // リストファイル
    context.subscriptions.push(new ListFileLoaderController());
}

export function deactivate() {
}