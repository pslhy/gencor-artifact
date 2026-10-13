let rec highest_Power_of_2 (n : int) : int =
    if n < 0 then 
        0
    else
        let rec loop (power : int) : int =
            if power > n then
                power/2
            else
                loop (power * 2)
        in
        loop 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the highest power of 2 that is less than or equal to n. *)
