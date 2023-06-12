# app\resources\authentication\views\login.jl.html 

function func_45f10c20d3ba4ee0e6aa0c77f156b84c5228917a(;
    context = Genie.Renderer.vars(:context),
)

    [
        Genie.Renderer.Html.h1(class = "display-3", htmlsourceindent = "2") do
            [
                """Login""";
            ]
        end
        Genie.Renderer.Html.div(
            class = "bs-callout bs-callout-primary",
            htmlsourceindent = "2",
        ) do
            [
                Genie.Renderer.Html.p(htmlsourceindent = "3") do
                    [
                        """
                            Please authenticate in order to access the information.
                          """
                    ]
                end;
            ]
        end
        Genie.Renderer.Html.span(htmlsourceindent = "2") do
            [
                """$(output_flash())""";
            ]
        end
        Genie.Renderer.Html.form(
            method = "POST",
            enctype = "multipart/form-data",
            action = "$(linkto(:login))",
            class = "",
            htmlsourceindent = "2",
        ) do
            [
                Genie.Renderer.Html.div(class = "form-group", htmlsourceindent = "3") do
                    [
                        Genie.Renderer.Html.label(
                            htmlsourceindent = "4",
                            ;
                            NamedTuple{(:_for,)}(("auth_username",))...,
                        ) do
                            [
                                """Username""";
                            ]
                        end
                        Genie.Renderer.Html.input(
                            name = "username",
                            class = "form-control",
                            id = "auth_username",
                            htmlsourceindent = "4",
                            placeholder = "User",
                            type = "text",
                        )
                    ]
                end
                Genie.Renderer.Html.div(class = "form-group", htmlsourceindent = "3") do
                    [
                        Genie.Renderer.Html.label(
                            htmlsourceindent = "4",
                            ;
                            NamedTuple{(:_for,)}(("auth_password",))...,
                        ) do
                            [
                                """Password""";
                            ]
                        end
                        Genie.Renderer.Html.input(
                            name = "password",
                            class = "form-control",
                            id = "auth_password",
                            htmlsourceindent = "4",
                            placeholder = "Password",
                            type = "password",
                        )
                    ]
                end
                Genie.Renderer.Html.input(
                    class = "btn btn-primary",
                    htmlsourceindent = "3",
                    value = "Login",
                    type = "submit",
                )
            ]
        end
    ]
end
