import numpy as np

model_path = "model/model.npz"
new_model_path = "model/model_new.npz"

model = np.load(model_path)
np.savez(new_model_path,ff_logit_W=model['Wemb_dec'].T,**model)