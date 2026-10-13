
let rec is_Monotonic (a : int list) : bool = 
    (* base case: empty list *)
    match List.length a with
    | 0 -> false
    (* base case: singleton list *)
    | 1 -> false
    (* recursive case: non-empty list *)
    | _ ->
        (* split the list at the middle *)
        let (left, right) = List.split (a |> List.filteri (fun i _ -> i < List.length a / 2) ) in
        (* check if either half of the list is monotonic *)
        is_Monotonic left || is_Monotonic right

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
