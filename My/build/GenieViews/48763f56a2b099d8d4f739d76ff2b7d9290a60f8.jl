# app\resources\authentication\views\success.jl.html 

function func_48763f56a2b099d8d4f739d76ff2b7d9290a60f8(;
    context = Genie.Renderer.vars(:context),
)

    [
        Genie.Renderer.Html.h1(class = "display-3", htmlsourceindent = "2") do
            [
                """Success!""";
            ]
        end
        Genie.Renderer.Html.span(htmlsourceindent = "2") do
            [
                """$(output_flash())""";
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
                            You are now logged in!
                            """
                        Genie.Renderer.Html.a(
                            class = "btn btn-link",
                            href = "/",
                            htmlsourceindent = "4",
                        ) do
                            [
                                """Go home""";
                            ]
                        end
                    ]
                end;
            ]
        end
    ]
end
