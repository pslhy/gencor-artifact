let rec count_Primes_nums (n : int) : int = 
    (* base case: 
      If the input value is negative return -1 to indicate invalid input 
      If the input value is 0 or 1, return 0 since there are no prime numbers less than 0 or 1
      If the input value is 2, return 1 since there is only one prime number less than 2
     *)
    if(n<=1){
    n match {
        case 0 => -1
        case 1 => 0
        case 2 => 1
        case _ => -1
        }
    }
    else{
        let count = 0;
        for( i <- 2 to n){
            // Check if i is prime
            if(i<=1){
                count + 1
            }
        }
    count
    }
}


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
