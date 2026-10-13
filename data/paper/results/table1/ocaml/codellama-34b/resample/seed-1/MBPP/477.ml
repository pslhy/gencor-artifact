(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
let rec is_lower (string : string) : string =
    let rec aux (acc : string) (i : int) =
        if i >= String.length string then
            acc
        else if Int.compare (Char.compare (String.get string i) 'A') then
            aux (acc ^ (Char.escaped (String.get string i))) (i + 1)
        else
            aux (acc ^ (Char.escaped (Char.uppercase (String.get string i)))) (i + 1)
    in
    aux "" 0

