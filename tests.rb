require_relative 'sorter'
require 'byebug'

describe 'sorter' do
  it 'knows the order dor the array' do
    array = [2, 5, 3, 1, 9]
    sorter = Sorter.new(array)
    expect(sorter.sort).to eq([1, 2, 3, 5, 9])
  end

  it 'sorts a big array' do
    array = [2, 14, 3, 1, 5, 4, 6, 8, 7, 9, 10, 11, 15, 13, 12]
    sorter = Sorter.new(array)
    expect(sorter.sort).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
  end

  it 'sorts a big array with 487 numbers' do
    array = [5971, 4591, 5900, 5502, 157, 6463, 6122, 1883, 1054, 7683, 7088, 7926, 6536, 2931, 7682, 7324, 3795, 5356, 1400, 4480, 2299, 866, 9442, 6162, 6993, 8983, 4717, 3548, 7267, 5905, 4276, 8028, 1372, 396, 9624, 8786, 6529, 5770, 5025, 1718, 305, 1499, 6697, 3277, 9688, 6503, 5149, 8681, 1165, 3648, 8241, 6598, 2258, 9165, 1267, 8690, 638, 8000, 6518, 9466, 9193, 1336, 1251, 1248, 5123, 1791, 6625, 5929, 6126, 2753, 7290, 4956, 1583, 9229, 8676, 6662, 7004, 615, 1114, 9842, 8583, 7329, 4822, 9485, 8958, 7542, 1906, 5636, 2893, 503, 8418, 9987, 4878, 5394, 4539, 1774, 6791, 3005, 260, 3229, 8679, 7174, 2860, 6035, 9034, 5868, 2955, 5371, 2109, 2072, 6869, 1724, 1143, 3243, 1324, 168, 4662, 9543, 6148, 9642, 7990, 5855, 2750, 8968, 7831, 1472, 5703, 126, 5615, 9483, 9223, 6821, 6500, 1598, 2885, 40, 5366, 9564, 7791, 670, 7221, 1660, 3983, 1624, 1834, 9082, 4317, 5211, 9955, 6070, 1426, 8297, 4635, 6712, 3526, 1865, 5016, 8840, 95, 3189, 3602, 4580, 2092, 4478, 4331, 8621, 2076, 7512, 8458, 2377, 7491, 7896, 1534, 3157, 271, 6103, 6295, 3678, 7941, 1205, 9717, 8660, 9779, 5442, 6671, 9873, 5676, 3143, 4729, 6083, 8744, 1991, 8712, 2740, 5068, 5941, 4465, 4685, 445, 8402, 6863, 9835, 9074, 873, 9633, 4100, 3724, 473, 7874, 4971, 443, 2774, 9576, 7745, 2734, 4368, 5930, 850, 7238, 9539, 8794, 1685, 8282, 2231, 9675, 8927, 2117, 3344, 9549, 8755, 4122, 8007, 2268, 649, 558, 9775, 8607, 4687, 3199, 3097, 9750, 8550, 3197, 5537, 2321, 5925, 6558, 6439, 8527, 111, 4327, 5762, 109, 6056, 5719, 9245, 1819, 3908, 8135, 5916, 5253, 8488, 5331, 2651, 689, 9532, 9168, 4058, 7982, 6952, 371, 6380, 914, 7228, 1088, 2386, 9940, 8002, 5311, 8802, 8236, 2471, 7050, 5332, 2657, 1859, 2079, 8921, 9138, 3820, 7962, 3498, 1684, 5816, 582, 941, 1615, 9177, 7606, 9104, 5205, 9214, 2077, 7391, 4760, 1798, 8884, 1224, 2215, 565, 6674, 104, 9068, 3875, 918, 8923, 8713, 6017, 5244, 2919, 929, 9815, 7527, 6301, 4718, 7652, 8110, 2477, 2900, 7047, 3945, 7823, 3830, 9101, 1528, 3381, 5342, 287, 486, 7216, 2546, 6189, 2040, 2436, 1124, 3167, 4386, 2644, 1699, 5206, 6801, 6153, 6443, 735, 6994, 1394, 3357, 8810, 9462, 7525, 4034, 7983, 7698, 8234, 9742, 8104, 8134, 6414, 8516, 2887, 8671, 7441, 7592, 7476, 6381, 9189, 9039, 1194, 4382, 2114, 6354, 8428, 7353, 4339, 5572, 746, 9326, 5487, 267, 4799, 7601, 8506, 9525, 4621, 6749, 3619, 8663, 7313, 6822, 7259, 5639, 108, 6620, 6767, 3145, 4031, 2945, 3524, 6483, 2315, 1395, 6306, 6827, 6618, 5256, 3224, 7714, 8834, 2018, 2241, 7292, 110, 3792, 9797, 2116, 4127, 9515, 4160, 5340, 6555, 9706, 4430, 7945, 4177, 9174, 8865, 3209, 9907, 2193, 5611, 292, 1872, 2026, 5794, 1826, 5599, 3436, 4839, 2392, 8911, 5967, 4512, 6111, 7390, 5735, 9019, 6941, 1011, 6528, 2946, 1096, 7508, 3684, 7366, 9430, 5707, 6514, 4250, 8146, 1471, 7080, 7860, 3735, 7230, 6991, 6848, 8105, 4425, 5284, 5231, 3794, 2641, 8845, 8598, 7923, 6648, 8855]
    sorter = Sorter.new(array)
    expect(sorter.sort).to eq(array.sort)
  end

  it 'sorts a massive array with 4851 numbers' do
    array = [30420, 56386, 15865, 86492, 83484, 50906, 45862, 5221, 45662, 20862, 40635, 31088, 96302, 96212, 60261, 87639, 89618, 53858, 80526, 92732, 2626, 87022, 11688, 79726, 7572, 22800, 74214, 63835, 13488, 12642, 90680, 95295, 43010, 56040, 55889, 65674, 44971, 63220, 90945, 52448, 30187, 29389, 53525, 94349, 37965, 96377, 56366, 51569, 79627, 29573, 46210, 70748, 62641, 97143, 61093, 11941, 87627, 92207, 18558, 94248, 66003, 55255, 26389, 23041, 18608, 54307, 15780, 77759, 22673, 91573, 16210, 47236, 89031, 20822, 30627, 64103, 6175, 78614, 84103, 14749, 50055, 46988, 85657, 78227, 21826, 67091, 44685, 21912, 97265, 47849, 48859, 78113, 35585, 99197, 98539, 73047, 70926, 76987, 37157, 52638, 43813, 36177, 33326, 22432, 17486, 38081, 65928, 26831, 98663, 63781, 52303, 16133, 47417, 30901, 97197, 5915, 60694, 55120, 18111, 39593, 12366, 46778, 26514, 15933, 78755, 4400, 11458, 41972, 25406, 60303, 50136, 57115, 67421, 71443, 15052, 88580, 7384, 2427, 6867, 47658, 19320, 22197, 24414, 11074, 55131, 60465, 6301, 98726, 81666, 66704, 9786, 24678, 79415, 31480, 41317, 61986, 34556, 53718, 52987, 28678, 76709, 93840, 69808, 84027, 99078, 5788, 7137, 8506, 92945, 47426, 14536, 71585, 74110, 79273, 20046, 77059, 18386, 41448, 7463, 18811, 48481, 8959, 22355, 4626, 5615, 15853, 14470, 85775, 25336, 53941, 80603, 46140, 24342, 62704, 2415, 49516, 9468, 30816, 11610, 39980, 69955, 20251, 47676, 63201, 9993, 40979, 10481, 31989, 18957, 64252, 32392, 93937, 15725, 16757, 55136, 40418, 77452, 92571, 55058, 2038, 81785, 2708, 11461, 25399, 50240, 42363, 4474, 62887, 52451, 63600, 99558, 64276, 12939, 11293, 4536, 52429, 77846, 76785, 7714, 4650, 77824, 71031, 97121, 96965, 34661, 87098, 53760, 83031, 46925, 75936, 91165, 64550, 8887, 43326, 12932, 77694, 3096, 95197, 86605, 94318, 85994, 84635, 23255, 26293, 39193, 84876, 43951, 82854, 20411, 31965, 95440, 17899, 23060, 41718, 83089, 13426, 56605, 82675, 39995, 47646, 78573, 67762, 84194, 73453, 11659, 16426, 99375, 12606, 20378, 70114, 60998, 92645, 7940, 30197, 91587, 25489, 57423, 98655, 93831, 51816, 70995, 61504, 48476, 56611, 66024, 2884, 96325, 54102, 14332, 74930, 62214, 88495, 73662, 65022, 90156, 21134, 78064, 66809, 36929, 29243, 9313, 89303, 8416, 90339, 27206, 2717, 60283, 96150, 72708, 40532, 48890, 11942, 40987, 38886, 39266, 57143, 37227, 14381, 18514, 62267, 69187, 57754, 6782, 3099, 7217, 91134, 21104, 95020, 11248, 97660, 49794, 14063, 80949, 32077, 663, 98565, 40625, 3849, 64432, 94327, 40138, 29659, 71298, 51054, 58818, 50633, 96226, 57359, 97786, 59053, 2960, 4259, 5434, 57539, 7772, 60278, 17050, 17151, 24266, 98759, 92576, 36818, 77642, 62608, 41685, 83085, 25131, 43104, 20173, 6449, 59318, 15273, 85598, 75139, 54795, 76063, 77578, 47856, 77544, 62517, 83631, 23808, 83553, 62595, 24438, 10080, 40685, 37149, 89947, 16203, 70856, 26879, 93661, 43348, 30954, 29749, 44263, 2585, 7678, 69836, 58070, 1360, 59738, 2413, 39812, 48002, 97085, 20022, 294, 5044, 56052, 3938, 8638, 41716, 82605, 50734, 62574, 9770, 76406, 8080, 88578, 22794, 64158, 54140, 65729, 84862, 68372, 74483, 88018, 91575, 18084, 55205, 13826, 59187, 15165, 33384, 87099, 10020, 34830, 96015, 95832, 28946, 9221, 32797, 27026, 49676, 72475, 55603, 76878, 74474, 12360, 73939, 86198, 80292, 51087, 45220, 6731, 42162, 94915, 77210, 35397, 41962, 82380, 72183, 36939, 42959, 74915, 2594, 61643, 88204, 19940, 22533, 54878, 23280, 21485, 7342, 4692, 42584, 78355, 1124, 50857, 5448, 94063, 71217, 28853, 84001, 66860, 61623, 21728, 69846, 22225, 45674, 50570, 13893, 55342, 32303, 82400, 73718, 71110, 80135, 62254, 70154, 65785, 10509, 29559, 36162, 25321, 95105, 17144, 66810, 76684, 70626, 58420, 86232, 26117, 66529, 77945, 24195, 57564, 67411, 32584, 73112, 77736, 43147, 28627, 57524, 75430, 80030, 69721, 40155, 44871, 91896, 77428, 24169, 80228, 771, 86821, 3233, 30966, 58484, 90827, 24981, 5443, 55301, 39468, 3978, 69155, 65768, 8517, 67408, 8345, 52053, 64326, 1354, 17598, 50278, 52383, 98784, 83202, 16369, 61135, 79435, 86003, 33238, 16174, 60901, 21815, 16768, 19397, 25257, 52446, 61554, 61923, 75169, 489, 47768, 80542, 5646, 75516, 19884, 17924, 92770, 70993, 83953, 84974, 32503, 30902, 97231, 39430, 65950, 7544, 76719, 92582, 40664, 59430, 96434, 6822, 89259, 63755, 93218, 96694, 78697, 89707, 9649, 33421, 74318, 60298, 85857, 82310, 44706, 88739, 4117, 14775, 57710, 89180, 75684, 68807, 1942, 78641, 18714, 32885, 97699, 93499, 32943, 71568, 24807, 46333, 4051, 74103, 26491, 40959, 76902, 97999, 36780, 15966, 43129, 69634, 18667, 37025, 50532, 27605, 86617, 11350, 37784, 79761, 89837, 76416, 32864, 20816, 31310, 85131, 55856, 43648, 49611, 81928, 29877, 65172, 80071, 50856, 3118, 97804, 83322, 75704, 23243, 63165, 88621, 73143, 38888, 39949, 1313, 98295, 73451, 81796, 98605, 82245, 85685, 73797, 50565, 21569, 87908, 24994, 88, 45290, 98222, 26387, 78944, 18469, 47279, 53226, 26731, 64557, 77378, 87592, 23083, 65452, 99113, 63491, 31300, 86220, 11535, 46718, 79957, 91910, 1507, 11513, 63221, 67387, 50325, 18406, 91800, 33920, 65147, 2071, 30822, 61455, 57380, 20924, 94791, 63724, 88355, 41312, 42891, 49307, 92498, 45866, 67935, 58044, 71461, 85217, 50985, 89562, 47104, 96347, 91631, 57493, 78299, 82985, 80466, 26376, 78632, 8296, 58308, 81610, 50449, 85446, 42126, 49905, 81745, 14564, 2292, 50599, 49127, 783, 77632, 58808, 2779, 53387, 65495, 85189, 11533, 33653, 10289, 19734, 17917, 14590, 14221, 56080, 20417, 41200, 47870, 34885, 28967, 8491, 61620, 82181, 7499, 48362, 45703, 64975, 4270, 88338, 53741, 24138, 57152, 37946, 5859, 24485, 15401, 64687, 38667, 70924, 40449, 17017, 48492, 82891, 99456, 66371, 45055, 40484, 98460, 47354, 24676, 23765, 55993, 41217, 25419, 61390, 52458, 84355, 25925, 86690, 69825, 15606, 71583, 67054, 4340, 67879, 18769, 14325, 16286, 81211, 41600, 58778, 57445, 52949, 60260, 17325, 46560, 18697, 41055, 86252, 39088, 69849, 93021, 98427, 82097, 46857, 22177, 68721, 30559, 36634, 33880, 25355, 31815, 22113, 5888, 91120, 64235, 16829, 32091, 88090, 23742, 17287, 85215, 36862, 26446, 94947, 1150, 14962, 30190, 9923, 21497, 19545, 61798, 95015, 18760, 93087, 36363, 2847, 27228, 20204, 49709, 93015, 38635, 36982, 4128, 18055, 91895, 19413, 55656, 92165, 53250, 83667, 85186, 73299, 33487, 28772, 31154, 52814, 22546, 94400, 26289, 83720, 84448, 4570, 96319, 79728, 4208, 65960, 8353, 83552, 47253, 74140, 25847, 35994, 16862, 616, 30678, 27334, 83347, 98232, 86320, 18901, 54284, 48610, 82611, 82817, 10545, 97314, 88705, 86708, 61191, 9643, 51909, 76914, 74028, 7615, 24888, 13021, 74164, 7802, 44441, 92329, 43392, 70398, 91596, 93534, 86671, 87757, 67431, 27941, 29291, 19832, 64793, 23287, 80991, 8196, 63421, 47626, 91402, 99380, 91917, 17772, 8881, 30722, 94193, 91507, 54762, 18896, 75265, 60924, 24698, 57356, 73276, 42790, 22738, 7767, 93786, 61382, 30975, 67875, 69912, 49681, 18470, 98037, 8118, 1529, 58142, 58104, 68353, 33825, 52921, 4382, 22543, 33559, 76772, 80079, 54613, 88953, 65872, 9610, 91496, 54829, 19619, 48619, 32255, 94758, 32909, 35160, 78285, 98168, 6163, 43064, 86675, 61864, 4772, 84746, 9919, 79690, 20560, 74523, 68894, 39025, 2902, 46834, 30396, 26257, 22308, 61922, 61696, 60432, 91453, 49279, 4072, 32181, 75541, 96592, 69641, 73230, 15012, 88909, 36821, 77353, 16346, 91388, 71954, 38367, 36066, 99629, 84920, 23894, 14894, 15570, 85399, 75958, 55309, 91783, 40820, 24292, 87223, 46881, 15306, 44026, 39474, 91531, 14430, 50329, 34940, 89773, 46748, 78047, 55677, 15797, 99322, 33467, 75597, 28838, 83305, 75678, 20316, 7379, 98023, 74333, 22618, 1414, 48704, 60328, 47900, 70411, 4884, 1258, 46347, 29754, 42917, 46176, 48253, 66854, 30458, 96644, 70382, 80102, 6660, 61750, 88245, 56209, 26626, 75531, 67725, 42488, 14849, 16139, 84242, 70232, 93381, 94333, 69052, 8813, 89476, 28204, 76083, 40036, 22434, 51820, 91906, 96114, 38631, 34106, 83858, 90094, 39290, 57788, 71493, 16971, 90633, 41253, 88803, 95180, 28128, 39771, 50198, 46359, 33104, 40387, 57629, 90688, 30848, 13621, 27722, 12016, 30842, 56007, 16613, 35698, 85628, 87173, 58835, 22492, 11012, 31237, 33806, 10905, 53990, 53648, 70972, 99384, 92218, 41755, 2562, 40514, 82750, 49463, 39829, 52873, 23572, 76851, 45434, 12251, 25440, 97769, 98472, 70728, 81009, 27603, 63589, 94153, 32679, 22786, 71427, 95769, 86844, 42609, 28097, 18974, 16326, 94521, 83310, 36649, 61477, 3253, 6386, 35452, 64181, 61397, 94955, 91889, 60795, 92855, 37789, 67782, 77823, 70324, 89948, 24206, 49306, 41247, 57087, 11401, 62206, 91356, 72235, 2176, 26629, 25748, 48302, 49300, 4333, 78009, 26264, 30480, 64323, 1096, 92641, 4027, 60708, 24975, 10222, 89163, 35576, 25868, 94341, 38885, 25749, 1329, 5143, 66216, 44143, 40931, 53848, 94794, 29297, 27946, 45219, 95383, 33551, 48463, 79034, 80760, 8449, 38663, 91644, 4786, 21548, 86622, 2059, 62016, 35934, 54543, 23221, 25801, 5371, 29144, 80997, 28144, 87747, 66318, 46796, 97065, 30854, 39288, 36297, 19719, 82487, 24038, 80742, 71970, 79202, 90661, 10444, 68612, 61615, 55516, 60448, 10984, 2876, 41556, 79749, 35486, 99366, 85922, 6274, 84248, 75890, 4952, 14309, 98348, 36781, 55936, 28395, 63196, 73009, 55365, 74820, 93814, 66911, 39211, 33602, 99035, 36027, 71715, 43080, 95738, 50772, 97530, 21233, 10377, 10400, 42657, 61813, 31817, 84141, 41248, 77117, 37628, 45472, 64098, 59825, 76834, 74275, 57362, 71898, 28008, 97424, 42952, 28118, 18718, 94970, 91735, 51061, 29502, 21629, 68064, 96849, 23818, 57582, 87159, 47263, 28191, 1358, 1765, 62466, 86332, 9331, 56038, 10644, 51967, 2606, 72096, 54943, 65993, 39721, 12882, 19302, 96760, 12455, 71514, 28384, 11905, 60362, 30774, 87368, 95220, 28067, 63984, 21399, 27734, 43937, 75138, 15270, 78544, 58229, 339, 40641, 65317, 30288, 82420, 52703, 19272, 68761, 33977, 67259, 51257, 44679, 80171, 33685, 92227, 589, 19674, 28452, 80038, 69028, 67489, 18086, 17964, 8411, 84507, 88172, 12411, 30451, 68884, 46380, 92168, 61423, 92465, 60112, 32623, 33516, 6682, 99941, 9001, 35343, 20530, 74924, 75497, 32038, 14903, 24961, 77623, 67219, 35385, 51453, 15056, 35137, 34187, 29153, 22516, 36841, 74432, 35084, 26184, 84566, 52570, 37694, 26962, 80223, 55714, 60088, 96178, 71524, 70310, 60735, 99567, 72313, 84334, 56277, 17005, 17029, 69879, 72031, 57313, 25999, 70548, 91473, 70231, 17335, 76832, 76999, 91892, 33540, 39337, 95846, 58202, 82660, 56836, 52715, 11592, 34446, 70698, 79675, 75993, 24260, 38662, 61974, 86199, 26224, 67254, 3227, 50000, 61275, 33608, 23926, 33081, 5886, 48919, 72131, 28625, 59251, 20192, 34631, 12975, 57353, 4762, 41152, 25341, 25584, 29072, 45690, 88421, 65275, 94547, 34957, 42867, 21028, 58071, 66296, 20587, 3847, 88022, 28612, 75775, 15347, 42073, 43922, 17735, 80621, 54976, 20131, 44834, 33247, 2972, 29201, 23117, 88184, 65005, 66285, 96542, 52502, 3985, 92607, 30283, 45954, 22620, 22946, 74756, 2982, 74498, 4733, 22190, 22908, 53881, 98226, 21283, 11456, 12420, 43245, 38785, 73261, 742, 2880, 16664, 84308, 85257, 1802, 35792, 87770, 24549, 71028, 83390, 66537, 9989, 23249, 54334, 75403, 75010, 66937, 25732, 99898, 64264, 71586, 54768, 44449, 85002, 68518, 44261, 44359, 82564, 37834, 21232, 97179, 97957, 60001, 66954, 82112, 64503, 26685, 19178, 67971, 46515, 68229, 23992, 24836, 35510, 38429, 79261, 11218, 12910, 12243, 53356, 47711, 78559, 99559, 27831, 36892, 6863, 70885, 41631, 75949, 84503, 11229, 74244, 95714, 81136, 66955, 97920, 12702, 77456, 70164, 18832, 43872, 25798, 53778, 82438, 50212, 95885, 78975, 86383, 75542, 68363, 42725, 8853, 29269, 77255, 56745, 1261, 26212, 74695, 58652, 79939, 98752, 56853, 71423, 92258, 45549, 1039, 71048, 21932, 10729, 79383, 68042, 73191, 92499, 42926, 37583, 66706, 81452, 42389, 77310, 15573, 76778, 70118, 71836, 46056, 43203, 32050, 10163, 57801, 89898, 93763, 20232, 73523, 2264, 37173, 70082, 91034, 40294, 9892, 91537, 90499, 18535, 96700, 57343, 261, 87175, 55547, 84078, 43505, 28889, 92021, 7301, 1557, 67448, 39018, 59111, 29370, 37748, 71347, 210, 89951, 91398, 13823, 64982, 88448, 95227, 9531, 82518, 12569, 40233, 50252, 73756, 14600, 73223, 22688, 45885, 10631, 60171, 30662, 84349, 27423, 86180, 41958, 61001, 39543, 42834, 48107, 34984, 85609, 91463, 64322, 29032, 15308, 59587, 56308, 55480, 8152, 29859, 5095, 67973, 12082, 38056, 56042, 99358, 53491, 69929, 85172, 19716, 70837, 31166, 85479, 34003, 60806, 72074, 45818, 18582, 82250, 7246, 10588, 13822, 88931, 51050, 44859, 3763, 80946, 90070, 43183, 70233, 52956, 2209, 60497, 3797, 76022, 29137, 8377, 1130, 69016, 68670, 87511, 54215, 98813, 270, 9450, 9007, 70195, 92747, 66354, 82431, 52041, 28461, 19009, 87289, 98667, 54901, 12572, 92063, 1144, 18024, 21267, 9777, 9135, 60208, 52884, 86442, 63741, 64060, 25555, 83760, 29807, 17496, 40173, 11021, 53393, 17463, 64455, 6723, 78237, 24204, 89217, 53930, 59928, 71506, 58533, 54034, 56269, 61817, 27675, 79596, 97258, 96638, 80793, 4342, 93980, 13998, 10875, 95768, 3942, 71327, 63154, 10815, 96678, 33080, 56388, 51310, 95024, 61458, 56370, 72869, 8874, 14840, 51070, 28527, 75158, 41037, 49418, 84488, 71225, 25772, 6618, 73716, 6133, 95410, 67226, 7323, 79337, 87612, 6575, 13070, 19909, 83808, 44991, 45010, 97567, 50479, 12036, 51464, 33561, 3519, 16900, 41937, 10561, 38775, 94541, 17759, 18853, 297, 36944, 82398, 48106, 29379, 66153, 33019, 96851, 14737, 14268, 45505, 82839, 44030, 13531, 3159, 9133, 40509, 37052, 99503, 40464, 24375, 40247, 39376, 94562, 91539, 49985, 34960, 29051, 61746, 64861, 93537, 23875, 80361, 22834, 76548, 53794, 45510, 36370, 96585, 88221, 34724, 38901, 91383, 54021, 58794, 42552, 97696, 12544, 8930, 65223, 32743, 56841, 29150, 57062, 27856, 10337, 84291, 61035, 92358, 43083, 78777, 121, 82318, 67776, 30777, 23701, 86909, 99607, 95804, 41046, 53023, 95041, 20990, 58786, 46980, 80083, 29956, 24141, 99463, 23102, 8945, 48590, 2641, 38932, 91105, 60617, 41085, 28337, 10575, 40732, 95512, 47817, 169, 99796, 83468, 18042, 72067, 97834, 690, 43580, 16554, 80882, 91658, 81722, 85225, 8856, 39405, 79290, 46417, 40335, 56169, 51227, 18273, 52351, 17567, 2194, 37580, 10313, 10252, 82075, 1500, 26845, 32849, 49532, 52853, 20610, 86059, 84946, 39377, 63298, 30783, 11014, 47229, 51745, 92880, 75854, 69303, 59049, 77503, 39777, 55673, 9097, 16344, 66138, 36673, 41380, 22837, 34745, 99769, 16586, 82734, 34123, 42189, 43100, 19448, 28675, 65402, 36908, 98641, 65193, 16863, 99770, 15149, 268, 64094, 60050, 78345, 72476, 53213, 11028, 87233, 65382, 54629, 5442, 15077, 30199, 36218, 20321, 38369, 58630, 68938, 87688, 20011, 40410, 39012, 17774, 19576, 13141, 46022, 37954, 72641, 19246, 19805, 19694, 83350, 40500, 75739, 32493, 68767, 70768, 51200, 14391, 28585, 91829, 92486, 3539, 18732, 67625, 27049, 50508, 86632, 14742, 58445, 5958, 32889, 32659, 47901, 71368, 2696, 37255, 5728, 90958, 85064, 37209, 92630, 75877, 93096, 76854, 35341, 52576, 34799, 4389, 98511, 87034, 99250, 4371, 48335, 60763, 52534, 98846, 48832, 19231, 43879, 60406, 9038, 44961, 5245, 54652, 80999, 84333, 4501, 85375, 50576, 20067, 81425, 50542, 3737, 86135, 24840, 62749, 52680, 25541, 19772, 31760, 43935, 83638, 82716, 12397, 92400, 64969, 87237, 39138, 91397, 59014, 41699, 90847, 26237, 54569, 84472, 43394, 62865, 79502, 69751, 85898, 55207, 59614, 29673, 70019, 71982, 59431, 27076, 64726, 76505, 68582, 2906, 37329, 32928, 40666, 68808, 15615, 54437, 39276, 72894, 22301, 99876, 20705, 96780, 93854, 74390, 94828, 79225, 57926, 2609, 16078, 6094, 90839, 59457, 25986, 28596, 61947, 7904, 74446, 14672, 99117, 27203, 12972, 65977, 77495, 85008, 53696, 80285, 88280, 17247, 52698, 44156, 56586, 47442, 75192, 13389, 88159, 98874, 68613, 54453, 35517, 2019, 16120, 42179, 46451, 1670, 63829, 24251, 73989, 2744, 14778, 50583, 4856, 40000, 28230, 68611, 64302, 56653, 78845, 52990, 93648, 30043, 59856, 80346, 46377, 22306, 39218, 31402, 65442, 97271, 23015, 35105, 92496, 95120, 48560, 94922, 2941, 41653, 37106, 92412, 18816, 38706, 24176, 6921, 48768, 2041, 2920, 56755, 81444, 19264, 79630, 90386, 24735, 947, 63373, 56066, 72921, 24787, 52734, 68172, 7901, 93192, 65797, 29642, 50478, 9953, 33624, 4776, 44643, 13751, 85662, 81600, 66000, 46551, 44351, 56825, 66407, 79012, 93699, 83940, 88872, 58459, 42845, 1018, 53641, 72565, 64931, 62600, 63719, 75643, 31306, 38947, 5335, 70055, 7506, 52897, 33011, 6532, 16176, 38143, 92741, 73612, 42445, 73978, 59669, 16724, 60440, 12554, 60627, 42197, 49754, 7474, 43088, 76208, 36985, 67166, 65563, 94001, 54336, 84360, 32514, 81976, 52450, 2809, 665, 50595, 95538, 72230, 50780, 43860, 21125, 4276, 30747, 87125, 44557, 14413, 48007, 42699, 53274, 94381, 87835, 18488, 91232, 72422, 13298, 55736, 89574, 47960, 77938, 71200, 68859, 91898, 4101, 94543, 50143, 70392, 62745, 82741, 90464, 65309, 74719, 94714, 34166, 39618, 63390, 94145, 98898, 25558, 27950, 78272, 37001, 2854, 65891, 17908, 26253, 24797, 53914, 23036, 60074, 21980, 38422, 48410, 21230, 25256, 86586, 27336, 53320, 70432, 310, 31777, 61996, 65690, 92138, 29125, 26501, 45600, 86448, 40278, 59733, 7984, 91350, 2830, 29120, 89306, 66945, 42312, 25398, 32615, 34982, 32170, 55791, 59682, 77875, 56263, 23736, 70920, 21490, 31939, 7275, 42054, 22367, 84948, 27112, 98268, 42563, 68598, 9788, 35766, 32811, 33329, 77911, 60605, 29735, 18477, 28083, 44899, 89700, 87145, 93180, 80938, 58323, 15034, 94390, 16258, 83893, 24347, 11887, 21072, 47220, 11591, 90167, 56724, 40573, 95153, 84091, 67094, 49372, 14443, 70725, 21686, 25159, 82972, 30364, 6230, 45726, 69884, 66736, 4741, 67878, 76029, 9364, 47122, 3544, 55359, 41156, 54358, 81547, 43867, 44070, 36120, 15825, 82096, 57340, 35925, 64291, 20355, 84088, 61045, 63388, 92495, 43032, 33100, 53908, 62493, 50911, 41982, 92313, 64362, 84842, 7242, 61110, 64078, 43445, 8443, 20389, 15298, 14979, 3165, 87255, 71778, 74438, 41286, 24453, 91220, 64692, 56206, 45181, 67505, 18381, 53867, 34859, 52354, 79899, 63763, 54254, 31947, 1437, 60122, 17692, 76701, 48263, 18826, 35065, 61253, 71684, 14556, 18152, 72364, 15059, 73467, 95965, 76415, 5108, 17750, 23029, 71123, 48231, 5181, 55227, 41863, 29706, 87638, 7476, 87667, 4531, 87687, 39711, 59877, 34056, 30191, 23834, 90439, 93832, 11853, 35311, 40898, 31736, 47390, 40256, 55328, 68854, 40629, 17261, 7371, 37800, 92432, 67739, 36372, 18905, 64499, 17628, 41000, 59030, 81804, 24187, 54135, 90432, 94730, 95332, 29619, 96702, 1315, 67892, 88311, 68148, 67657, 32687, 26930, 56006, 89373, 38163, 22158, 85208, 61867, 69144, 17035, 19225, 68542, 20070, 27053, 15064, 51875, 61629, 44457, 72375, 81630, 82725, 45135, 66206, 15082, 60660, 81300, 82567, 49874, 53404, 39733, 64573, 11780, 4811, 92530, 66916, 81603, 90313, 37892, 68017, 74106, 80357, 52136, 41401, 35532, 99301, 49576, 38412, 7533, 91663, 50669, 88937, 75042, 63585, 54427, 98995, 80198, 91477, 35651, 75621, 9245, 11880, 76895, 21926, 24364, 36196, 76401, 88256, 90220, 23080, 75045, 67459, 5394, 45398, 98832, 83425, 58856, 52521, 60952, 72972, 66378, 27251, 32739, 3869, 11205, 17943, 68211, 72525, 86504, 99704, 43206, 83611, 120, 75373, 7299, 74269, 21720, 95006, 14369, 56877, 44529, 15904, 55717, 41072, 87945, 90062, 19725, 80097, 69840, 7177, 88824, 17369, 30503, 23634, 78395, 42415, 82128, 49389, 63803, 55239, 12989, 35707, 98161, 56364, 12625, 71003, 93941, 41079, 88465, 2056, 79560, 8723, 63552, 69482, 20596, 49066, 43338, 56886, 92438, 49593, 6625, 51187, 79129, 58438, 29375, 86804, 49205, 38095, 41762, 1393, 38198, 36358, 89189, 42954, 91736, 67959, 6036, 90196, 72088, 5665, 88070, 82562, 63434, 73888, 40167, 72085, 44546, 16578, 82356, 60483, 37076, 98558, 33159, 57082, 31332, 19408, 68282, 43647, 83052, 68075, 20595, 91632, 73201, 84874, 8046, 5060, 4997, 22059, 56135, 14145, 71450, 54330, 37876, 8510, 21883, 31935, 90411, 52002, 51352, 69070, 82921, 13024, 53844, 66681, 51864, 57693, 56683, 88843, 54412, 26196, 56005, 2450, 13875, 72839, 78003, 52836, 25707, 89614, 45005, 54356, 45849, 63268, 10257, 83969, 89578, 57897, 60813, 94629, 56256, 71183, 33009, 38857, 37432, 36501, 11932, 78443, 12492, 91430, 43611, 51191, 83584, 97106, 47455, 29257, 92514, 59660, 69329, 96038, 49615, 16740, 38458, 96267, 62427, 58490, 15110, 28788, 55981, 91802, 83290, 96361, 65684, 77355, 57073, 93692, 31615, 39319, 26496, 42261, 91132, 69657, 76340, 76393, 37186, 37761, 6342, 28274, 22566, 44777, 59521, 12785, 94563, 54936, 3143, 45175, 45388, 7630, 44063, 56473, 63415, 49702, 9082, 96914, 23731, 71849, 84092, 58230, 62576, 97890, 59547, 63321, 27836, 98258, 98438, 83493, 84126, 76422, 36701, 26725, 82937, 54696, 2620, 22897, 22672, 79236, 61124, 49694, 45658, 27963, 6256, 48512, 55386, 88219, 96394, 49739, 48793, 29215, 12729, 78383, 77910, 23392, 26460, 68534, 53710, 95594, 53598, 74329, 31659, 45000, 8672, 26083, 99263, 96948, 17025, 16722, 20648, 6802, 83796, 30721, 74501, 44178, 25118, 6054, 9697, 61107, 83534, 48342, 38573, 76143, 99717, 30387, 98818, 30519, 83794, 75343, 55525, 74068, 80779, 62009, 50584, 56102, 87002, 77494, 34255, 87046, 92547, 5334, 46147, 82503, 22906, 4491, 43285, 65732, 36051, 48938, 66439, 6267, 17309, 32394, 6676, 59480, 42119, 7811, 60412, 77900, 3401, 74412, 41791, 78811, 5042, 57361, 65668, 3551, 39473, 65925, 3204, 20798, 90818, 31235, 99859, 82159, 50998, 81166, 89470, 37737, 6285, 47348, 57457, 34100, 43007, 65723, 59482, 82214, 41142, 36488, 1289, 22399, 76305, 72696, 17985, 89286, 23524, 61368, 38, 12780, 14231, 99809, 93033, 78603, 17719, 10071, 68558, 83750, 55718, 32579, 93866, 99264, 91951, 29348, 46919, 86865, 31647, 59432, 12476, 43487, 22391, 50959, 43003, 67650, 17905, 87749, 14576, 90497, 97653, 82636, 73525, 13587, 57046, 56437, 74991, 98742, 71701, 70627, 91296, 24800, 32678, 22841, 98028, 60797, 97041, 41611, 48864, 30562, 40358, 84547, 79349, 42376, 55630, 27224, 53603, 64738, 61395, 22540, 64911, 58205, 68522, 9593, 70108, 94270, 27469, 94324, 12385, 93419, 20727, 9286, 38915, 9100, 22715, 77029, 22829, 9576, 1128, 54981, 195, 39962, 37861, 22994, 23769, 73389, 95676, 52374, 16261, 6224, 6369, 19648, 70645, 25124, 61145, 20562, 26365, 16059, 28175, 7346, 51644, 70903, 86069, 93582, 93950, 49123, 40001, 23726, 43486, 1981, 57880, 86216, 19425, 49847, 15531, 78984, 65128, 76435, 21587, 55737, 64528, 94385, 39291, 51207, 78497, 13863, 16991, 9444, 45917, 33612, 59429, 7239, 53349, 18735, 61435, 71612, 75331, 5071, 41509, 87044, 87187, 99014, 50585, 17305, 4883, 62014, 96806, 80803, 27426, 79016, 87789, 2681, 20302, 14892, 89291, 49293, 3211, 35446, 34335, 73606, 93118, 4106, 94749, 76555, 52473, 75229, 80386, 95625, 24447, 94482, 64819, 39899, 46260, 18329, 5398, 19916, 48508, 27303, 82452, 94489, 92528, 99430, 26350, 5179, 33093, 31464, 15018, 44549, 63166, 8407, 23598, 29644, 86977, 43005, 9452, 9069, 47531, 56118, 81349, 90314, 90734, 77873, 49914, 2857, 3291, 58174, 31329, 74095, 44528, 25655, 2170, 4882, 54805, 23890, 3931, 24498, 25177, 35514, 39827, 32310, 79309, 38703, 96073, 57192, 1653, 10711, 66795, 9561, 572, 10923, 47258, 11182, 45403, 18266, 98486, 44698, 6068, 82803, 81663, 46301, 44563, 67896, 47573, 70776, 47321, 54571, 24547, 90247, 99416, 41427, 57980, 86534, 9176, 31101, 32069, 94676, 50799, 98066, 41237, 62306, 51530, 48689, 31857, 93357, 40282, 38031, 64265, 4915, 64668, 77483, 44040, 15553, 50121, 1776, 85883, 17281, 68895, 84471, 32784, 30869, 30956, 8935, 43660, 70013, 89774, 72179, 52376, 10925, 38348, 89278, 1516, 6592, 18833, 75561, 30132, 12197, 94540, 72278, 83343, 18804, 3022, 54000, 51862, 69064, 31422, 19023, 77166, 7660, 50537, 19186, 77382, 66027, 569, 14942, 16368, 58092, 26064, 59575, 27238, 4885, 81161, 72270, 53452, 27528, 83510, 83734, 47280, 68977, 41082, 79848, 10123, 35427, 38681, 51176, 652, 37728, 17970, 13789, 25861, 23318, 96749, 26577, 8099, 60650, 21352, 44253, 43895, 20527, 15617, 41172, 96661, 82678, 76787, 90191, 38390, 96903, 89234, 70655, 95092, 91443, 91540, 51571, 17530, 3692, 77242, 19875, 13809, 21264, 98480, 53625, 59692, 24833, 38321, 17513, 45661, 85548, 45949, 46215, 86170, 41487, 12040, 8161, 77959, 46188, 3917, 93889, 51593, 16144, 82079, 73456, 48344, 37945, 19329, 9353, 78226, 70224, 60258, 57144, 69375, 31217, 44051, 76576, 29801, 92817, 14091, 12215, 52679, 92975, 32818, 64189, 76185, 23235, 39286, 72933, 11222, 98342, 44041, 49388, 43014, 55454, 88812, 86963, 49045, 2338, 85305, 81544, 76919, 49952, 46533, 22872, 10552, 518, 64339, 73105, 56285, 27079, 47406, 1187, 66650, 300, 11398, 66129, 61198, 98097, 40877, 56560, 50469, 2050, 12275, 61927, 37333, 47774, 62195, 9215, 29074, 88732, 69119, 88302, 79542, 36581, 58410, 65721, 13835, 54366, 40670, 35550, 51551, 43871, 13104, 80436, 85567, 2115, 51205, 11090, 29047, 61968, 40546, 90410, 31730, 37537, 96146, 18325, 38565, 33758, 1369, 92042, 58553, 76813, 21570, 20280, 63525, 15881, 99426, 43696, 30563, 75344, 58119, 26081, 25027, 9480, 50667, 24248, 43160, 47888, 69299, 41688, 67318, 59488, 68860, 54217, 53238, 99735, 13611, 42284, 39448, 60631, 12358, 33891, 98196, 77140, 87809, 5460, 4669, 38073, 40424, 98038, 27727, 27361, 31124, 58606, 91843, 30506, 49857, 60663, 36639, 58543, 33568, 48254, 42082, 46690, 57418, 91492, 70713, 31214, 50554, 82616, 34894, 38049, 92232, 72362, 9314, 24625, 70014, 46727, 20549, 16127, 89740, 47982, 17181, 93241, 28919, 96202, 61097, 27196, 30920, 27758, 42471, 98574, 15616, 30635, 24357, 14436, 70299, 32575, 60503, 91588, 58131, 56661, 48593, 17070, 97339, 77014, 47623, 1863, 64769, 15134, 90088, 80613, 68726, 12976, 71274, 65570, 74843, 12812, 54978, 84381, 62993, 41113, 87812, 14651, 26597, 11882, 19590, 57911, 62779, 88910, 1549, 92772, 18848, 84478, 75303, 34186, 27198, 79082, 72077, 80996, 18561, 8534, 17553, 29145, 59851, 41223, 97849, 81974, 53898, 88972, 2408, 73537, 27494, 72741, 47371, 39208, 26476, 21479, 51416, 708, 29888, 89126, 73868, 31584, 8900, 81864, 6651, 33322, 60395, 10439, 79011, 95923, 9626, 8566, 3484, 97687, 60086, 35604, 80855, 95335, 3980, 89905, 71820, 20785, 79745, 89419, 9897, 82914, 18709, 4, 20325, 20260, 77043, 21312, 25916, 97422, 63825, 12244, 13635, 93479, 94860, 4587, 70347, 50816, 48216, 1400, 85833, 90397, 30967, 99552, 63424, 82268, 90107, 65494, 30491, 15364, 27633, 43355, 84256, 81860, 19092, 83454, 68531, 44681, 76301, 54717, 21453, 18850, 96959, 29839, 44061, 10853, 99317, 99316, 12645, 97014, 69539, 44110, 71086, 12147, 83459, 45099, 78221, 14560, 87787, 67967, 21532, 71063, 55750, 50248, 32759, 97873, 35468, 56758, 66202, 16119, 54197, 49873, 94402, 65316, 6698, 36480, 81080, 39046, 92039, 46728, 80348, 56160, 88146, 98044, 92347, 20922, 84002, 4818, 26415, 17437, 31679, 99099, 43266, 2017, 12166, 19667, 83708, 96050, 76157, 34162, 31740, 73177, 5964, 80367, 52550, 49840, 82349, 16766, 25114, 42002, 68633, 75035, 94301, 73711, 8162, 22041, 31961, 25600, 62816, 27436, 68723, 84852, 43205, 90443, 23245, 10275, 31013, 82583, 95187, 40882, 80174, 37783, 32396, 50706, 56451, 85226, 8521, 32376, 52389, 96322, 10331, 46784, 56667, 59062, 65658, 37715, 22040, 58126, 58843, 16621, 48182, 45047, 69715, 39860, 79510, 16985, 71562, 50719, 44360, 94797, 59333, 97713, 48039, 3249, 41378, 9773, 20803, 30255, 41373, 2654, 27004, 86375, 38670, 12343, 32241, 6972, 37295, 84035, 20663, 89892, 11080, 20760, 7355, 91115, 65001, 27040, 89640, 85237, 77550, 61214, 80616, 53787, 14939, 61514, 87353, 86283, 96276, 2986, 72311, 72349, 46812, 4973, 51363, 46814, 63486, 59940, 21248, 84280, 17436, 30310, 64122, 52959, 73356, 67872, 28078, 62524, 6257, 25620, 98407, 35755, 78808, 28876, 93208, 94979, 53307, 49872, 52968, 74248, 67686, 11689, 52598, 38851, 55539, 56764, 1460, 48771, 19017, 82858, 63185, 42441, 58529, 51313, 80927, 59761, 57761, 141, 69967, 17621, 68663, 84878, 28735, 39708, 40647, 3897, 50829, 60478, 24210, 22586, 64285, 82030, 63569, 21289, 52582, 92411, 80356, 887, 49026, 9428, 58369, 12730, 23490, 52182, 89169, 42273, 10228, 83883, 46852, 84203, 48244, 13691, 74660, 26486, 85252, 47886, 77743, 80928, 86698, 41276, 22635, 17648, 5148, 87057, 72132, 87535, 68757, 49356, 26391, 10860, 38222, 89201, 30809, 88151, 42049, 80845, 42443, 97262, 99540, 41251, 17813, 92901, 46311, 88378, 12125, 91499, 86810, 92550, 5903, 96220, 75417, 99025, 16172, 10019, 40808, 17051, 81993, 12139, 11776, 49352, 48525, 82993, 44692, 74539, 28098, 21762, 89683, 25815, 14146, 55335, 88785, 45113, 69300, 11984, 8012, 98893, 56988, 22033, 90093, 20943, 31834, 23821, 27016, 59279, 86197, 10823, 47981, 43363, 42201, 19498, 22430, 15183, 66798, 82876, 21896, 51550, 84110, 66991, 6598, 5848, 71963, 12001, 16779, 50416, 4401, 65283, 41281, 90909, 92350, 95029, 69973, 58083, 11834, 91927, 95113, 51972, 56915, 62555, 5664, 35921, 23540, 31825, 25468, 83463, 7027, 50287, 74261, 81848, 33658, 93908, 69833, 86773, 17344, 39590, 43410, 92111, 62643, 77885, 82011, 46251, 214, 92332, 77892, 80352, 34366, 81116, 68183, 38454, 34344, 94156, 52008, 57325, 7537, 98912, 96063, 87091, 17611, 54469, 58934, 61546, 63838, 35793, 83128, 57334, 83601, 34974, 9899, 24921, 86961, 89124, 44754, 1029, 72113, 86360, 17915, 51655, 68050, 52366, 15332, 1733, 41530, 8790, 77689, 80976, 76366, 96983, 45548, 36918, 93754, 64404, 68303, 64027, 86891, 89602, 47277, 76425, 33492, 76350, 75960, 91984, 12079, 95244, 3258, 2515, 91169, 53440, 85210, 40372, 42605, 82506, 76956, 74371, 87329, 74591, 67497, 4798, 49875, 97084, 11996, 8815, 12020, 99170, 8423, 68920, 10563, 3272, 90282, 40527, 6848, 70046, 29817, 44266, 2555, 3619, 42368, 47425, 20413, 27272, 73940, 72396, 90874, 5527, 19096, 3411, 86218, 2835, 70631, 38144, 12487, 11247, 57961, 53835, 55785, 34543, 5118, 53095, 19958, 23217, 4240, 45707, 66096, 65888, 76269, 24919, 17020, 26354, 60634, 9847, 68240, 91081, 38359, 9623, 87080, 76715, 26167, 29760, 53229, 30565, 86511, 84302, 81500, 66879, 96451, 57107, 26556, 16384, 66671, 59914, 91930, 69391, 46049, 39505, 51065, 73517, 94956, 5577, 52740, 16485, 12114, 4165, 48732, 59448, 37360, 54004, 13749, 9164, 48053, 54434, 19354, 40552, 14366, 45331, 21778, 46726, 15664, 36491, 95774, 73379, 48306, 251, 75161, 23058, 36466, 78215, 49619, 11425, 56946, 99792, 49796, 19684, 95566, 63479, 28543, 18005, 99579, 64619, 68251, 75423, 17988, 92730, 87181, 87072, 80168, 9301, 81257, 11486, 41773, 89019, 637, 72075, 98055, 57875, 54930, 51368, 15220, 57544, 12383, 34323, 20981, 53688, 96333, 2178, 36580, 74510, 71896, 23595, 11983, 31487, 97954, 65573, 16744, 45427, 82637, 99148, 71088, 68928, 402, 36884, 32903, 81825, 4146, 44244, 35980, 25763, 29781, 18338, 50651, 777, 46697, 2246, 98374, 55317, 61431, 90568, 47433, 83975, 48024, 1035, 89245, 84560, 56742, 31001, 50072, 10611, 43670, 28068, 72627, 32890, 79195, 80028, 80150, 30554, 90583, 61171, 29020, 14781, 85318, 8213, 80907, 20338, 90928, 15431, 51029, 59885, 22765, 2771, 69701, 41039, 35692, 2614, 91045, 18436, 25304, 17397, 3559, 82644, 56543, 79047, 39328, 52207, 94218, 42502, 95081, 16573, 90586, 60780, 73767, 71485, 55098, 571, 95376, 30577, 38022, 32156, 54146, 87328, 18440, 71827, 5227, 43297, 94089, 75589, 54659, 62051, 13161, 40954, 64454, 12327, 17785, 86635, 45353, 94424, 44892, 17467, 59491, 82279, 69490, 94792, 14545, 16170, 84576, 12837, 92182, 95123, 38601, 80190, 38339, 23319, 60594, 58068, 2868, 162, 77833, 12319, 20757, 12995, 39477, 67102, 42469, 51194, 82688, 77915, 84358, 81883, 99780, 54247, 1710, 76954, 22129, 87506, 4921, 43882, 15549, 53555, 19232, 65348, 34061, 30378, 12326, 43380, 34828, 62924, 78740, 20045, 67324, 72176, 93952, 74239, 80801, 9908, 25781, 54259, 9998, 65728, 3224, 68433, 57280, 39539, 1546, 13475, 32843, 93743, 79815, 69972, 36440, 83522, 91521, 83754, 82415, 94809, 99879, 53025, 19525, 65647, 58200, 85902, 31844, 3068, 6246, 58361, 41844, 65002, 37019, 74970, 37125, 32081, 64582, 95486, 79490, 14284, 23683, 95378, 20815, 496, 8798, 68836, 96054, 72923, 78134, 8310, 7571, 15546, 64548, 13959, 83016, 84327, 21991, 72762, 20955, 64132, 36020, 54420, 61376, 57173, 87199, 89094, 53150, 97352, 31682, 73043, 11057, 38535, 18167, 70380, 40069, 94584, 66707, 64489, 67369, 47512, 2093, 55329, 69509, 55390, 67661, 66751, 56633, 66327, 44683, 46582, 89992, 53366, 55805, 99625, 62102, 70531, 34401, 94204, 56893, 24979, 20308, 87093, 3613, 42446, 16431, 87228, 22300, 12791, 25215, 45401, 56184, 15496, 35688, 86498, 45785, 11006, 52268, 77125, 60420, 82018, 236, 75751, 76797, 91693, 42259, 22317, 49956, 78908, 46434, 85372, 49939, 23260, 69623, 21840, 35779, 64855, 28506, 15604, 2756, 84891, 89546, 80206, 56289, 53079, 47283, 41705, 29661, 66358, 91283, 26965, 80911, 58383, 92626, 51299, 21652, 7410, 27183, 71579, 54600, 63582, 95030, 93958, 51133, 47476, 82710, 13742, 6275, 13889, 56261, 78496, 24046, 29922, 19357, 27295, 72080, 97838, 15931, 77130, 27921, 4280, 43920, 19672, 49662, 14065, 99431, 96980, 64763, 27979, 36290, 24950, 15445, 79305, 74235, 60938, 16929, 16498, 31418, 24379, 76135, 23220, 42517, 69374, 68809, 76597, 77234, 52076, 98070, 72425, 27039, 38516, 29427, 14035, 30841, 52827, 67548, 73141, 14118, 74549, 54360, 73172, 29122, 11705, 89728, 79414, 96123, 53780, 57483, 48383, 55388, 21801, 98020, 93278, 52941, 82490, 958, 7562, 82612, 91786, 49348, 77211, 16657, 47451, 97111, 51699, 42977, 82208, 86674, 43214, 73826, 32571, 66737, 64647, 85200, 54577, 23482, 59366, 89968, 63572, 60805, 18560, 34257, 54736, 26364, 76858, 15500, 81516, 66167, 38589, 56142, 59826, 15266, 41598, 51696, 16274, 4094, 91520, 96371, 2215, 54660, 83704, 17505, 229, 11720, 75318, 80915, 94058, 65198, 33090, 97070, 4305, 64461, 70120, 7378, 45962, 92923, 79696, 4819, 48760, 108, 65351, 87028, 7944, 54049, 64195, 48799, 25413, 22955, 96193, 64872, 35112]
    sorter = Sorter.new(array)
    expect(sorter.sort).to eq(array.sort)
  end
end
