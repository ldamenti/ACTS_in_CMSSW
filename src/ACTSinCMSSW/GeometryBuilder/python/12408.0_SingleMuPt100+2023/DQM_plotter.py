import ROOT
import os

#filename = 'DQM_V0001_R000000001__Global__CMSSW_X_Y_Z__RECO.root'
filename = '/eos/user/l/ldamenti/DQM_1000Tracks.root'

output_dir = 'DQM_Plots_1000'

os.makedirs(output_dir, exist_ok = True)

root_file = ROOT.TFile.Open(filename)


def save_histograms(dir, path=""):
    # Loop on the keys
    for key in dir.GetListOfKeys():
        obj_name = key.GetName()
        obj_class = key.GetClassName()
        obj = key.ReadObj()  
        
        if 'cutsReco' in obj_name: 
            continue
        
        # If it's a directory, recursive
        if obj_class in ["TDirectoryFile", "TDirectory"]:
            # print(f"It's a directory: {obj_name}")
            subdir_path = os.path.join(path, obj_name)
            # print(f"New Path: {subdir_path}")
            save_histograms(obj, subdir_path)
        else:
            # print(f"It's an histo: {obj_name}")
            # If it's a TH1 or a TH2, save it
            if obj_class.startswith("TH"):
                canvas = ROOT.TCanvas("c", "c", 800, 600)
                obj.Draw()
                
                # Crea sottocartella se necessario
                save_path = os.path.join(output_dir, path)
                # print(save_path)
                os.makedirs(save_path, exist_ok=True)
                
                # Salva il plot in PNG
                filename = os.path.join(save_path, f"{obj_name}.png")
                canvas.SaveAs(filename)
                canvas.Close()

if __name__ == '__main__':
    
    dir_list = ['ACTSTrackParameters']#, 'RecoMaterial', 'ShortTrackResolution', 'Track', 'TrackAllTPEffic', 'dEdx', 'dEdxHits']
    
    for this_dir in dir_list:
        main_dir = root_file.Get('DQMData/Run 1/Tracking/Run summary/' + this_dir)    
        #main_dir = root_file.Get('DQMData/Run 1/StandaloneTrackMonitor/' + this_dir)    
        save_histograms(main_dir, this_dir)