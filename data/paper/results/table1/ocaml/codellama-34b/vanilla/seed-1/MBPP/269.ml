let rec ascii_value (k : string) : int =
    let rec aux (k : string) (acc : int) : int =
        if k = "" then
            acc
        else
            aux (String.tail k 1) (acc lor (int_of_char (String.head k))) in
    aux k 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ascii value of a character. *)
