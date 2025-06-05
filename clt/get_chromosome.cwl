cwlVersion: v1.2
class: ExpressionTool

requirements:
  InlineJavascriptRequirement: {}

inputs:
  snp_file: File

outputs:
  chromosome: int

expression: |
  ${
    return {"chromosome": parseInt(inputs.snp_file.nameroot.split(".")[1].substring(3))};
  }
