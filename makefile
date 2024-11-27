### Diretories
SCRIPTS := scripts
TESTS := tests
TEST_CASES := ${TESTS}/cases
TEST_INPUTS := ${TESTS}/inputs
TEST_OUTPUTS := ${TESTS}/outputs
TEST_DIFFS := ${TESTS}/diff
# Files extencions
CIF_EXT := cif
PDB_EXT := pdb
OUT_EXT := tsv
TESTS_OUT_EXT := out
DIFF_EXT := diff
CASES_EXT := sh
### FIles
CASES :=  $(wildcard ${TEST_CASES}/*.${CASES_EXT})
DIFFS = $(patsubst ${TEST_CASES}/%.${CASES_EXT}, ${TEST_DIFFS}/%.${DIFF_EXT}, ${CASES})

# Scripts
CALCULATE_DEHIDRAL =  ${SCRIPTS}/pdbx-NA-torison-GX

.PHONY: all clean distclean
all: ${DIFFS}

${TEST_DIFFS}/%.${DIFF_EXT}: ${TEST_CASES}/%.${CASES_EXT}
	@ ./$< ${CALCULATE_DEHIDRAL} ${TEST_INPUTS} | \
	diff - ${TEST_OUTPUTS}/$*.${OUT_EXT} > $@; \
	if [ ! -s $@ ]; then \
		printf "Test %-37s passed\n" $$(basename $@); \
	else\
		printf "Test %-37s not passed\n" $$(basename $@); \
	fi \
	
clean:
	rm -f ${TEST_DIFFS}/*.${DIFF_EXT};

distclean: clean


