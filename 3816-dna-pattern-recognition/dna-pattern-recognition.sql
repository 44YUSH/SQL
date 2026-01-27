select
  sample_id,
  dna_sequence,
  species,
  if(dna_sequence like 'atg%',1,0) as has_start,
  if(dna_sequence like '%taa'
     or dna_sequence like '%tag'
     or dna_sequence like '%tga',1,0) as has_stop,
  if(dna_sequence like '%atat%',1,0) as has_atat,
  if(dna_sequence regexp 'g{3,}',1,0) as has_ggg
from samples
order by sample_id;