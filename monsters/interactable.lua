oldInteract = interact
function interact(args)
  oldInteract(args)
  local interactAction = config.getParameter("interactAction")
  if interactAction then
    local data = config.getParameter("interactData", {})
    if type(data) == "string" then
      data = root.assetJson(data)
    end
    return { interactAction, data }
  end
end