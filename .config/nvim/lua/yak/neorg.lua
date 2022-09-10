local status_ok, neorg = pcall(require, "neorg")
if not status_ok then
    return
end

neorg.setup({
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    example_gtd = "~/Notes/test/example_workspaces/gtd",
                    mika = "~/Notes/mika",
                    school = "~/Notes/school",
                    work = "~/Notes/work",
                    dev = "~/Notes/dev"
                },
                autochdir = true,
                index = "index.norg",
                default_workspace = "mika"
            },
        },
        ["core.gtd.base"] = {
            config = {
                workspace = "example_gtd",
            },
        },
        ["core.norg.completion"] = {
            config = { engine = "nvim-cmp" },
        },
        ["core.norg.concealer"] = {},
        ["core.export"] = {},
        ["core.export.markdown"] = {},
    },
})
