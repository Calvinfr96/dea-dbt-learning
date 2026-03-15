{% macro dollars_to_cents(coulmn_name, decimals = 2) -%}
    round( {{ coulmn_name }} / 2, {{ decimals }})
{%- endmacro %}