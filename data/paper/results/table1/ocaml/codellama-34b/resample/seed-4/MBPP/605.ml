(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given integer is a prime number. *)
let rec prime_num (num : int) : bool = 
    (* base case for 2 and 3 *)
    if num = 2 || num = 3 then true
    else
        (* verify if the input number is an even number *)
        let is_even = num mod 2 = 0 in
        (* base case for 2 and 3 *)
        if is_even && (num mod 2 <> 0) then false
        (* check if the number is divisible by any number between 2 and square root of the number *)
        else
            let rec loop i =
                if i * i > num then true
                else if num mod i = 0 then false
                else loop (i + 1)
            in
            loop 2

