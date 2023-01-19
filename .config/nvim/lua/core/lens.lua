require('hlslens').setup({
    nearest_only = false,
    override_lens = function(render, posList, nearest, idx, relIdx)
        local _ = relIdx
        local lnum, col = unpack(posList[idx])

        local text, chunks
        if nearest then
            text = ('[%d/%d]'):format(idx, #posList)
            chunks = {{' ', 'Ignore'}, {text, 'VM_Extend'}}
        else
            text = ('[%d]'):format(idx)
            chunks = {{' ', 'Ignore'}, {text, 'HlSearchLens'}}
        end
        render.setVirt(0, lnum - 1, col - 1, chunks, nearest)
    end,
    build_position_cb = function(plist, _, _, _)
        require("scrollbar.handlers.search").handler.show(plist.start_pos)
    end
})
