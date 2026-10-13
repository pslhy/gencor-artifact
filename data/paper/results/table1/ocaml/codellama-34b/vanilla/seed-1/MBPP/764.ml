let rec number_ctr (str : string) : int =
    let str_len = String.length str in
    let rec helper counter i =
        if i >= str_len then 
            counter
        else if str. = '0' || str. = '1' then 
            helper (counter + 1) i
        else 
            helper counter i
    in
    helper 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count number of digits in a given string. *)
