let rec first_non_repeating_character (str1 : string) : string option =
    let str2 = String.lowercase str1 in
    let rec helper i =
        if i >= String.length str2 then
            None
        else if not (Char.contains str2.[i] str2.[i+1..]) then
            Some (String.make i str2.[i])
        else
            helper (i+1)
    in
    helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
