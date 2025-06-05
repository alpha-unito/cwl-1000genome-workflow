cwlVersion: v1.2
class: CommandLineTool

requirements:
  InitialWorkDirRequirement:
    listing: $(inputs.columns_file)

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
  counter:
    type: int
    inputBinding:
      position: 3
  stop:
    type: int
    inputBinding:
      position: 4
  total:
    type: int
    inputBinding:
      position: 5
  columns_file:
    type: File

outputs:
  output_file:
    type: File
    outputBinding:
      glob: "chr$(inputs.chromosome)n-$(inputs.counter)-$(inputs.stop).tar.gz"
