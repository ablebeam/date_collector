module DateTestsHelper
  def status_for( ready )
    if ready
      content_tag(:span, class: 'label label-success'){ "работает" }
    else
      content_tag(:span, class: 'label label-danger'){ "не работает" }
    end
  end
end
