let rec is_sublist (l : int list) (s : int list) : bool = 
    (* base case: sublist with head and empty list *)
    (match l with
    | [] -> false
    | h :: _ -> 
        (* base case: empty sublist and non-empty list *)
        (match s with
        | [] -> true
        | sh :: _ -> 
            if List.mem h s then 
                is_sublist l s (* recursive call with the rest of the list *)
            else 
                false)

let _ = is_sublist [1;2;3;4;5] [1;2;3;4] (* true *)
let _ = is_sublist [1;2;3] [1;2;3;4] (* false *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a list contains the given sublist or not. *)
