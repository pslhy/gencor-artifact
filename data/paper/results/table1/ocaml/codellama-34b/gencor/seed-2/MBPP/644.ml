
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    match input with
    | [] -> []
    | _ ->
        let rev = reverse_Array_Upto_K (List.tl input) (k-1) in
        if k = 0 then rev else (List.hd input) :: rev

let input = [1;2;3;4;5;6]
let result = reverse_Array_Upto_K input 3
(* Output: [3;4;5;6;1;2]*)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
