ssc install domin // via https://github.com/jluchman/domin
insheet using ~/Downloads/waf_test_dataset.csv // dataset
drop if status == "failure" // drop cases where there were internal IPM resolution failures (typically bad proxies used during request)
regress waf_probability obfuscated_ip obfuscated_browser selenium headed // print out summary stats
domin waf_probability obfuscated_ip obfuscated_browser selenium headed // run domin
