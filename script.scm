(define (clarear-img pattern
                              filename)
  (let* ((filelist (cadr (file-glob pattern 1))))
    (while (not (null? filelist))
           (let* ((filename (car filelist))
                  (image (car (gimp-file-load RUN-NONINTERACTIVE
                                              filename filename)))
                  (drawable (car (gimp-image-get-active-layer image))))
             (gimp-levels drawable HISTOGRAM-VALUE
                                0 14 1 0 255)
             (file-png-save-defaults RUN-NONINTERACTIVE
                                image drawable (string-append filename ".png") (string-append "raw_" filename ".png"))
             (gimp-image-delete image))
           (set! filelist (cdr filelist)))))
