let rec find_star_num (n : int) : int =
    let rec aux num count =
        if count = n then num else aux (num + 1) (count + 1) in
    aux 1 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n'th star number. *)
