require "open-uri"
require "json"

commit_json_text = open("https://api.github.com/repos/lewagon/www/git/trees/f75e94d0960dca733919cf29be956d00887b00c1").read

commit_hash = JSON.parse(commit_json_text)

p commit_hash.keys

p name = commit_hash["tree"]["mode"]