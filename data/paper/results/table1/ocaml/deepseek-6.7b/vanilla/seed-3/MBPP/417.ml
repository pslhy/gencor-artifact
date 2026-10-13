let rec group_tuples (input : string list list) : string list list =
  match input with
  | [] -> []
  | x :: xs -> 
        let rec helper (input : string list) (acc : string list list) = 
            match input with
            | [] -> acc
            | y :: ys -> helper ys ((y :: (List.hd (List.map List.tl acc))) :: acc)
        in
        let rec remove_empty (input : string list list) : string list list =
            match input with
            | [] -> []
            | y :: ys -> if y = [] then remove_empty ys else y :: remove_empty ys 
        in
        remove_empty (helper x (List.map (fun x -> [x]) xs))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
