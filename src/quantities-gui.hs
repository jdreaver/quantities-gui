import Graphics.QML
import Data.Text (Text)
import qualified Data.Text as T

import Data.Quantities

main :: IO ()
main = do
  clazz <- newClass [
    defMethod' "fromString" (
       \_ src ->
       let src' = T.unpack src
       in return . T.pack . show $ fromString src' :: IO Text)
    ]

  ctx <- newObject clazz ()
  runEngineLoop defaultEngineConfig {
    initialDocument = fileDocument "src/quantities-gui.qml",
    contextObject = Just $ anyObjRef ctx}
