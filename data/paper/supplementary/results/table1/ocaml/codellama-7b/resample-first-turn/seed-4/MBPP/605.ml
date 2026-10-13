let rec prime_num (num : int) : bool = 
    (* base case: 1 and 0 are neither prime nor composite numbers *)
    if num < 2 then false else
    (* if num is not divisible by 2 to num / 2, then it is prime *)
    if num mod 2 = 0 && num <> 2 then false else prime_helper num 3 in
    
    (* recursive helper function to check if num is a prime number *)
    let rec prime_helper (num : int) (i : int) : bool =
        if i > num / 2 then true else
        if num mod i = 0 then false else prime_helper num (i + 1) in


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given integer is a prime number. *)
