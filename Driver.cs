using System;
using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Simulation.Simulators;

namespace Quantum.Grover5
{
    class Driver
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter the number to search");
            int oc = Convert.ToInt32(Console.ReadLine());
            using (var qsim = new QuantumSimulator())
            {
                switch (oc)
                {
                    case 0:
                        Oracle0.Run(qsim).Wait();
                        break;
                    case 1:
                        Oracle1.Run(qsim).Wait();
                        break;
                    case 2:
                        Oracle2.Run(qsim).Wait();
                        break;
                    case 3:
                        Oracle3.Run(qsim).Wait();
                        break;
                    case 4:
                        Oracle4.Run(qsim).Wait();
                        break;
                    case 5:
                        Oracle5.Run(qsim).Wait();
                        break;
                    case 6:
                        Oracle6.Run(qsim).Wait();
                        break;
                    case 7:
                        Oracle7.Run(qsim).Wait();
                        break;
                    case 8:
                        Oracle8.Run(qsim).Wait();
                        break;
                    case 9:
                        Oracle9.Run(qsim).Wait();
                        break;
                    case 10:
                        Oracle10.Run(qsim).Wait();
                        break;
                    case 11:
                        Oracle11.Run(qsim).Wait();
                        break;
                    case 12:
                        Oracle12.Run(qsim).Wait();
                        break;
                    case 13:
                        Oracle13.Run(qsim).Wait();
                        break;
                    case 14:
                        Oracle14.Run(qsim).Wait();
                        break;
                    case 15:
                        Oracle15.Run(qsim).Wait();
                        break;
                    case 16:
                        Oracle16.Run(qsim).Wait();
                        break;
                    case 17:
                        Oracle17.Run(qsim).Wait();
                        break;
                    case 18:
                        Oracle18.Run(qsim).Wait();
                        break;
                    case 19:
                        Oracle19.Run(qsim).Wait();
                        break;
                    case 20:
                        Oracle20.Run(qsim).Wait();
                        break;
                    case 21:
                        Oracle21.Run(qsim).Wait();
                        break;
                    case 22:
                        Oracle22.Run(qsim).Wait();
                        break;
                    case 23:
                        Oracle23.Run(qsim).Wait();
                        break;
                    case 24:
                        Oracle24.Run(qsim).Wait();
                        break;
                    case 25:
                        Oracle25.Run(qsim).Wait();
                        break;
                    case 26:
                        Oracle26.Run(qsim).Wait();
                        break;
                    case 27:
                        Oracle27.Run(qsim).Wait();
                        break;
                    case 28:
                        Oracle28.Run(qsim).Wait();
                        break;
                    case 29:
                        Oracle29.Run(qsim).Wait();
                        break;
                    case 30:
                        Oracle30.Run(qsim).Wait();
                        break;
                    case 31:
                        Oracle31.Run(qsim).Wait();
                        break;
                    default: Console.WriteLine("Please Enter a Number Between '0' and '31'");
                        break;
                }
            }
        }
    }
}