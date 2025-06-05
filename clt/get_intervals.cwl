cwlVersion: v1.2
class: ExpressionTool

requirements:
  InlineJavascriptRequirement: {}

inputs:
  step: int
  total: int

outputs:
  counters: int[]
  stops: int[]

expression: |
  ${
    var length = Math.ceil(inputs.total / inputs.step);
    var current = 0;
    var counters = new Array(length);
    var stops = new Array(length);

    for (var i = 0; i < length; i++) {
      counters[i] = current + 1;
      current += inputs.step;
      stops[i] = Math.min(current, inputs.total);
    }

    return {"counters": counters, "stops": stops};
  }
