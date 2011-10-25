import sys
import os

if __name__ == '__main__':

    curpath = ""
    if len(sys.argv) == 1:
        curpath = "."
    else:
        curpath = sys.argv[1]

    licenseTextFilename = sys.argv[2]
    licenseTextFile = open(licenseTextFilename)
    licenseText = licenseTextFile.read()
    
    for root, dirs, files in os.walk( curpath ):
        for inFile in [f for f in files if f.endswith(('.h','.cxx'))]:
            curFile = open(os.path.join(root,inFile))
            curText = curFile.read()
            if curText.startswith('/*'):
                curTokens = curText.split('*/')
                curText = '*/'.join(curTokens[1:])
            curFile = open(os.path.join(root,inFile),'w')
            curFile.write(licenseText + curText)
