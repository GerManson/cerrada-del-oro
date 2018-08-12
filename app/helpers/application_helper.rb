module ApplicationHelper

  def active_tab?(test_path)
    return 'is-active mdl-layout__tab' if request.path == test_path
    'mdl-layout__tab'
  end

end
