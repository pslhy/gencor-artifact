let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    let rec reverse (array: int list) (index: int) (k: int) : int list =
        match array with
        | [] -> []
        | head::tail ->
            if index = 0 then array
            else
                if index = k then reverse (head::(reverse tail (index - 1) k)) (index - 1) k
                else reverse (reverse tail (index - 1) k) (index - 1) k
    in
    match input with
    | [] -> []
    | _ -> reverse input (List.length input - 1) k

(* Examples
   reverse_Array_Upto_K [1; 2; 3; 4; 5] 2;;
   reverse_Array_Upto_K [10; 20; 30; 40; 50] 4;;
 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
