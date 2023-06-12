using SearchLight

try
    SearchLight.Configuration.load()

    if SearchLight.config.db_config_settings["adapter"] !== nothing
        adapter_name = SearchLight.config.db_config_settings["adapter"]
        eval(Meta.parse("using SearchLight$adapter_name"))
        SearchLight.connect()
    end
catch ex
    @error ex
end
