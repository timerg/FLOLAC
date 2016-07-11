module Paths_practiceFLOLAC (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/TimerPro/GitHub/FLOLAC/practiceFLOLAC/.stack-work/install/x86_64-osx/lts-3.6/7.10.2/bin"
libdir     = "/Users/TimerPro/GitHub/FLOLAC/practiceFLOLAC/.stack-work/install/x86_64-osx/lts-3.6/7.10.2/lib/x86_64-osx-ghc-7.10.2/practiceFLOLAC-0.1.0.0-LUIbRZ2W7tA3wXN4KOjgnN"
datadir    = "/Users/TimerPro/GitHub/FLOLAC/practiceFLOLAC/.stack-work/install/x86_64-osx/lts-3.6/7.10.2/share/x86_64-osx-ghc-7.10.2/practiceFLOLAC-0.1.0.0"
libexecdir = "/Users/TimerPro/GitHub/FLOLAC/practiceFLOLAC/.stack-work/install/x86_64-osx/lts-3.6/7.10.2/libexec"
sysconfdir = "/Users/TimerPro/GitHub/FLOLAC/practiceFLOLAC/.stack-work/install/x86_64-osx/lts-3.6/7.10.2/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "practiceFLOLAC_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "practiceFLOLAC_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "practiceFLOLAC_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "practiceFLOLAC_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "practiceFLOLAC_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
