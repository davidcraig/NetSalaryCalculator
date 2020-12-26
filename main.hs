

module Main where
import System.Environment
import Uk.Tax( calculate )
import Uk.Nic( calculate )

main :: IO ()
main = do
    args <- getArgs
    let salaryStr = head args
    let salary = read salaryStr :: Float
    let tax = Uk.Tax.calculate salary
    let nic = Uk.Nic.calculate salary
    let net = (salary - tax) - nic

    putStrLn ("Salary: " ++ salaryStr)
    putStrLn ("Tax: " ++ show tax :: String)
    putStrLn ("Nic: " ++ show nic :: String)
    putStrLn ("Net: " ++ show net )
