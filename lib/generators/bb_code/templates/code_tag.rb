class CodeTag < BBCode::Tag
  block_options :content

  on_layout do |contents|
    "<pre><code>#{contents}</code></pre>"
  end
end

