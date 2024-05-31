cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  death-by-diseases-of-the-genitourinary-system-natural-cause-prolapse---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-prolapse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-immune---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-immune---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-prolapse---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-unspec---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-immune---secondary/output
  mesangial-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: mesangial-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-unspec---secondary/output
  concentric-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: concentric-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: mesangial-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-contracted---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-contracted---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: concentric-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  membranous-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: membranous-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-contracted---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-subacute---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-subacute---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: membranous-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-urethritis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-urethritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-subacute---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-assoc---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-assoc---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-urethritis---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-state---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-state---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-assoc---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-function---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-function---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-state---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-postmenopausal---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-postmenopausal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-function---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-cystitis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-cystitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-postmenopausal---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-pyelonephritis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-pyelonephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-cystitis---secondary/output
  pelvic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: pelvic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-pyelonephritis---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-dysmenorrhoea---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-dysmenorrhoea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: pelvic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-obstruction---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-obstruction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-dysmenorrhoea---secondary/output
  nepthrotic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: nepthrotic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-obstruction---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-induced---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-induced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: nepthrotic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  uterovaginal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: uterovaginal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-induced---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-intestine---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-intestine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: uterovaginal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-infect---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-infect---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-intestine---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-benign---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-benign---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-infect---secondary/output
  ureteral-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: ureteral-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-benign---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-organ---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-organ---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ureteral-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-uterus---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-uterus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-organ---secondary/output
  endometrial-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: endometrial-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-uterus---secondary/output
  mesangiocapillary-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: mesangiocapillary-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: endometrial-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  peritoneal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: peritoneal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: mesangiocapillary-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  segmental-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: segmental-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: peritoneal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-urethra---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-urethra---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: segmental-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-necrosis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-necrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-urethra---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-vulvar---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-vulvar---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-necrosis---secondary/output
  abnormal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: abnormal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-vulvar---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-ovary---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-ovary---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: abnormal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-uterine---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-uterine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-ovary---secondary/output
  nephropathy-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: nephropathy-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-uterine---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-cellulitis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-cellulitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: nephropathy-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-specified---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-cellulitis---secondary/output
  glomerular-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: glomerular-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-specified---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-breast---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-breast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: glomerular-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-penis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-penis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-breast---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-hypertrophy---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-hypertrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-penis---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-ectropion---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-ectropion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-hypertrophy---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-scanty---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-scanty---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-ectropion---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-paraphimosis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-paraphimosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-scanty---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-leukoplakia---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-leukoplakia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-paraphimosis---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-spermatocele---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-spermatocele---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-leukoplakia---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-ulceration---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-ulceration---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-spermatocele---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-endometriosis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-endometriosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-ulceration---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-fistula---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-fistula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-endometriosis---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-fallop---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-fallop---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-fistula---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-peritonitis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-peritonitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-fallop---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-origin---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-origin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-peritonitis---secondary/output
  vulvovaginal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: vulvovaginal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-origin---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-deposit---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-deposit---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: vulvovaginal-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  severe-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: severe-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-deposit---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-aborter---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-aborter---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: severe-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-epididymoorchitis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-epididymoorchitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-aborter---secondary/output
  moderate-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: moderate-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-epididymoorchitis---secondary/output
  unknown-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: unknown-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: moderate-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-infertility---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-infertility---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: unknown-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-parasit---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-parasit---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-infertility---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-disord---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-disord---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-parasit---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-bladder---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-bladder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-disord---secondary/output
  hereditary-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: hereditary-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-bladder---secondary/output
  neopastic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: neopastic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: hereditary-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-nephritis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-nephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: neopastic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-failure---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-failure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-nephritis---secondary/output
  cervical-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: cervical-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-failure---secondary/output
  tubulointerstitial-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: tubulointerstitial-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: cervical-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  endocapillary-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: endocapillary-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: tubulointerstitial-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-corpus---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-corpus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: endocapillary-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-embryo---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-embryo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-corpus---secondary/output
  frequent-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: frequent-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-embryo---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-incontinence---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-incontinence---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: frequent-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-balanitis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-balanitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-incontinence---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-testi---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-testi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-balanitis---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-haematuria---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-haematuria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-testi---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-oophoritis---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-oophoritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-haematuria---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-oligomenorrhoea---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-oligomenorrhoea---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-oophoritis---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-gland---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-gland---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-oligomenorrhoea---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-introd---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-introd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-gland---secondary/output
  ovarian-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: ovarian-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-introd---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-fertilization---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-fertilization---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: ovarian-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-abscess---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-abscess---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-fertilization---secondary/output
  neuropathic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: neuropathic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-abscess---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-atrophy---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-atrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: neuropathic-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
  system---secondary:
    run: system---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-atrophy---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-isolated---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-isolated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: system---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-diverticulum---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-diverticulum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-isolated---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-diabetes---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-diabetes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-diverticulum---secondary/output
  death-by-diseases-of-the-genitourinary-system-natural-cause-changes---secondary:
    run: death-by-diseases-of-the-genitourinary-system-natural-cause-changes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-diabetes---secondary/output
  tuberculous-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary:
    run: tuberculous-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: death-by-diseases-of-the-genitourinary-system-natural-cause-changes---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: tuberculous-death-by-diseases-of-the-genitourinary-system-natural-cause---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
