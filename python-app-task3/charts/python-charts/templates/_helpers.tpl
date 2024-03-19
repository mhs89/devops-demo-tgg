{{/* _helpers.tpl */}}

{{/* Generate chart name */}}
{{- define "python-app-chart.name" -}}
python-app-chart
{{- end -}}

{{/* Generate labels */}}
{{- define "python-app-chart.labels" -}}
app.kubernetes.io/name: {{ include "python-app-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/* Generate selector labels */}}
{{- define "python-app-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "python-app-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}