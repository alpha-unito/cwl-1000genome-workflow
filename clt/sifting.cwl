cwlVersion: v1.2
class: CommandLineTool

inputs:
  script:
    type: File
    inputBinding:
      position: 0
  input_file:
    type: File
    inputBinding:
      position: 1
  chromosome:
    type: int
    inputBinding:
      position: 2

outputs:
  output_file:
    type: File
    outputBinding:
      glob: "sifted.SIFT.chr$(inputs.chromosome).txt"
