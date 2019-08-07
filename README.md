# Quick_sync
How to quick sync Zeon Blockchain with google drive file on Ubuntu 18.04 ...
 (We download zeon_blocks_385000.tar.gz from Google Drive 591.9 MB )


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
     
    gdrive_download 1cy4kPV1_seCXTTPilHZ5JOLzb1cz2YQn zeon_blocks_385000.tar.gz
    
    tar xvf  zeon_blocks_385000.tar.gz
    
 ### Method 2 with 
 
    git clone https://github.com/Pubfred/Quick_sync.git
    cd ~/Quick_sync
    bash quick_sync.sh
   
    
