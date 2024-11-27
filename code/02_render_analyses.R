library(here) # path management


# Render ------------------------------------------------------------------
# Ordered factors
quarto::quarto_render(
  input = here::here("code/01_traits_analysis.qmd"),
  execute_params = list(ordfac = TRUE),
  as_job = FALSE
)
file.rename(from = here("code/01_traits_analysis.html"),
            to = here("code/01_traits_analysis_ordfac.html"))

# Unordered factors
quarto::quarto_render(
  input = here::here("code/01_traits_analysis.qmd"),
  execute_params = list(ordfac = FALSE),
  as_job = FALSE
)

file.rename(from = here("code/01_traits_analysis.html"),
            to = here("code/01_traits_analysis_unordfac.html"))
