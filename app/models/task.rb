
class Task
  def initialize(task_params)
    @description = task_params["description"]
    @title       = task_params["title"]
    @tasks = {}
  end

  def save
    @tasks.key = @title
    @tasks.value = @description
  end

end
