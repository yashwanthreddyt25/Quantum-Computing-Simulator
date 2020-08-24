//Namespaces in Q# are similar to C# and are used to organize too many classes so that it can be easy to handle the application.
namespace Quantum.Grover5
{
    //Canon and Intrinsic are Q# libraries in the QDK that come with a set of predefined operations.
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    
    //The most basic building block of a quantum program written in Q# is an operation.
    operation Oracle0 () : Unit 
    {
        //mutable keyword will create a special mutable variable that can be re-bound after it is initially created
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        //Using acts like a subroutine and also helps in defining the number of qubits we wnat to use.
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle1 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle2 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle3 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle4 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle5 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle6 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle7 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle8 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle9 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle10 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle11 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle12 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle13 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle14 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle15 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle16 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle17 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle18 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle19 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle20 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle21 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                    
                    //X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle22 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle23 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle24 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle25 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle26 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle27 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    //X(q[1]);
                    X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle28 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle29 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle30 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op

    operation Oracle31 () : Unit 
    {
        mutable q00 = 0;
        mutable q01 = 0;
        mutable q02 = 0;
        mutable q03 = 0;
        mutable q04 = 0;
        mutable q05 = 0;
        mutable q06 = 0;
        mutable q07 = 0;
        mutable q08 = 0;
        mutable q09 = 0;
        mutable q10 = 0;
        mutable q11 = 0;
        mutable q12 = 0;
        mutable q13 = 0;
        mutable q14 = 0;
        mutable q15 = 0;
        mutable q16 = 0;
        mutable q17 = 0;
        mutable q18 = 0;
        mutable q19 = 0;
        mutable q20 = 0;
        mutable q21 = 0;
        mutable q22 = 0;
        mutable q23 = 0;
        mutable q24 = 0;
        mutable q25 = 0;
        mutable q26 = 0;
        mutable q27 = 0;
        mutable q28 = 0;
        mutable q29 = 0;
        mutable q30 = 0;
        mutable q31 = 0;
        using (q = Qubit[6])
        {
            for(i in 1..1000)
            {
                //|-> (Ket '-')
                X(q[5]);  
                
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                H(q[5]);

                for(g in 1..4)
                {
                     
                    //X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                                    
                    let cq = [q[0],q[1],q[2],q[3],q[4]];
                    Controlled X(cq,q[5]);
                
                    //X(q[0]);
                    //X(q[1]);
                    //X(q[2]);
                    //X(q[3]);
                    //X(q[4]);
                       
                    //Uniform Super Position
                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
    
                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);
    
                    H(q[4]);
                    let ctrl = [q[0],q[1],q[2],q[3]];
                    Controlled X(ctrl,q[4]);
                    H(q[4]);

                    X(q[0]);
                    X(q[1]);
                    X(q[2]);
                    X(q[3]);
                    X(q[4]);

                    H(q[0]);
                    H(q[1]);
                    H(q[2]);
                    H(q[3]);
                    H(q[4]);
                }//closed for(g in 1..4)
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                let q5 = M(q[4]);
                ResetAll(q);
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q00 = q00 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q01 = q01 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q02 = q02 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q03 = q03 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q04 = q04 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q05 = q05 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q06 = q06 + 1;        
				}
                if(q1 == Zero and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q07 = q07 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q08 = q08 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q09 = q09 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q10 = q10 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q11 = q11 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q12 = q12 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q13 = q13 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q14 = q14 + 1;        
				}
                if(q1 == Zero and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q15 = q15 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q16 = q16 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q17 = q17 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q18 = q18 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == Zero and q4 == One and q5 == One)
                {
                    set q19 = q19 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q20 = q20 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == Zero and q5 == One)
                {
                    set q21 = q21 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == Zero)
                {
                    set q22 = q22 + 1;        
				}
                if(q1 == One and q2 ==Zero and q3 == One and q4 == One and q5 == One)
                {
                    set q23 = q23 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == Zero)
                {
                    set q24 = q24 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == Zero and q5 == One)
                {
                    set q25 = q25 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == Zero)
                {
                    set q26 = q26 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == Zero and q4 == One and q5 == One)
                {
                    set q27 = q27 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == Zero)
                {
                    set q28 = q28 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == Zero and q5 == One)
                {
                    set q29 = q29 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == Zero)
                {
                    set q30 = q30 + 1;        
				}
                if(q1 == One and q2 ==One and q3 == One and q4 == One and q5 == One)
                {
                    set q31 = q31 + 1;        
				}
            }//closed for(i in 1..1000)
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
            Message($"State 16 -> {q16}");
            Message($"State 17 -> {q17}");
            Message($"State 18 -> {q18}");
            Message($"State 19 -> {q19}");
            Message($"State 20 -> {q20}");
            Message($"State 21 -> {q21}");
            Message($"State 22 -> {q22}");
            Message($"State 23 -> {q23}");
            Message($"State 24 -> {q24}");
            Message($"State 25 -> {q25}");
            Message($"State 26 -> {q26}");
            Message($"State 27 -> {q27}");
            Message($"State 28 -> {q28}");
            Message($"State 29 -> {q29}");        
            Message($"State 30 -> {q30}");
            Message($"State 31 -> {q31}");
        }//closed using
    }//closed op
}//closed 