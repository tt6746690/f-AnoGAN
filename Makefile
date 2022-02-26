
refresh:
	python setup.py install

run_mnist:

	python train_wgangp.py --training_label 1 --seed 2 --n_epochs 20
	python train_encoder_izif.py --training_label 1 --seed 2 --n_epochs 20
	python test_anomaly_detection.py --training_label 1

	# After Step: 3, `score.csv` will be generated in the directory `results`.

	python save_compared_images.py --seed 4 --n_iters 0 --n_grid_lines 10


