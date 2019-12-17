# Comparative modeling by the automodel class
from modeller import *
from modeller.automodel import *    # Load the automodel class

log.verbose()
env = environ()

# directories for input atom files
env.io.atom_files_directory = ['.', '../atom_files']

a = automodel(env,
              alnfile  = 'alignment.pir',     # alignment filename
              knowns   = 'template',              # codes of the templates
              sequence = 'HPAR12885', 
			  assess_methods=assess.DOPE)              # code of the target
a.starting_model= 1                 # index of the first model
a.ending_model  = 20                 # index of the last model
                                    # (determines how many models to calculate)


a.make()                            # do comparative modeling

