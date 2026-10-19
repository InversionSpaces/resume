{# Keep contact content in the YAML; only customize its layout. #}
{% if cv.name %}
= {{ cv.name }}
{% endif %}

{% if cv.headline %}
#headline([{{ cv.headline }}])
{% endif %}

#connections([
  #stack(
    dir: ttb,
    spacing: 0.15cm,
{% for row in [cv._connections[:4], cv._connections[4:]] %}
    grid(
      columns: ({{ 'auto, ' * row|length }}),
      column-gutter: {{ design.header.connections.space_between_connections }},
      align: left,
{% for connection in row %}
      [{{ connection }}],
{% endfor %}
    ),
{% endfor %}
  )
])
