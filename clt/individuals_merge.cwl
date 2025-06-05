cwlVersion: v1.2
class: CommandLineTool

requirements:
  InitialWorkDirRequirement:
    listing: $(inputs.individuals)

inputs:
  script:
    type: File
    inputBinding:
      position: 0
  chromosome:
    type: int
    inputBinding:
      position: 1
  individuals:
    type: File[]
    inputBinding:
      position: 2

outputs:
  output_file:
    type: File
    outputBinding:
      glob: "chr$(inputs.chromosome)n.tar.gz"
