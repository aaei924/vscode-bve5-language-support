'use strict';

import * as vscode from 'vscode';
import { MapSignatureHelpProvider } from './bve-map/MapSignatureHelpProvider';
import { MapCompletionItemProvider } from './bve-map/MapCompletionItemProvider';

const BVE_MAP_MODE: vscode.DocumentFilter = {language: 'bve-map-2.02', scheme: 'file' };

export function activate(context: vscode.ExtensionContext) {

    console.log('Congratulations, your extension "bve5-language-suport" is now active!');

    let distChecker = new DistanceChecker();
    let controller = new DistanceCheckerController(distChecker);

    context.subscriptions.push(controller);
    context.subscriptions.push(distChecker);
    context.subscriptions.push(vscode.languages.registerSignatureHelpProvider(BVE_MAP_MODE, new MapSignatureHelpProvider(), '('));
    context.subscriptions.push(vscode.languages.registerCompletionItemProvider(BVE_MAP_MODE, new MapCompletionItemProvider(), '.'));
}

export function deactivate() {
}

class DistanceCheckerController {

    private _distChecker: DistanceChecker;
    private _disposable: vscode.Disposable;

    constructor(distChecker: DistanceChecker) {
        this._distChecker = distChecker;

        // subscribe to selection change and editor activation events
        let subscriptions: vscode.Disposable[] = [];
        vscode.window.onDidChangeTextEditorSelection(this._onEvent, this, subscriptions);
        vscode.window.onDidChangeActiveTextEditor(this._onEvent, this, subscriptions);

        // update the counter for the current file
        this._distChecker.updateDistance();

        // create a combined disposable from both event subscriptions
        this._disposable = vscode.Disposable.from(...subscriptions);
    }

    dispose() {
        this._disposable.dispose();
    }

    private _onEvent() {
        this._distChecker.updateDistance();
    }
}

class DistanceChecker {

    private _statusBarItem: vscode.StatusBarItem =  vscode.window.createStatusBarItem(vscode.StatusBarAlignment.Left);

    /**
     * 引数に与えられた文字列から不要な部分を削除します。
     * @param trimText 未整形のマップファイルテキスト
     */
    private trimMapText(text: string): string {
        //ヘッダの削除
        let headerRegex = /^\s*BveTs\s*Map\s*\d+\.\d+\s*(?::.*)?\s*(?:$|\r\n|\n|\r)/gi
        text = text.replace(headerRegex, "");

        let lines = text.split('\n');
        var ret = "";
        for(let i in lines) {
            let commentIdx = lines[i].search(/#|\/\//);
            if(commentIdx !== -1) {
                lines[i] = lines[i].substring(0, commentIdx);
            }
            ret += lines[i].replace(/\s+/g, "");
        }
        return ret;
    }

    public updateDistance() {

        // テキストエディタを取得
        let editor = vscode.window.activeTextEditor;
        if (!editor) {
            this._statusBarItem.hide();
            return;
        }

        let doc = editor.document;
        if (doc.languageId === "bve-map-2.02") {
            let distString = this._getDistance(doc, editor.selections);

            this._statusBarItem.text = `距離程： ${distString} [m]`;
            this._statusBarItem.show();
        } else {
            this._statusBarItem.hide();
        }
    }

    /**
     * 現在のカーソル位置の距離程を取得します。
     * @param doc TextDocument
     * @param selections Cursors
     */
    public _getDistance(doc: vscode.TextDocument, selections: vscode.Selection[]): string {
        let distRegex = /(?:^|;)(?:\$[a-zA-Z]+|\d+(?:\.\d+)?)(?:[+\-*/%](?:\$[a-zA-Z]+|\d+(?:\.\d+)?))*;/g

        if (selections.length === 1) {
            let pos = selections[0].active;
            let range = new vscode.Range(new vscode.Position(0,0), pos);
            let utext = this.trimMapText(doc.getText(range));

            //全ての距離程を取得
            let m = utext.match(distRegex);
            if (m !== null){
                let nowDist = m[m.length-1].replace(/;/g, ""); //現在の距離程
                let distNumber = nowDist.match(/^\d+(?:\.\d+)?$/gi)
                if(distNumber !== null){
                    return distNumber[0]
                }
            }
        }

        //距離程なし
        return "---";
    }

    dispose() {
        this._statusBarItem.dispose();
    }
}