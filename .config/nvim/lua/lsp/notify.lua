local notify_utils = require("utils.notify")
vim.notify = require("notify")

vim.lsp.handlers["$/progress"] = function(_, result, ctx)
    local client_id = ctx.client_id

    local val = result.value

    if not val.kind then return end

    local notif_data = notify_utils.get_notif_data(client_id, result.token)

    if val.kind == "begin" then
        local message = notify_utils.format_message(val.message, val.percentage)

        notif_data.notification = vim.notify(message, "info", {
            title = notify_utils.format_title(val.title, vim.lsp
                                                  .get_client_by_id(client_id)
                                                  .name),
            icon = notify_utils.spinner_frames[1],
            timeout = false,
            hide_from_history = false
        })

        notif_data.spinner = 1
        notify_utils.update_spinner(client_id, result.token)
    elseif val.kind == "report" and notif_data then
        notif_data.notification = vim.notify(
                                      notify_utils.format_message(val.message,
                                                                  val.percentage),
                                      "info", {
                replace = notif_data.notification,
                hide_from_history = false,
            })
    elseif val.kind == "end" and notif_data then
        notif_data.notification = vim.notify(val.message and
                                                 notify_utils.format_message(
                                                     val.message) or "Complete",
                                             "info", {
            icon = "",
            replace = notif_data.notification,
            timeout = 500
        })

        notif_data.spinner = nil
    end
end
