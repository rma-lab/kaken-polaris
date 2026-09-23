# KAKEN Polaris

科研費（基盤研究(C)・基盤研究(B)・若手研究）の研究計画調書を、審査規程の評定基準と様式の欄構成から起こしたルーブリックで点検し、「指摘・問いかけ・直す方向」を返す支援ツールの構想と設計資料。ローカルLLM（Mac Studio）で学内完結し、URAの知見で育てる。

**現状（2026年9月）**: 構想・設計段階。一次資料の整備、審査区分表の構造化、ルーブリック v0、セミナー資料の分析まで。実装はこれから。

## 構成

| パス | 内容 |
|---|---|
| docs/design-notes-2026-09-22.md | 設計メモ（目的、実行環境、知見カード、Webサービス、再挑戦モード、構造データ収集、KAKEN-ATLAS連携、資料分析） |
| rubric/rubric_v0.yaml | ルーブリック v0（21観点、水準記述、出力契約）。README に一覧 |
| reference/ | 一次資料の置き場と index（公募要領、様式、審査規程、審査の手引、審査区分表、セミナー資料）。原本は git に含めず、JSPS 公開資料は `reference/fetch_jsps.sh` で再取得 |
| reference/yoshiki/2027/form_structure.md | 様式の欄構成と評定要素の対応、国際性の扱い、審査の手引から分かる審査の実態 |
| reference/shinsa/2027/shinsa_kubun.json | 審査区分表の構造化データ（NII公式マスタ + 令和4年改正の内容の例。kaken-atlas と共有） |
| analysis/ | セミナー資料から抽出した主張（568件）と統合分析。ルーブリックには未反映 |
| reports/flyer/ | A4両面の紹介資料（HTML → Chrome で PDF 化） |

## 環境

```
uv venv .venv && uv pip install --python .venv/bin/python -r requirements.txt
sh reference/fetch_jsps.sh
```

## 関連

- [KAKEN-ATLAS](https://github.com/rma-lab/kaken-atlas): 科研費採択課題20万件の学術地図。審査区分表の構造化データを共有し、申請書の近傍検索・地図上へのプロットを検討中。
- Polaris は北極星。KAKEN-ATLAS の地図に対する「進む方向を示す星」として名付けた（旧仮称 whet）。

## ライセンス

「原則は非商用で自由、商用は個別に許諾」の二段構えです。

| 対象 | ライセンス |
|---|---|
| コード | [PolyForm Noncommercial 1.0.0](LICENSE)。教育機関・研究機関・公的機関の利用は非商用として明示的に許容 |
| ルーブリック・知見カード・設計文書 | [CC BY-NC-SA 4.0](LICENSE-CONTENT.md)。国公私立を問わず大学・研究機関の学内利用は非商用 |
| 審査区分表の構造化データ | CC BY 4.0（出典: JSPS 審査区分表、NII KAKEN マスタ） |

営利利用（有償の添削サービス、製品への組み込み、有償の導入請負など）は rma-lab に連絡してください。個別に許諾し、[COMMERCIAL-LICENSES.md](COMMERCIAL-LICENSES.md) で公開します。寄稿の条件は [CONTRIBUTING.md](CONTRIBUTING.md) にあります。

## 注意

- `reference/seminar/` の資料は出所ごとに扱いが異なる（公開 / 要確認 / 許諾待ち）。index.md を参照。原本は配布しない。
- 申請書本文や審査結果開示など個人の資料はこのリポジトリに置かない。
