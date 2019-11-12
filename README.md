# Quick_sync
How to quick sync Zeon Blockchain with google drive file on Ubuntu 18.04 ...
 (We download zeon_blocks_531713.tar.gz from Google Drive 828.8 MB )


### Method 1 with bash_aliases 
 
 
 
    vi .bash_aliases
     
    function gdrive_download () {
    CONFIRM=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate "https://docs.google.com/uc?export=download&id=$1" -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')
    wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$CONFIRM&id=$1" -O $2
    rm -rf /tmp/cookies.txt
    }
  
    . ~/.bashrc
    
    zeon-cli stop 
    
    cd ~/.zeon 
     
    gdrive_download 1ztyhwev0_vANRIF6WA8xVV95pyg1TonQ zeon_blocks_last.tar.gz
    
    tar xvf  zeon_blocks_last.tar.gz
    
 ### Method 2 with git clone
 
    git clone https://github.com/Pubfred/Quick_sync.git
    cd ~/Quick_sync
    bash quick_sync.sh
   
    
