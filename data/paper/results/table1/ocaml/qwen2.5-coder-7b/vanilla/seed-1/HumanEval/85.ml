let rec add (lst : int list) : int = 
  let rec helper (lst : int list) (index : int) (sum : int) : int = 
    match lst with
    | [] -> sum
    | x :: xs -> 
        if index mod 2 = 0 && x mod 2 = 0 then helper xs (index + 1) (sum + x)
        else helper xs (index + 1) sum
  in helper lst 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a non-empty list of integers lst. add the even elements that are at odd indices.. *)
(*     Examples: *)
(*     >>> add [4; 2; 6; 7] *)
(*     2 *)
