(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:7: Syntax error: "}" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
    (* base case: 
      If the input value is negative return -1 to indicate invalid input
      If the input value is 0 or 1, return 0 since there are no prime numbers less than 0 or 1
      If the input value is 2, return 1 since there is only one prime number less than 2
     *)
    if n <= 1 then
        n match {
            | 0 => -1
            | 1 => 0
            | 2 => 1
            | _ => -1
        }
    else
        let count = 0 in
        for i = 2 to n do
            (* Check if i is prime *)
            if is_prime i then
                count + 1
        done;
        count

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
    (* base case: 
      If the input value is negative return -1 to indicate invalid input
      If the input value is 0 or 1, return 0 since there are no prime numbers less than 0 or 1
      If the input value is 2, return 1 since there is only one prime number less than 2
     *)
    if n <= 1 then
        n match {
            | 0 => -1
            | 1 => 0
            | 2 => 1
            | _ => -1
        }
    else
        let count = 0 in
        for i = 2 to n do
            (* Check if i is prime *)
            if is_prime i then
                count + 1
        done;
        count
;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
    (* base case: 
      If the input value is negative return -1 to indicate invalid input
      If the input value is 0 or 1, return 0 since there are no prime numbers less than 0 or 1
      If the input value is 2, return 1 since there is only one prime number less than 2
     *)
    if n <= 1 then
        begin 0 end
    else
        let count = 0 in
        for i = 2 to n do
            (* Check if i is prime *)
            if is_prime i then
                count + 1
        done;
        count
;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:16: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
    (* base case: 
      If the input value is negative return -1 to indicate invalid input
      If the input value is 0 or 1, return 0 since there are no prime numbers less than 0 or 1
      If the input value is 2, return 1 since there is only one prime number less than 2
     *)
    if n <= 1 then
        begin 0 end
    else
        let count = 0 in
        for i = 2 to n do
            (* Check if i is prime *)
            if prime i then
                count + 1
        done;
        count
;;

(* The "prime" function checks if a given number is prime or not *)
let prime (n : int) : bool =
    let rec is_divisible_by (n : int) (i : int) : bool =
        if i = 1 then
            false
        else if n mod i = 0 then
            true
        else
            is_divisible_by n (i - 1)
    in
    if n <= 1 then
        false
    else if is_divisible_by n (n - 1) then
        false
    else
        true
;;

