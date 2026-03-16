{% macro dollars_to_cents(coulmn_name, decimals = 2) -%}
    round( 1.0 * {{ coulmn_name }} / 2, {{ decimals }})
{%- endmacro %}