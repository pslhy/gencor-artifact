(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
let rec is_Monotonic (a : int list) : bool =
    match a with
    | [] -> true
    | _ ->
        let rec aux (a : int list) : bool =
            match a with
            | [] | [_] -> true
            | head::tail::_ ->
                if head <= tail then
                    aux (tail::[])
                else
                    false
        in aux a

