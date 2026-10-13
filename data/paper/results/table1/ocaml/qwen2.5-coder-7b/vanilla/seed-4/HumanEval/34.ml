let rec unique (l : int list) : int list = 
  let rec helper seen rest = 
    match rest with
    | [] -> List.rev seen
    | x :: xs -> if List.mem x seen then helper seen xs else helper (x :: seen) xs
  in helper [] (List.sort compare l)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return sorted unique elements in a list *)
(*     >>> unique [5; 3; 5; 2; 3; 3; 9; 0; 123] *)
(*     [0; 2; 3; 5; 9; 123] *)
