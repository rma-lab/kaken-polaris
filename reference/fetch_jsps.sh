#!/bin/sh
# JSPS 公開資料（令和9(2027)年度公募関係）を reference/ に再取得する。git には原本を入れていない。
set -e
cd "$(dirname "$0")"
UA="Mozilla/5.0"
B="https://www.jsps.go.jp/file/storage/kaken_kiban_2026_g_4978"
mkdir -p koubo/2027 yoshiki/2027 shinsa/2027 shinsa/2024 shinsa/2026
curl -sSL -A "$UA" -o koubo/2027/r9_kobo_kiban_wakate.pdf "$B/r9_7_kobo.pdf"
curl -sSL -A "$UA" -o koubo/2027/r9_kobotsuchi.pdf "$B/r9_7_kobotsuchi.pdf"
curl -sSL -A "$UA" -o yoshiki/2027/r9_kobo_suppl_yoshiki_kinyuyoryo.pdf "$B/r9_7_kobo_suppl.pdf"
curl -sSL -A "$UA" -o yoshiki/2027/yoryo_kiban_abc_wakate_tenpu.pdf "$B/yoryo_kiban_abc_wakate.pdf"
curl -sSL -A "$UA" -o yoshiki/2027/web_yoryo_kiban.pdf "$B/web_yoryo_kiban.pdf"
for f in s-13 s-14 s-21; do curl -sSL -A "$UA" -o yoshiki/2027/$f.docx "$B/$f.docx"; done
curl -sSL -A "$UA" -o shinsa/2027/review_section_table.pdf "$B/review_section_table.pdf"
curl -sSL -A "$UA" -o shinsa/2027/hyoukakitei_20260622.pdf "https://www.jsps.go.jp/file/storage/kaken_0103_shinsakitei_g_4984/hyoukakitei260622.pdf"
curl -sSL -A "$UA" -o shinsa/2027/kangaekata_20260616.pdf "https://www.jsps.go.jp/file/storage/kaken_0103_shinsakitei_g_4984/kangaekata20260616.pdf"
curl -sSL -A "$UA" -o shinsa/2024/r6hyoutei03_ja_bc.pdf "https://www.jsps.go.jp/file/storage/kaken_01_03_shinsahyoutei_2024-1/r6hyoutei03_ja_bc.pdf"
curl -sSL -A "$UA" -o shinsa/2024/r6hyoutei03_ja_wakate.pdf "https://www.jsps.go.jp/file/storage/kaken_01_03_shinsahyoutei_2024-1/r6hyoutei03_ja_wakate.pdf"
curl -sSL -A "$UA" -o shinsa/2026/r08_tebiki04_kibanbcwakate.pdf "https://www.jsps.go.jp/file/storage/kaken_0103_r8_g_4434/r08_tebiki04_kibanbcwakate.pdf"
echo "done. テキスト抽出は .venv の pypdf で行う（各 index.md 参照）"
