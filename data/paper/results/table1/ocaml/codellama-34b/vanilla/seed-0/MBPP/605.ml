let rec prime_num (num : int) : bool =
    if num <= 1 then false
    else if num = 2 then true
    else if num % 2 = 0 then false
    else
        let max = int_of_float (ceil (sqrt (float_of_int num))) in
        let rec loop i =
            if i > max then true
            else if num mod i = 0 then false
            else loop (i + 1) in
        loop 3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given integer is a prime number. *)
