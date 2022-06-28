status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
    print("colorizer not found")
    return
end

colorizer.setup()
