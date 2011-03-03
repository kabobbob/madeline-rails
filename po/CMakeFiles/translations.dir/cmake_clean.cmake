FILE(REMOVE_RECURSE
  "CMakeFiles/translations"
  "fr.gmo"
  "th.gmo"
  "zh_CN.gmo"
  "zh_TW.gmo"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/translations.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
