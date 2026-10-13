(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
let rec find_Rotations (str : string) : int =
    let str_len = String.length str in
    let rec helper counter =
        if counter >= str_len then
            0
        else if String.sub str 0 counter = String.sub str (counter + 1) (str_len - counter - 1) then
            counter + 1
        else
            helper (counter + 1)
    in
    helper 0

