let rec unique (l : int list) : int list = 
  let rec check (x : int) (l : int list) : bool = 
    match l with
    | [] -> true
    | h::t -> if h = x then false else check x t
  in
  match l with
  | [] -> []
  | h::t -> if check h t then h :: unique (List.filter (fun x -> x <> h) t) else unique t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return sorted unique elements in a list *)
(*     >>> unique [5; 3; 5; 2; 3; 3; 9; 0; 123] *)
(*     [0; 2; 3; 5; 9; 123] *)
