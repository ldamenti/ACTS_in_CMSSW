#!/usr/bin/env python3

from collections import Counter
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import math
import uproot
import awkward as ak
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.colors as colors

def getPixelsHits(lines):
    x = []
    y = []
    z = []
    r = []
    for line in lines:
        if 'PIXEL Global hit position: ' in line:
            X = float(line.strip().split()[4])
            Y = float(line.strip().split()[5])
            Z = float(line.strip().split()[6])
            x.append(X)
            y.append(Y) 
            z.append(Z)
            
            r.append(math.sqrt(X**2 + Y**2)) 
    
    return x, y, z, r    

def getInitDir(lines):
    x = y = z = r = 0
    for line in lines:
        if 'Direction (normalized):' in line:
            x = float(line.strip().split()[4])
            y = float(line.strip().split()[7])
            z = float(line.strip().split()[10])
            
            r = math.sqrt(x**2 + y**2)
    return x, y, z, r
    

def getPos_list(lines):
    
    X_list = []
    Y_list = []
    R_list = []
    Z_list = []
    
    for line in lines:
        if 'KalmanFitter step at pos' in line:
            x = float(line.strip().split()[7])
            y = float(line.strip().split()[8])
            z = float(line.strip().split()[9])
            
            R_list.append(math.sqrt(x**2 + y**2))
            X_list.append(x)
            Y_list.append(y)
            Z_list.append(z)
            
    return X_list, Y_list, Z_list, R_list  



def plotCMS(zr):
    # PLOT CMS TO HAVE A REFERENCE:
    file1 = uproot.open("../Propagator_test_noB.root") 
    tree1 = file1["propagation_steps"]
    mat_x = tree1["g_x"].array(entry_start=0, entry_stop=10000)
    mat_y = tree1["g_y"].array(entry_start=0, entry_stop=10000)
    mat_z = tree1["g_z"].array(entry_start=0, entry_stop=10000)

    # Flatten arrays if needed (assume they're jagged)
    r_mat = np.sqrt(mat_x**2 + mat_y**2)
    x_mat = mat_x
    y_mat = mat_y
    z_mat = mat_z

    # Convert to flat arrays for plotting
    r_flat = ak.to_numpy(ak.flatten(r_mat))
    x_flat = ak.to_numpy(ak.flatten(x_mat))
    y_flat = ak.to_numpy(ak.flatten(y_mat))
    z_flat = ak.to_numpy(ak.flatten(z_mat))
    
    # crea la maschera booleana
    BarrelOnly = (z_flat >= -1000) & (z_flat <= 1000)

    # Plot base
    #plt.scatter(z_flat, r_flat, s=1, c='blue', label='Acts_Sens+Mat')
    if (zr): plt.hist2d(z_flat, r_flat, bins=500, norm=colors.LogNorm(), cmap='viridis')  
    else: plt.hist2d(x_flat[BarrelOnly], y_flat[BarrelOnly], bins=500, norm=colors.LogNorm(), cmap='viridis')  
     
    
def getLastEntry(List):
    tot_len = len(List)
    return List[tot_len - 1] + 100
    
            
if __name__ == '__main__':
    filename = '10NegMuons.txt'
    withDirection = False
    withHits = True 
    
    with open(filename, 'r') as file:
        content = file.read()
        
    tracks = content.split('=============================================================================')

    #this_track = 1

    plt.figure()
    plotCMS(zr = True)
    for i, track in enumerate(tracks):
        isOk = False
        #if i != this_track: continue  # USE THIS TO SELECT A GIVEN TRACK
        if len(track) < 50: break
        lines = track.splitlines()
        if '>>>> Fitted parameters:' in lines: isOk = True
        
        X_lis, Y_list, Z_list, R_list  = getPos_list(lines)
        x_dir, y_dir, z_dir, r_dir = getInitDir(lines)
        x_hit, y_hit, z_hit, r_hit = getPixelsHits(lines)
        #if isOk:  print("OK: ", X_lis[len(X_lis) - 1], Y_list[len(Y_list) - 1], Z_list[len(Z_list) - 1], R_list[len(R_list) - 1])
        #else:  print("Not OK: ", X_lis[len(X_lis) - 1], Y_list[len(Y_list) - 1], Z_list[len(Z_list) - 1], R_list[len(R_list) - 1])

        if isOk: 
            plt.scatter(Z_list, R_list, color = 'green', s = 5)
        else: 
            plt.scatter(Z_list, R_list, color = 'red', s = 5)
            
            
        # Print the pixels hits and the direction only if required:
        if withDirection:
            if x_dir != 0: plt.arrow(0, 0, z_dir*1000, r_dir*1000, head_width=50, head_length=100, fc='black', ec='black')
        if withHits:
            if x_hit != []: plt.scatter(z_hit, r_hit, color = 'blue', s = 5, marker='x')
            
            
        plt.xlabel('z')
        plt.ylabel('r')
        #plt.xlim(-1*getLastEntry(Z_list), getLastEntry(Z_list))
        #plt.ylim(0, getLastEntry(R_list))
            
        plt.savefig(f"NegMuons_BarrelOnly_rz_.png")
        #plt.savefig(f"{filename.strip().split('.')[0]}_rz_.pdf")
    
    plt.figure()    
    plotCMS(zr = False)
    for i, track in enumerate(tracks):
        isOk = False
        #if i != this_track: continue  # USE THIS TO SELECT A GIVEN TRACK
        if len(track) < 50: break
        lines = track.splitlines()
        if '>>>> Fitted parameters:' in lines: isOk = True
        
        X_list, Y_list, Z_list, R_list  = getPos_list(lines)
        x_dir, y_dir, z_dir, r_dir = getInitDir(lines)
        x_hit, y_hit, z_hit, r_hit = getPixelsHits(lines)
        
        if isOk: 
            plt.scatter(X_list, Y_list, color = 'green', s = 5)
        else: 
            plt.scatter(X_list, Y_list, color = 'red', s = 5)
            
        
        # Print the pixels hits and the direction only if required:
        if withDirection:
            if x_dir != 0: plt.arrow(0, 0, x_dir*1000, y_dir*1000, head_width=50, head_length=100, fc='black', ec='black')
        if withHits:
            if x_hit != []: plt.scatter(x_hit, y_hit, color = 'blue', s = 5, marker='x')
              
        plt.xlabel('x')
        plt.ylabel('y')
        #plt.xlim(-1*getLastEntry(X_list), getLastEntry(X_list))
        #plt.ylim(-1*getLastEntry(Y_list), getLastEntry(Y_list))
            
        plt.savefig(f"{filename.strip().split('.')[0]}_xy_.png")
        plt.savefig(f"NegMuons_BarrelOnly_xy_.png")
        #plt.savefig(f"{filename.strip().split('.')[0]}_xy_.pdf")
        
        
    