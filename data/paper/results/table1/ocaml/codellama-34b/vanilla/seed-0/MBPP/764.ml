let rec number_ctr (str : string) : int =
    match str with
    | [] -> 0
    | h :: t -> 
        if (h >= '0' && h <= '9')
        then 1 + number_ctr(t)
        else number_ctr(t)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count number of digits in a given string. *)
