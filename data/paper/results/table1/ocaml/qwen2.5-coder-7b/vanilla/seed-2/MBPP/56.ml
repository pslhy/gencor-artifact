let rec checks (n : int) : bool = 
    let rec reverse (n : int) : int = 
        let rec aux (acc : int) (n : int) : int = 
            if n = 0 then acc 
            else aux ((acc * 10) + (n mod 10)) (n / 10)
        in aux 0 n
    in n = 2 * (reverse n) - 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
