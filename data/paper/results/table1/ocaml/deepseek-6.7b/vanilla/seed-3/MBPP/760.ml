let rec unique_Element (arr : int list) : bool =
  match arr with
  | [] -> true
  | x :: xs -> 
        let rec count_x (arr : int list) : int =
          match arr with
          | [] -> 0
          | y :: ys -> 
                if x = y then 1 + count_x ys
                else count_x ys
        in
        if count_x arr > 1 then false
        else unique_Element xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list of numbers contains only one distinct element or not. *)
