rule create_read_count_panel_of_normals:
    input:
        # Required inputs in either hdf5 or tsv format.
        # Inputs should be generated by running CollectReadCounts.
        count_files = ['sample_1.counts.hdf5', 'sample_2.counts.hdf5'],
        # Optional inputs. Omit if unused.
        # GC-content annotated-intervals file from AnnotateIntervals.
        # If specified, explicit GC-bias correction will be performed on the panel samples,
        # and identically for subsequent case samples.
        annotated_intervals = ''
    output:
        # Required output PON file. MUST be hdf5 format.
        'pon.hdf5'
    params:
        # Optional parameters. Omit if unused.
        extra = '',

    threads: 1
    wrapper:
        'http://dohlee-bio.info:9193/gatk/cnv/create-read-count-panel-of-normals'
