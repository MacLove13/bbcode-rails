class CodeTag < BBCode::Tag
  block_options :content

  def start_tag
    "<div class=\"code-container\"><pre><code class=\"code-block\">"
  end

  def end_tag
    "</code></pre><button class=\"copy-button\">Copy</button></div>"
  end
end
