def create_dashboard(panels: [str]):
    return """{
  "annotations": {
    "list": [
      {
        "builtIn": 1,
        "datasource": {
          "type": "grafana",
          "uid": "-- Grafana --"
        },
        "enable": true,
        "hide": true,
        "iconColor": "rgba(0, 211, 255, 1)",
        "name": "Annotations & Alerts",
        "target": {
          "limit": 100,
          "matchAny": false,
          "tags": [],
          "type": "dashboard"
        },
        "type": "dashboard"
      }
    ]
  },
  "editable": true,
  "fiscalYearStartMonth": 0,
  "graphTooltip": 0,
  "id": 21,
  "links": [],
  "liveNow": false,
  "panels": [
    """ + ",".join([create_panel(panel) for panel in panels]) + """
  ],
  "refresh": "",
  "revision": 1,
  "schemaVersion": 38,
  "style": "dark",
  "tags": [],
  "templating": {},
  "time": {
    "from": "2024-06-01T00:00:00.000Z",
    "to": "now"
  },
  "timepicker": {},
  "timezone": "",
  "title": "Wizard Load Test (generated)",
  "uid": "JylzGgGIp",
  "version": 24,
  "weekStart": ""
}
"""

def create_panel(param):
    (user_count, targets) = param
    return """
    {
      "datasource": {
        "type": "postgres",
        "uid": "p6FeWRMIz"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "log": 10,
              "type": "symlog"
            },
            "showPoints": "auto",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "ms"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 22,
        "w": 23,
        "x": 0,
        "y": 0
      },
      "id": 2,
      "options": {
        "legend": {
          "calcs": [
            "last"
          ],
          "displayMode": "table",
          "placement": "right",
          "showLegend": true,
          "sortBy": "Last",
          "sortDesc": true
        },
        "tooltip": {
          "mode": "single",
          "sort": "none"
        }
      },
      "targets": [""" + targets + """ ],
      "title": "Endpoints (""" + str(user_count) + """ users)",
      "type": "timeseries"
    }
    """


def create_target(user: int, name: str, method: str, condition: str) -> str:
    return """{
          "datasource": {
            "type": "postgres",
            "uid": "p6FeWRMIz"
          },
          "editorMode": "code",
          "format": "table",
          "hide": false,
          "rawQuery": true,
          "rawSql": "SELECT created_at as time, avg_time as """ + '\\"' + name + '\\"' + """ FROM endpoint WHERE users = """ + str(user) + """ AND method = '""" + method + """' AND """ + condition + """ ORDER BY time",
          "refId": \"""" + name + """\",
          "sql": {
            "columns": [
              {
                "parameters": [],
                "type": "function"
              }
            ],
            "groupBy": [
              {
                "property": {
                  "type": "string"
                },
                "type": "groupBy"
              }
            ],
            "limit": 50
          }
        }
"""
