let rec filter_oddnumbers (nums : int list) : int list =
    match nums with
        | [] -> []
        | (n::ns) ->
            if n mod 2 = 0 then n::filter_oddnumbers ns else filter_oddnumbers ns

let numbers = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];;
filter_oddnumbers numbers;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to filter odd numbers. *)
