
USETEXTLINKS = 1
STARTALLOPEN = 0
WRAPTEXT = 1
PRESERVESTATE = 0
HIGHLIGHT = 1
ICONPATH = 'file:///C:/Users/thain/OneDrive/Documentos/WinArl35/'    //change if the gif's folder is a subfolder, for example: 'images/'

foldersTree = gFld("<i>ARLEQUIN RESULTS (Saccocirrus.arp)</i>", "")
insDoc(foldersTree, gLnk("R", "Arlequin log file", "Arlequin_log.txt"))
	aux1 = insFld(foldersTree, gFld("Run of 21/05/25 at 02:09:27", "Saccocirrus.xml#21_05_25at02_09_27"))
	aux1 = insFld(foldersTree, gFld("Run of 21/05/25 at 02:10:32", "Saccocirrus.xml#21_05_25at02_10_32"))
	insDoc(aux1, gLnk("R", "Settings", "Saccocirrus.xml#21_05_25at02_10_32_run_information"))
		aux2 = insFld(aux1, gFld("Samples", ""))
		insDoc(aux2, gLnk("R", "PNP", "Saccocirrus.xml#21_05_25at02_10_32_group0"))
		insDoc(aux2, gLnk("R", "ARR", "Saccocirrus.xml#21_05_25at02_10_32_group1"))
		insDoc(aux2, gLnk("R", "SAQ", "Saccocirrus.xml#21_05_25at02_10_32_group2"))
		insDoc(aux2, gLnk("R", "VER", "Saccocirrus.xml#21_05_25at02_10_32_group3"))
		insDoc(aux2, gLnk("R", "TT", "Saccocirrus.xml#21_05_25at02_10_32_group4"))
		insDoc(aux2, gLnk("R", "ES", "Saccocirrus.xml#21_05_25at02_10_32_group5"))
		insDoc(aux2, gLnk("R", "AR", "Saccocirrus.xml#21_05_25at02_10_32_group6"))
		aux2 = insFld(aux1, gFld("Within-samples summary", ""))
		insDoc(aux2, gLnk("R", "Basic indices", "Saccocirrus.xml#21_05_25at02_10_32_comp_sum_Basic"))
		insDoc(aux2, gLnk("R", "Heterozygosity", "Saccocirrus.xml#21_05_25at02_10_32_comp_sum_het"))
		insDoc(aux2, gLnk("R", "No. of alleles", "Saccocirrus.xml#21_05_25at02_10_32_comp_sum_numAll"))
		insDoc(aux2, gLnk("R", "Molecular diversity", "Saccocirrus.xml#21_05_25at02_10_32_comp_sum_moldiv"))
		insDoc(aux2, gLnk("R", "Neutrality tests", "Saccocirrus.xml#21_05_25at02_10_32_comp_sum_neutests"))
		aux2 = insFld(aux1, gFld("Genetic structure (samp=pop)", "Saccocirrus.xml#21_05_25at02_10_32_pop_gen_struct"))
		insDoc(aux2, gLnk("R", "Euclidean distances", "Saccocirrus.xml#21_05_25at02_10_32_pop_amova_dm"))
		insDoc(aux2, gLnk("R", "Minimum Spanning Network", "Saccocirrus.xml#21_05_25at02_10_32_pop_glob_spann"))
		insDoc(aux2, gLnk("R", "AMOVA", "Saccocirrus.xml#21_05_25at02_10_32_pop_amova"))
		insDoc(aux2, gLnk("R", "Pairwise distances", "Saccocirrus.xml#21_05_25at02_10_32_pop_pairw_diff"))
		insDoc(aux2, gLnk("R", "Exact tests", "Saccocirrus.xml#21_05_25at02_10_32_pop_exct_tests"))
