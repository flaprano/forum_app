module PostsHelper
  def get_comments(comments)
    html = ''
    comments.each do |comment|
      html += "<li>#{comment.message} <a href='/posts/#{comment.id}/new_reply'>Reply</a></li>"
      if comment.children?
        html += '<ul>'
        html += get_comments(comment.children)
        html += '</ul>'
      end
    end
    html.html_safe
  end
end
