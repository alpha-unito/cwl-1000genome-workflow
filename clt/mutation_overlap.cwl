cwlVersion: v1.2
class: CommandLineTool

requirements:
  InitialWorkDirRequirement:
    listing: [ $(inputs.input_file), $(inputs.columns_file), $(inputs.sift_file), $(inputs.population) ]

inputs:
  script:
    type: File
    inputBinding:
      position: 0
  chromosome:
    type: int
    inputBinding:
      position: 1
      prefix: -c
  population:
    type: File
    inputBinding:
      position: 2
      prefix: -pop
      valueFrom: $(self.nameroot)
  input_file:
    type: File
  columns_file:
    type: File
  sift_file:
    type: File

outputs:
  output_file:
    type: File
    outputBinding:
      glob: "chr$(inputs.chromosome)-$(inputs.population.nameroot).tar.gz"
